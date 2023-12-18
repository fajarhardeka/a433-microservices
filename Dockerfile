# Menggunakan image node versi 16
FROM node:16-alpine as builder
# Membuat direktori app
WORKDIR /app
# Menggandakan semua file yang berawalan package dan berakhiran .json ke direktori /app
COPY package*.json ./
# Menjalankan sebuah perintah npm install
RUN npm install
# Menggandakan semua file ke direktori /app
COPY . .
# Exposing port 3001
EXPOSE 3001
# Menjalankan perintah npm start
CMD [ "npm", "start"]