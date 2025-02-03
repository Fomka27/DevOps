import json
import boto3
from botocore.exceptions import BotoCoreError, ClientError

# Ініціалізація клієнтів SES та DynamoDB
ses_client = boto3.client('ses')
dynamodb_client = boto3.client('dynamodb')

# Таблиця DynamoDB
DYNAMODB_TABLE = 'NameDB'

# Перевірена email адреса SES
SES_VERIFIED_EMAIL = 'email@example.com'

def send_email(recipient_email, subject, body):
    try:
        response = ses_client.send_email(
            Source=SES_VERIFIED_EMAIL,
            Destination={
                'ToAddresses': [recipient_email],
            },
            Message={
                'Subject': {
                    'Data': subject
                },
                'Body': {
                    'Text': {
                        'Data': body
                    }
                }
            }
        )
        print("Email sent! Message ID:", response['MessageId'])
    except (BotoCoreError, ClientError) as e:
        error_message = str(e)
        print("Error sending email:", error_message)
        print("Possible causes: unverified recipient, invalid email format, or SES configuration issue.")

def insert_user_to_dynamodb(user_id, email, name):
    try:
        # Вставка даних у DynamoDB
        response = dynamodb_client.put_item(
            TableName=DYNAMODB_TABLE,
            Item={
                'userId': {'S': user_id},
                'email': {'S': email},
                'name': {'S': name}
            }
        )
        print("User added to DynamoDB:", response)
    except (BotoCoreError, ClientError) as e:
        error_message = str(e)
        print("Error inserting user to DynamoDB:", error_message)

def lambda_handler(event, context):
    # Логування отриманого payload
    print("Received event:", json.dumps(event))

    for record in event['Records']:
        try:
            if record['eventName'] == 'INSERT':
                new_image = record['dynamodb']['NewImage']

                # Перевірка та отримання даних користувача
                if 'userId' not in new_image or 'S' not in new_image['userId']:
                    raise ValueError("Missing userId in DynamoDB record.")

                user_id = new_image['userId']['S']
                email = new_image.get('email', {}).get('S', 'no-email@example.com')
                name = new_image.get('name', {}).get('S', 'User')

                # Додавання користувача в DynamoDB
                insert_user_to_dynamodb(user_id, email, name)

                # Форматування та відправка email
                subject = f"New User Added: {name}"
                body = f"Hello {name},\n\nYour user record with ID {user_id} has been successfully created.\nThank you!"

                send_email(email, subject, body)
                print(f"Processed user {user_id}")
        
        except ValueError as ve:
            print(f"Data error: {ve}")
            print("Possible causes: missing required fields in the DynamoDB record.")
        
        except KeyError as ke:
            print(f"Key error: {ke}")
            print("Possible causes: unexpected data structure from DynamoDB.")
        
        except Exception as e:
            print(f"Unexpected error: {e}")
            print("Possible causes: unknown runtime issue.")

    return {
        'statusCode': 200,
        'body': json.dumps('Lambda processed DynamoDB events successfully!')
    }