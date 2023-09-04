# 使用基础的Ubuntu镜像
FROM ubuntu:latest

# 设置作者信息
LABEL maintainer="your_email@example.com"

# 更新包列表并安装需要的软件包
RUN apt-get update && apt-get install -y \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# 在容器内创建一个工作目录
WORKDIR /app

# 将Dockerfile所在目录中的所有文件复制到容器的工作目录中
COPY . .

# 添加执行权限给entrypoint.sh文件
RUN chmod +x entrypoint.sh
    chmod +x index.js
    chmod +x package.json

# 定义容器启动时执行的命令
ENTRYPOINT ["./entrypoint.sh"]
