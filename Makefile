VENDOR=Sevone
NAME=nms
IMAGE_FORMAT=qcow2
IMAGE_GLOB=nms-*.qcow2

# Extract the version part using sed
VERSION := $(shell echo $(IMAGE) | sed -e 's/^nms-\([^-]\+\)\.*/\1/')

-include ../makefile-sanity.include
-include ../makefile.include

print-version:
	@echo "VERSION=$(VERSION)"

build: download
	$(MAKE) docker-image