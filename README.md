# Small molecule price prediction

CoPriNet has been trained on 2D graph representations of small molecules with their associated price in the Mcule catalog. The predicted price provides a better overview of the compound availability than standard synthetic accessibility scores or retrosynthesis tools. The Mcule catalog is proprietary but the trained model as well as the test dataset (100K) are publicly available.

This model was incorporated on 2022-04-11.

## Information
### Identifiers
- **Ersilia Identifier:** `eos7a45`
- **Slug:** `coprinet-molecule-price`

### Domain
- **Task:** `Annotation`
- **Subtask:** `Property calculation or prediction`
- **Biomedical Area:** `Any`
- **Target Organism:** `Not Applicable`
- **Tags:** `Price`, `Compound generation`, `Chemical synthesis`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `1`
- **Output Consistency:** `Fixed`
- **Interpretation:** Price value prediction

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| coprinet | float | low | Predicted price of the molecule |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `External`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos7a45](https://hub.docker.com/r/ersiliaos/eos7a45)
- **Docker Architecture:** `AMD64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos7a45.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos7a45.zip)

### Resource Consumption
- **Model Size (Mb):** `627`
- **Environment Size (Mb):** `2492`


### References
- **Source Code**: [https://github.com/oxpig/CoPriNet](https://github.com/oxpig/CoPriNet)
- **Publication**: [https://pubs.rsc.org/en/content/articlelanding/2023/dd/d2dd00071g](https://pubs.rsc.org/en/content/articlelanding/2023/dd/d2dd00071g)
- **Publication Type:** `Peer reviewed`
- **Publication Year:** `2022`
- **Ersilia Contributor:** [anamika-yadav99](https://github.com/anamika-yadav99)

### License
This package is licensed under a [GPL-3.0](https://github.com/ersilia-os/ersilia/blob/master/LICENSE) license. The model contained within this package is licensed under a [MIT](LICENSE) license.

**Notice**: Ersilia grants access to models _as is_, directly from the original authors, please refer to the original code repository and/or publication if you use the model in your research.


## Use
To use this model locally, you need to have the [Ersilia CLI](https://github.com/ersilia-os/ersilia) installed.
The model can be **fetched** using the following command:
```bash
# fetch model from the Ersilia Model Hub
ersilia fetch eos7a45
```
Then, you can **serve**, **run** and **close** the model as follows:
```bash
# serve the model
ersilia serve eos7a45
# generate an example file
ersilia example -n 3 -f my_input.csv
# run the model
ersilia run -i my_input.csv -o my_output.csv
# close the model
ersilia close
```

## About Ersilia
The [Ersilia Open Source Initiative](https://ersilia.io) is a tech non-profit organization fueling sustainable research in the Global South.
Please [cite](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff) the Ersilia Model Hub if you've found this model to be useful. Always [let us know](https://github.com/ersilia-os/ersilia/issues) if you experience any issues while trying to run it.
If you want to contribute to our mission, consider [donating](https://www.ersilia.io/donate) to Ersilia!
