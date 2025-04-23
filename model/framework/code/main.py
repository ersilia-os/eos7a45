
import os
import csv
import sys
from CoPriNet.pricePrediction.predict.predict import GraphPricePredictor

# parse arguments
input_file = sys.argv[1]
output_file = sys.argv[2]

# current file directory
root = os.path.dirname(os.path.abspath(__file__))

# read SMILES from .csv file, assuming one column with header
with open(input_file, "r") as f:
    reader = csv.reader(f)
    next(reader)  # skip header
    smiles_list = [r[0] for r in reader]

predictor = GraphPricePredictor()
preds = predictor.yieldPredictions(smiles_list)


# write output in a .csv file
with open(output_file, "w") as f:
    writer = csv.writer(f)
    writer.writerow(["coprinet"])  # header
    for o in preds:
        writer.writerow([o])
