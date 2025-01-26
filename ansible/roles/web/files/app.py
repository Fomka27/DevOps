#!/usr/bin/env python3

import os
import logging
from flask import Flask, jsonify

# Ініціалізуємо Flask-додаток
app = Flask(__name__)

# Переконаємось, що директорія для логів існує
log_dir = "logs"
if not os.path.exists(log_dir):
    os.makedirs(log_dir)

# Налаштовуємо логування
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler(os.path.join(log_dir, "application.log")),
        logging.StreamHandler()  # Для відображення в консолі
    ]
)

@app.route("/")
def index():
    logging.info("Успішне підключення до кореневої сторінки")
    return jsonify({"message": "Hello, World!"})

@app.route("/error")
def error():
    logging.error("Помилковий запит викликаний!")
    return jsonify({"error": "Це помилка"}), 500

# Функція для запуску через Gunicorn
def connect_to_app():
    return app

# Запуск для локального запуску
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
