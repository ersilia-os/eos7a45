FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia

RUN pip install rdkit-pypi
RUN pip install pytorch=1.8.1=py3.7_cuda10.2_cudnn7.6.5_0
RUN pip install pytorch-lightning=1.3
RUN pip install pyg=2.0.1=py37_torch_1.8.0_cu102
RUN pip install rdkit-pypi


WORKDIR /repo
COPY ./repo
