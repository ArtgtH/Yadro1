# alpine + python внутри - будет сильно меньше, чем ubuntu
FROM python:3.10-slim

# Будет один слой
# Python и pip скачивать не надо - защиты в образ
# про wget не понял - мы же вроде внутри скриптов не ходим никуда :)
RUN apt-get update && apt-get install -y --no-install-recommends bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /tmp

COPY ./search_path.sh ./extract_path_value.py ./config.txt ./

RUN chmod +x search_path.sh extract_path_value.py