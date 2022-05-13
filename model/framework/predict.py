import csv
import argparse
import os, sys
import pandas as pd
from CoPriNet.pricePrediction.predict.predict import GraphPricePredictor

ROOT = os.path.dirname(os.path.abspath(__file__))
sys.path.append(os.path.join(ROOT, "CoPrinet"))

infile = sys.argv[1]
outfile = sys.argv[2]




with open(infile, "r") as f:
    df = pd.read_csv(e)
    nans = df[infile.smiles_colname].isna()
    df = df[~nans]
    smiles_list = df[infile.smiles_colname]
    

coprinet_colname = "CoPriNet"

predictor = GraphPricePredictor(infile , outfile = None)
preds = predictor.yieldPredictions(smiles_list)

if outfile is None:
    for smi, pred in zip(smiles_list, preds):
        print("%s\t%.4f" % (smi, pred))
else:
    df[coprinet_colname] = list(preds)
    df.to_csv(outfile, index=False)