from typing import Optional
from fastapi import FastAPI
    
app = FastAPI()
    
@app.get("/")
def read_root():
    return {"Hello": "World-222"}
    
@app.get("/items/{item_id}")
def read_item(item_id: int, q: Optional[str] = None):
    return {"item_id": item_id, "q": q}

# if __name__ == '__main__':
#     uvicorn.run(app, host="0.0.0.0", port=8000, reload=True)