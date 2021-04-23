FROM openvino/model_server:latest

RUN mkdir -p /tmp/models/${VERSION}/${MODEL}/${PRECISION}/
RUN pip3 install requests
RUN getmodel.py
