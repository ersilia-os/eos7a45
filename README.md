# Small molecule price prediction

CoPriNet has been trained on 2D graph representations of small molecules with their associated price in the Mcule catalog. The predicted price provides a better overview of the compound availability than standard synthetic accessibility scores or retrosynthesis tools. The Mcule catalog is proprietary but the trained model as well as the test dataset (100K) are publicly available.

## Identifiers

* EOS model ID: `eos7a45`
* Slug: `coprinet-molecule-price`

## Characteristics

* Input: `Compound`
* Input Shape: `Single`
* Task: `Regression`
* Output: `Other value`
* Output Type: `Float`
* Output Shape: `Single`
* Interpretation: Price value prediction

## References

* [Publication](https://pubs.rsc.org/en/content/articlelanding/2023/dd/d2dd00071g)
* [Source Code](https://github.com/oxpig/CoPriNet)
* Ersilia contributor: [anamika-yadav99](https://github.com/anamika-yadav99)

## Ersilia model URLs
* [GitHub](https://github.com/ersilia-os/eos7a45)
* [AWS S3](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos7a45.zip)
* [DockerHub](https://hub.docker.com/r/ersiliaos/eos7a45) (AMD64, ARM64)

## Citation

If you use this model, please cite the [original authors](https://pubs.rsc.org/en/content/articlelanding/2023/dd/d2dd00071g) of the model and the [Ersilia Model Hub](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff).

## License

This package is licensed under a GPL-3.0 license. The model contained within this package is licensed under a MIT license.

Notice: Ersilia grants access to these models 'as is' provided by the original authors, please refer to the original code repository and/or publication if you use the model in your research.

## About Us

The [Ersilia Open Source Initiative](https://ersilia.io) is a Non Profit Organization ([1192266](https://register-of-charities.charitycommission.gov.uk/charity-search/-/charity-details/5170657/full-print)) with the mission is to equip labs, universities and clinics in LMIC with AI/ML tools for infectious disease research.

[Help us](https://www.ersilia.io/donate) achieve our mission!