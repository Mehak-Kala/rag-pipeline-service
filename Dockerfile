FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 8082

# Define the command to run the application
CMD ["gunicorn", "-b", "0.0.0.0:8082", "app:app"]
# Copy the .env file into the container
