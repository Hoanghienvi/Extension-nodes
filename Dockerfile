# Sử dụng image cơ bản Ubuntu
FROM ubuntu:20.04

# Cập nhật hệ thống và cài đặt các công cụ cần thiết
RUN apt-get update && apt-get install -y \
    curl \
    bash \
    && apt-get clean

# Tải script từ GitHub
ADD https://raw.githubusercontent.com/Hoanghienvi/Extension-nodes/refs/heads/main/extnodes.sh /extnodes.sh

# Đảm bảo script có quyền thực thi
RUN chmod +x /extnodes.sh

# Thực thi script khi container chạy
CMD ["/bin/bash", "/extnodes.sh"]
