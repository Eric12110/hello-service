# FROM node:18-alpine
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# EXPOSE 3000
# CMD ["npm", "start"]
# 使用 Node.js 官方映像檔
FROM node:18-alpine

# 設定工作目錄
WORKDIR /app

# 複製 package.json 並安裝依賴
COPY package*.json ./
RUN npm install

# 複製其他程式檔案
COPY . .

# 對外開放 3000 port
EXPOSE 3000

# 啟動指令
CMD ["node", "index.js"]
