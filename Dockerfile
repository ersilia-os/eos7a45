FROM bentoml/model-server:0.11.0-py38
MAINTAINER ersilia

RUN pip install pip==23.3.1
RUN pip install numpy==1.24.4 pandas==1.3.5 rdkit==2022.9.5 more-itertools==8.8.0
RUN pip install torch==2.4.1 --index-url https://download.pytorch.org/whl/cpu
RUN pip install torch-geometric==2.5.3 pytorch-lightning==1.9.5

WORKDIR /repo
COPY . /repo
