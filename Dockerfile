FROM lithopscloud/ibmcf-python-v39

LABEL maintainer="gil.arasa@estudiants.urv.cat"

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential  \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip setuptools six && pip install --no-cache-dir -r requirements.txt

# download and cache transformer weights
RUN python -c "from transformers import pipeline; pipeline('sentiment-analysis', model='nlptown/bert-base-multilingual-uncased-sentiment');"

ADD https://dl.fbaipublicfiles.com/fasttext/supervised-models/lid.176.bin /lid.176.bin