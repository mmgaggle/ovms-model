FROM openvino/model_server:latest

RUN mkdir -P /tmp/models/${VERSION}/${MODEL}/${PRECISION}/
RUN python3 getmodel.py
