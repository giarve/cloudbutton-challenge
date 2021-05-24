# cloudbutton-challenge

The challenge consists of developing the entire life cycle of a Big Data application including data acquisition and storage, data preprocessing and indexing, and data queries and visualization.

# Dev environment installation

Python 3.9 required when using `gilarasa/lithops-cloudbutton-challenge-py3.9:0.5` runtime to perform preprocessing.


1. Create a local virtual environment: `python3 -m venv .venv`

2. Activate it: `source .venv/bin/activate`

2. Install dependencies:
`pip install -r requirements.txt`

3. Start jupyter server: `jupyter notebook notebooks/`


If you dont have jupyter notebook package installed locally you can install it using `pip install notebook`.

## References

https://github.com/lithops-cloud/applications/blob/master/momentsintime/example_mit.ipynb

https://github.com/lithops-cloud/lithops/blob/master/docs/mode_localhost.md#docker-environment

https://github.com/lithops-cloud/lithops/tree/master/runtime/ibm_cf#custom-runtime

https://github.com/lithops-cloud/lithops/blob/master/docs/data_processing.md

https://huggingface.co/transformers/quicktour.html

## Adopted libraries

https://github.com/JustAnotherArchivist/snscrape inside custom_snscrape with some modifications.
