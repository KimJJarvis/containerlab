# Use the CentOS Stream 8 image as the base image
FROM quay.io/centos/centos:stream8

# Install necessary packages to work with qcow2 images
RUN dnf install -y qemu-img && \
    dnf clean all

# Copy your qcow2 image into the container
COPY $IMAGE* /

# Command to verify the qcow2 image (optional)
CMD ["qemu-img", "info", "/workspace/your-image.qcow2"]