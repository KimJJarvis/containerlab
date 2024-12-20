VENDOR=Sevone
NAME=nms
IMAGE_FORMAT=qcow2
IMAGE_GLOB=nms-*.qcow2

# Find all matching files and count them
FILES := $(shell ls $(IMAGE_GLOB) 2>/dev/null)
FILE_COUNT := $(words $(FILES))

# Check if there is exactly one matching file
ifneq ($(FILE_COUNT), 1)
$(error There must be exactly one file matching $(IMAGE_GLOB). Found $(FILE_COUNT) files.)
endif

# Use shell commands to find the first matching file and extract the version part
VERSION := $(shell ls $(IMAGE_GLOB) | head -n 1 | sed -E 's/nms-(.*)\.qcow2/\1/')

-include ../makefile-sanity.include
-include ../makefile.include

print-version:
	@echo "VERSION=$(VERSION)"

build: download
	$(MAKE) docker-image