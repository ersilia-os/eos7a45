FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia
 
RUN conda install pytorch==1.11.0 torchvision==0.12.0 torchaudio==0.11.0 cpuonly -c pytorch
RUN pip install numpy==1.21.4
RUN pip install pandas==1.3.5 
RUN pip install rdkit-pypi==2022.9.5
RUN pip install pytorch-lightning==1.3.8  
RUN pip install torchmetrics==0.6.2
RUN pip install torch-geometric==2.0.3
RUN pip install torch_scatter==2.0.9 torch_sparse==0.6.14 torch_cluster==1.6.0 torch_spline_conv==1.2.1 -f https://data.pyg.org/whl/torch-1.11.0+cpu.html
RUN pip install more-itertools==8.8.0
RUN conda install -c conda-forge typing-extensions=4.7.1

WORKDIR /repo
COPY . /repo
