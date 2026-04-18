import uvicorn
import os
from dotenv import load_dotenv
from utils.logger import get_logger
logger = get_logger(__name__)

logger.info("Starting server...")

load_dotenv()



if __name__ == "__main__":
    uvicorn.run("api.server:app", host="0.0.0.0", port=8000, reload=True)