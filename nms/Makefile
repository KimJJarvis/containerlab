VENDOR=Sevone
NAME=nms
IMAGE_FORMAT=qcow2
IMAGE_GLOB=*.qcow2

# Extract the version part using sed
VERSION=$(shell echo $(IMAGE) | sed -e 's/\([a-z]\+\)-ubuntu-cloud.*/\1/')
#VERSION := 7.1.1-20241120-130050-9e7912bb

-include ../makefile-sanity.include
-include ../makefile.include

print-version:
	@echo "IMAGE=$(IMAGE)"
	@echo "VERSION=$(VERSION)"

build: download
	$(MAKE) docker-image