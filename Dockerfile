FROM bentoml/model-server:0.11.0-py38
MAINTAINER ersilia

RUN pip install pandas==1.3.5 
RUN pip install rdkit-pypi==2022.9.5
RUN pip install torch==1.8.1 -f https://data.pyg.org/whl/torch-1.8.1+cpu.html
RUN pip install pytorch-lightning==1.6.5
RUN pip install torch-geometric==2.0.1 -f https://data.pyg.org/whl/torch-1.8.1+cpu.html
RUN pip install torch_scatter==2.0.8 -f https://data.pyg.org/whl/torch-1.8.1+cpu.html
RUN pip install torch_sparse==0.6.12 -f https://data.pyg.org/whl/torch-1.8.1+cpu.html
RUN pip install torch_cluster==1.5.9 -f https://data.pyg.org/whl/torch-1.8.1+cpu.html
RUN pip install torch_spline_conv==1.2.1 -f https://data.pyg.org/whl/torch-1.8.1+cpu.html
RUN pip install more-itertools==8.8.0


WORKDIR /repo
COPY . /repo
