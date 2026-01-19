import rclpy
from rclpy.node import Node
from art import tprint 

class DockerTestNode(Node):
    def __init__(self):
        super().__init__('docker_test_node')
        self.create_timer(1.0, self.timer_callback)
        self.count = 0
        
        # 在啟動時，印出一個大大的藝術字
        print("Starting Node...")
        tprint("Hello", font="block") # <--- 使用它！

    def timer_callback(self):
        self.count += 1
        self.get_logger().info(f"Hello with DOCKER! Count: {self.count}")

def main(args=None):
    rclpy.init(args=args)
    node = DockerTestNode()
    rclpy.spin(node)
    rclpy.shutdown()

if __name__ == '__main__':
    main()