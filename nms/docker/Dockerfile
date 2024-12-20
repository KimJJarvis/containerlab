# Use the CentOS Stream 8 image as the base image
FROM quay.io/centos/centos:stream8

# Set a specific mirror for CentOS Stream 8
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && \
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

# Install necessary packages to work with qcow2 images
RUN dnf install -y qemu-img && \
    dnf clean all

# Copy your qcow2 image into the container
COPY $IMAGE* /

# Command to verify the qcow2 image (optional)
CMD ["qemu-img", "info", "/workspace/your-image.qcow2"]