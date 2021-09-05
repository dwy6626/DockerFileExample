FROM python:3.9-slim

# 安裝 pip 套件
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir

# 將 code 複製到 image 內
COPY . .

# 啟動指令
CMD ["flask", "run", "--host=0.0.0.0"]
