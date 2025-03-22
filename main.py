from fastapi import FastAPI

# Create a FastAPI instance
app = FastAPI()

# Define a route
@app.get("/")
def home():
    return {"message": "Welcome to FastAPI!"}

# Another example route
@app.get("/hello/{name}")
def hello(name: str):
    return {"message": f"Hello, {name}!"}

