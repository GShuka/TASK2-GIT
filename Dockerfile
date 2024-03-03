# Dockerfile

# Базовый образ для сборки
FROM ubuntu:latest

# Установка необходимых пакетов
RUN apt-get update && \
    apt-get install -y gcc g++ make

# Копирование исходного кода проекта в контейнер
COPY . /app

# Установка рабочей директории
WORKDIR /app

# Команда сборки проекта (пример для C++)
RUN g++ -o main main.cpp

