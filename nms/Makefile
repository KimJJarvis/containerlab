VENDOR=Sevone
NAME=nms
IMAGE_FORMAT=qcow2
IMAGE_GLOB=nms-*.qcow2

# Extract the version part using sed
# Use shell commands to find the first matching file and extract the version part
VERSION := $(shell ls $(IMAGE_GLOB) | head -n 1 | sed -E 's/nms-(.*)\.qcow2/\1/')
#VERSION := 7.1.1-20241120-130050-9e7912bb

-include ../makefile-sanity.include
-include ../makefile.include

print-version:
	@echo "VERSION=$(VERSION)"

build: download
	$(MAKE) docker-image