from fastapi import FastAPI
from fastapi.responses import HTMLResponse
from starlette.responses import FileResponse 

app = FastAPI()

@app.get("/", response_class=HTMLResponse)
async def read_index():
    return FileResponse('static/index.html')