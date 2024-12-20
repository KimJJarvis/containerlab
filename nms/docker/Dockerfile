# Use the Red Hat UBI 8 image as the base image
FROM registry.access.redhat.com/ubi8:8.10-901

# Install necessary packages to work with qcow2 images
RUN dnf install -y qemu-img && \
    dnf clean all

# Copy your qcow2 image into the container
COPY $IMAGE* /

# Command to verify the qcow2 image (optional)
CMD ["qemu-img", "info", "/workspace/your-image.qcow2"]