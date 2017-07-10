#!/bin/bash

# create jupyter config file
mkdir ~/.jupyter
touch ~/.jupyter/jupyter_notebook_config.py
cat <<EOF >  ~/.jupyter/jupyter_notebook_config.py
c.NotebookApp.password = ''
c.NotebookApp.token = ''
c.NotebookApp.allow_origin = '*'
EOF

# run jupyter notebook server
exec su $BASICUSER -c "env PATH=$PATH jupyter notebook --ip='*' --allow-root --no-browser $*"
