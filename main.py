import requests

from fastapi import FastAPI

app = FastAPI()

@app.get('/hello_world')
def ola_mundo():
    return {"Olá":"Mundo"}

@app.get("/second")
def second():
    return{"numbers": list(range(9))}

@app.get("/todos")
def todos():
    response = requests.get("https://dummyjson.com/todos")
    data = response.json()
    return data