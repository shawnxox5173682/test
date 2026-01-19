# 在執行前，Ubuntu 使用者通常需要允許本機 X11 連線
xhost +local:docker

# 執行指令
docker run -it \
    --name ros-dev-container \
    --network host \
    -v $(pwd):/app \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    my-ros-gui-image