# Use an official Python image (not Ubuntu) to avoid dependency issues
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy project files into the container
COPY . .

# Upgrade pip to the latest version before installing dependencies
RUN pip install --upgrade pip

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 for FastAPI
EXPOSE 8000

# Command to run FastAPI server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
