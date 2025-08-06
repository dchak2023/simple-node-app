# 🐳 Simple Node.js App in Docker

This project demonstrates how to build and run a basic Node.js web app inside a Docker container using a custom Dockerfile.

---

## 📁 Project Structure


---

## 🚀 Features

- Runs a Node.js web server using Express
- Built on a lightweight `node:alpine` image
- Exposes HTTP service on port `3000` inside the container
- Includes Docker DNS alias support for multi-container networking

---

## 🛠️ Prerequisites

- [Docker](https://www.docker.com/) installed
- Basic knowledge of Node.js and Docker

---

## 🧪 How to Use

### 1. Clone the repo or place your files in a folder:


mkdir webapp && cd webapp
# Add index.js, package.json, and Dockerfile here

### 🚀 How to Use This Project

### 2.  Build the Docker Image

```bash
docker build -t mynodeapp .
3️⃣ Create a Docker Network
bash
Copy
Edit
docker network create my_custom_net
4️⃣ Run the Container with a DNS Alias
bash
Copy
Edit
docker run -d \
  --network my_custom_net \
  --network-alias web \
  --name nodeapp \
  mynodeapp
5️⃣ Test the App from Another Container
bash
Copy
Edit
docker run --rm --network my_custom_net alpine \
  sh -c "apk add --no-cache curl && curl web:3000"
You should see:

text
Copy
Edit
Hello from the custom app container!
🧼 Cleanup
To stop and remove everything:

bash
Copy
Edit
docker rm -f nodeapp
docker network rm my_custom_net
📚 Learn More
📝 Dockerfile Reference

🐳 Node.js Official Image

🚀 Express.js Framework

🧑‍💻 Author
Built with ❤️ by [Devjoy Chakraborty]