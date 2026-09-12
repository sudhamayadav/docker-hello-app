# Start from a small official Python image
FROM python:3.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy dependency list first (better layer caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . .

# Document which port the app listens on
EXPOSE 5000

# Command to run when the container starts
CMD ["python", "app.py"]