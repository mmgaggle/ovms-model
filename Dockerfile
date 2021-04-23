FROM openvino/model_server:latest

RUN mkdir -P /tmp/models/${MODEL}/${PRECISION}/
RUN python3 getmodel.py
