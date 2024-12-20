# NMS VM

To download a cloud-init image of NMS. 

Build the container with the following command:

```bash
make
```

The resulting container will be tagged as `vrnetlab/nms:<version>`, e.g. `vrnetlab/nms:7.1.1-20241120-130050-9e7912bb`.

## Host requirements

* 1 vCPU, 512 MB RAM

## Configuration

Initial config is carried out via cloud-init.

* `9.9.9.9` configured as the DNS resolver. Change it with `resolvectl` if required.
