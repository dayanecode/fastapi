# Crie uma imagem python a partir de tal versão 
FROM python:3.10-slim-buster
WORKDIR /app
COPY requirements.txt ./requirements.txt
COPY main.py ./main.py
RUN pip3 install -r requirements.txt
EXPOSE 8000
CMD ["uvicorn", "main:app", "--proxy-headers", "--host", "0.0.0.0"]

