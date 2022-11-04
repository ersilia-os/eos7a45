FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia

RUN conda conda install pytorch==1.8.0 torchvision==0.9.0 torchaudio==0.8.0 cpuonly -c pytorch
RUN pip install pytorch-lightning==1.3
RUN pip install torch-scatter==2.0.8 torch-sparse==0.6.10 torch-cluster==1.5.9 torch-spline-conv==1.2.1 torch-geometric==2.1.0 -f https://data.pyg.org/whl/torch-1.8.0%2Bcpu.html
RUN pip install torchmetrics==0.6.0
RUN pip install rdkit-pypi
RUN pip install more-itertools==8.8.0
RUN pip install numpy



WORKDIR /repo
COPY . /repo
