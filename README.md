# 🐳 Simple Node.js App in Docker

This project demonstrates how to build and run a basic Node.js web app inside a Docker container using a custom Dockerfile.

---

## 📁 Project Structure

├── index.js
├── package.json
└── Dockerfile

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

### 1️⃣ Clone the repo or place your files in a folder:
```
mkdir webapp && cd webapp
```
#### Add index.js, package.json, and Dockerfile here

### 2️⃣  Build the Docker Image
```
 docker build -t mynodeapp .
```
### 3️⃣ Create a Docker Network
```
docker network create my_custom_net
```
### 4️⃣ Run the Container with a DNS Alias
```
docker run -d \
  --network my_custom_net \
  --network-alias web \
  --name nodeapp \
  mynodeapp
```
### 5️⃣ Test the App from Another Container
```
docker run --rm --network my_custom_net alpine \
  sh -c "apk add --no-cache curl && curl web:3000"
```

### 6️⃣ Output:
You should see:
```
Hello from the custom app container!
```
### 🧼 Cleanup
To stop and remove everything:
```
docker rm -f nodeapp
docker network rm my_custom_net
```

### 📚 Learn More:
📝 [Dockerfile Reference](https://docs.docker.com/engine/reference/builder/)

🐳 [Node.js Official Image](https://hub.docker.com/_/node/)

🚀 [Express.js Framework](https://expressjs.com/)

### 🧑‍💻 Author:

Built with ❤️ by [dchak2023](https://github.com/dchak2023)