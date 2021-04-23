FROM openvino/model_server:latest

RUN mkdir -p /tmp/models/${VERSION}/${MODEL}/${PRECISION}/
RUN python3 getmodel.py
