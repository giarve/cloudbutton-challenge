FROM lithopscloud/ibmcf-python-v39

LABEL maintainer="gil.arasa@estudiants.urv.cat"

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip setuptools six && pip install --no-cache-dir -r requirements.txt

# download and cache transformer weights
RUN python -c "from transformers import pipeline; pipeline('sentiment-analysis', model='nlptown/bert-base-multilingual-uncased-sentiment');"
