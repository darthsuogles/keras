# Using Keras via Docker

This directory contains `Dockerfile` to make it easy to get up and running with
Keras via [Docker](http://www.docker.com/).

## Installing Docker

General installation instructions are
[on the Docker site](https://docs.docker.com/installation/), but we give some
quick links here:

* [OSX](https://docs.docker.com/installation/mac/): [docker toolbox](https://www.docker.com/toolbox)
* [ubuntu](https://docs.docker.com/installation/ubuntulinux/)

Please also make sure that you have installed [nvidia-docker](https://github.com/NVIDIA/nvidia-docker).

## Running the container

``` shell
sudo nvidia-docker run -it \
  --priviledged=true \
  -v <abs_path_to_notebook_dir>:/workspace/notebooks \
  -v <abs_path_to_dataset_dir>:/workspace/data:ro \
  -w /workspace \
  <name_of_the_docker_image>
```
