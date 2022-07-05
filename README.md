# Compound price prediction

## Model Identifiers
* Slug: coprinet-molecule-price
* Ersilia ID: eos7a45
* Tags: price,	synthesis,	generative

## Model Description
Prediction of price for small molecule synthesis
* Input: SMILES
* Output: $/mmol	(Price of molecules)
* Model type: Regression
* Mode of Training: Pretrained
* Training data: ZINC database & Mcule catalogue	(https://mcule.com/)
* Experimentally validated: No

## Source code
This model was published by Sanchez-Garcia R, Havasi D, Takács G, et al. CoPriNet: Deep learning compound price prediction for use in de novo molecule generation and prioritization. *ChemRxiv*. 2022. doi:10.26434/chemrxiv-2022-gvk2k 
* Code: https://github.com/oxpig/CoPriNet
* Checkpoints: https://github.com/oxpig/CoPriNet/tree/main/pricePrediction/train

## License
The GPL-v3 license applies to all parts of the repository that are not externally maintained libraries. This repository uses the externally maintained library "CoPriNet", located at `/model` and licensed under an MIT License

## History
1. Model was downloaded on 12.05.21 from [TencentAILab](https://github.com/tencent-ailab/grover)
2. We duplicated task/predict.py and scripts/save_features.py from Tencent GitHub repository
3. Model was incorporated to Ersilia on 12/05/2021

