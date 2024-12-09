#!/bin/bash

# Змінні
INSTANCE_IDENTIFIER="library-db"
DB_USERNAME="admin"
DB_PASSWORD="StrongPassword123"
DB_CLASS="db.t3.micro"
ALLOCATED_STORAGE=20
ENGINE="mysql"
ENGINE_VERSION="8.0.30"
SECURITY_GROUP_NAME="library-db-sg"
BACKUP_RETENTION=7

# Отримати IP
MY_IP=$(curl -s ifconfig.me)

# Створення Security Group
SECURITY_GROUP_ID=$(aws ec2 create-security-group \
    --group-name $SECURITY_GROUP_NAME \
    --description "Security Group for RDS" \
    --query 'GroupId' \
    --output text)

aws ec2 authorize-security-group-ingress \
    --group-id $SECURITY_GROUP_ID \
    --protocol tcp \
    --port 3306 \
    --cidr ${MY_IP}/32

# Створення RDS
aws rds create-db-instance \
    --db-instance-identifier $INSTANCE_IDENTIFIER \
    --db-instance-class $DB_CLASS \
    --engine $ENGINE \
    --allocated-storage $ALLOCATED_STORAGE \
    --master-username $DB_USERNAME \
    --master-user-password $DB_PASSWORD \
    --backup-retention-period $BACKUP_RETENTION \
    --vpc-security-group-ids $SECURITY_GROUP_ID \
    --publicly-accessible \
    --storage-type gp2 \
    --engine-version $ENGINE_VERSION \
    --availability-zone eu-central-1

# Перевірка статусу
echo "Очікування створення RDS інстансу..."
aws rds wait db-instance-available --db-instance-identifier $INSTANCE_IDENTIFIER

# Отримання хосту
RDS_ENDPOINT=$(aws rds describe-db-instances \
    --db-instance-identifier $INSTANCE_IDENTIFIER \
    --query "DBInstances[0].Endpoint.Address" \
    --output text)

echo "RDS інстанс створено. Підключення: $RDS_ENDPOINT"
