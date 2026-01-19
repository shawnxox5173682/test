# 1. 基底映像檔
FROM osrf/ros:humble-desktop

# 2. 安裝系統工具 (包含 pip)
# 要先用 apt 裝 python3-pip，我們才有 pip 指令可以用
RUN apt-get update && apt-get install -y \
    terminator \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# 3. 安裝 Python 套件
RUN pip3 install art

# 4. 設定工作目錄
WORKDIR /app

# 5. 複製程式碼
COPY simple_node.py .

# 6. 啟動指令
CMD ["terminator"]