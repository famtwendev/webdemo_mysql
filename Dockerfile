# Chọn image Node.js chính thức
FROM node:20

# Thiết lập working directory
WORKDIR /app

# Copy package.json và package-lock.json để cài dependencies trước
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Copy toàn bộ project
COPY . .

# Expose port (nếu app bạn chạy trên 3000, chỉnh lại nếu khác)
EXPOSE 3000

# Chạy app
CMD ["node", "app.js"]
