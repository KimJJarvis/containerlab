VENDOR=Sevone
NAME=nms
IMAGE_FORMAT=qcow2
IMAGE_GLOB=nms-*.qcow2

# match versions like:
# nms-7.1.1-20241120-130050-9e7912bb.qcow2
VERSION=$(echo "$IMAGE" | sed -e 's/nms-\(.*\).qcow2/\1/')

-include ../makefile-sanity.include
-include ../makefile.include

print-version:
	@echo "VERSION=$(VERSION)"

build: download
	$(MAKE) docker-image