FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia
 
RUN conda install pytorch==1.8.0 torchvision==0.9.0 torchaudio==0.8.0 cpuonly -c pytorch
RUN pip install numpy==1.26.4
RUN pip install pandas==1.3.5 
RUN pip install rdkit-pypi==2022.9.5
RUN pip install pytorch-lightning==1.4.5  
RUN pip install torchmetrics==0.6.2
RUN pip install torch-geometric==2.1.0
RUN pip install torch_scatter torch_sparse torch_cluster torch_spline_conv -f https://data.pyg.org/whl/torch-1.8.0+cpu.html
RUN pip install more-itertools==8.8.0
RUN conda install -c conda-forge typing-extensions=4.7.1

WORKDIR /repo
COPY . /repo
