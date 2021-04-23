FROM openvino/model_server:latest

RUN mkdir -p /tmp/models/${VERSION}/${MODEL}/${PRECISION}/
RUN pip install requests
RUN python getmodel.py
