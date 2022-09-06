from fastapi import FastAPI


app = FastAPI()


@app.get('/')
async def root():
    return {"message": "Hello, world"}


if __name__ == "__main__":
    app.run()
