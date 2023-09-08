# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory to /app
WORKDIR /C:\Users\Dell\OneDrive\Desktop\4694_b116_telecom_customer_churn\Hackethon\Telecom_churn

# Copy the requirements.txt file to the working directory
COPY Requirements.txt .

# Install the dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r Requirements.txt

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 8501 for Streamlit
EXPOSE 8501

# Set the command to run the Streamlit app
CMD ["streamlit", "run", "App.py"]