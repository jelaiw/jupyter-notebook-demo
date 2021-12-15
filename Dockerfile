FROM continuumio/anaconda3

MAINTAINER jelai.wang@gmail.com

# Install Jupyter Notebook from conda package.
RUN conda install jupyter -y --quiet

# Set up working directory for notebooks.
ENV NOTEBOOK_DIR="/opt/notebooks"
RUN mkdir -p $NOTEBOOK_DIR
WORKDIR $NOTEBOOK_DIR

# Listen on port 8888 (default port for Jupyter Notebook).
# See https://docs.docker.com/engine/reference/builder/#expose.
EXPOSE 8888

ENTRYPOINT ["jupyter", "notebook", "--no-browser", "--ip='*'", "--allow-root"]


