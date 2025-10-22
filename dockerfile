# 1️⃣ Use a lightweight Python base image
FROM python:3.10-slim

# 2️⃣ Set working directory inside the container
WORKDIR /app

# 3️⃣ Copy your project files into the container
COPY . /app

# 4️⃣ Install dependencies
RUN pip install --no-cache-dir -r require.txt

# 5️⃣ Expose Flask default port
EXPOSE 5000

# 6️⃣ Define how the app runs
CMD ["python", "app.py"]
