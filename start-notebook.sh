#!/bin/bash
mkdir ~/.jupyter
cd ~/.jupyter
touch jupyter_notebook_config.py
cat <<EOF >  jupyter_notebook_config.py
c.NotebookApp.password = ''
c.NotebookApp.token = ''
c.NotebookApp.allow_origin = '*'
EOF


exec su $BASICUSER -c "env PATH=$PATH jupyter notebook --ip='*' --allow-root --no-browser $*"
