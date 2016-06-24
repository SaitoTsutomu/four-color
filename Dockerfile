FROM tsutomu7/python-opencv

RUN conda install -y pillow flask && \
    pip install four_color && \
    conda update -y --all && \
    find /opt -name __pycache__ | xargs rm -r && \
    sudo rm -rf $HOME/.c* /opt/conda/pkgs/*
CMD ["sh", "-c", "python -m four_color"]
