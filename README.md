# Small molecule price prediction

Estimates what a compound would cost to buy, a consideration that shapes which virtual hits are worth pursuing yet is rarely modelled. CoPriNet was trained on catalogue prices from commercial suppliers using a graph neural network, giving an estimate for molecules that have never been quoted. Prices reflect supplier listings at the time of collection and follow synthetic accessibility only loosely, so the output indicates relative expense rather than a quotable figure.

This model was incorporated on 2022-04-11.Last packaged on 2026-07-07.

## Information
### Identifiers
- **Ersilia Identifier:** `eos7a45`
- **Slug:** `coprinet-molecule-price`

### Domain
- **Task:** `Annotation`
- **Subtask:** `Property calculation or prediction`
- **Biomedical Area:** `Any`
- **Target Organism:** `Any`
- **Tags:** `Price`, `Compound generation`, `Chemical synthesis`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `1`
- **Output Consistency:** `Fixed`
- **Interpretation:** Predicted purchase price of the compound, where higher values indicate a more expensive molecule.

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| coprinet | float | low | Predicted price of the molecule |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `External`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos7a45](https://hub.docker.com/r/ersiliaos/eos7a45)
- **Docker Architecture:** `AMD64`, `ARM64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos7a45.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos7a45.zip)

### Resource Consumption
- **Model Size (Mb):** `627`
- **Environment Size (Mb):** `5756`
- **Image Size (Mb):** `6261.9`

**Computational Performance (seconds):**
- 10 inputs: `26.74`
- 100 inputs: `17.96`
- 10000 inputs: `206.08`

### References
- **Source Code**: [https://github.com/oxpig/CoPriNet](https://github.com/oxpig/CoPriNet)
- **Publication**: [https://doi.org/10.1039/D2DD00071G](https://doi.org/10.1039/D2DD00071G)
- **Publication Type:** `Peer reviewed`
- **Publication Year:** `2023`
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
