FROM seemeai/fastai:pt-2.1.2-fa-2.7.13

RUN apt-get update
RUN apt-get -y install git
RUN pip install openpyxl tqdm execnb

##  geo stuff
#   also pulls shapely fiona
RUN pip install rasterio 
RUN pip install geopandas 

### Semtorch
## check for torch version first!!!!
RUN pip install -U git+https://github.com/juergenlandauer/SemTorchFork

RUN pip install albumentations
RUN pip install segmentation-models-pytorch

# remove jupyter completely and reinstall
#RUN pip uninstall -y jupyter jupyter_core jupyter-client jupyter-console jupyterlab_pygments qtconsole notebook nbconvert nbformat nbclassic nbclient jupyterlab-widgets jupyter-events jupyter-server jupyter-server-terminals 

RUN pip install pip-autoremove
RUN pip-autoremove jupyter -y

# re-install jupyter
RUN pip install jupyter notebook

# just in case
RUN apt-get update && apt-get upgrade -y

WORKDIR /code/

#RUN echo '#!/bin/bash\njupyter notebook --ip=0.0.0.0 --no-browser' >> run_jupyter.sh


