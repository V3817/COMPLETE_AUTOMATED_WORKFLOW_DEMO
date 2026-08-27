# 🚀 Dockerised Flask App with CI/CD

This repository contains a simple **Flask web application** packaged in a **Docker container**. It also features a **CI/CD pipeline using GitHub Actions** that automatically tests, builds, and pushes Docker images to **DockerHub**.

---

## 📦 Project Structure

```

.
├── app.py                # Main Flask application
├── requirements.txt      # Python dependencies
├── Dockerfile            # Instructions to build Docker image
├── .github
│   └── workflows
│       └── ci-cd.yml     # GitHub Actions workflow
└── README.md             # You're here!

````

---

## 🔧 Requirements

- Docker installed locally (for manual builds)
- Python 3.10+ (for local dev)
- GitHub repository
- DockerHub account

---

## ⚙️ How It Works (CI/CD Flow)

The GitHub Actions workflow:

1. **Triggers** on every push or pull request to the `main` branch.
2. **Installs dependencies** and runs tests using `pytest`.
3. If tests pass:
   - **Builds the Docker image** using the `Dockerfile`.
   - **Pushes the image** to DockerHub with the `latest` tag.

---

## 🚀 Deployment Instructions

### 🧪 Local Development

```bash
# Install dependencies
pip install -r requirements.txt

# Run the app
python app.py
````

### 🐳 Build & Run Docker Image Locally

```bash
# Build the image
docker build -t flasktest-app .

# Run the container
docker run -p 5000:5000 flasktest-app
```

Access the app at: [http://localhost:5000](http://localhost:5000)

---

## 🔁 GitHub Actions Workflow

Defined in `.github/workflows/ci-cd.yml`, this workflow includes:

* `build-and-test`: Runs tests on push/PR.
* `build-and-publish`: Builds Docker image and pushes to DockerHub after successful tests.

---

## 🔐 Secrets Required

Make sure to add the following secrets to your GitHub repository:

* `DOCKER_USERNAME` — Your DockerHub username
* `DOCKER_PASSWORD` — Your DockerHub password or access token

---

## 📝 Sample Dockerfile

```Dockerfile
# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
```

---

## 📬 Contact

Feel free to open an issue or reach out if you face any problems.

Happy Building! 🛠️

