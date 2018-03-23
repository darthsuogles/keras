#!/bin/bash

# Run notebook to user attached /workspace directory
jupyter notebook --port=8888 --ip=0.0.0.0 >& /workspace/temp.jupyter.log &

cat <<'_NOTEBOOK_INFO_EOF_'
Please attach your notebook and data directories under `/workspace`
sudo nvidia-docker run -it \
  --priviledged=true \
  -v <abs_path_to_notebook_dir>:/workspace/notebooks \
  -v <abs_path_to_dataset_dir>:/workspace/data:ro \
  <name_of_the_docker_image>

_NOTEBOOK_INFO_EOF_

exec /bin/bash -l $@
