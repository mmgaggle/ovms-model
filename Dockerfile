FROM openvino/model_server:latest

RUN mkdir -p /tmp/models/${VERSION}/${MODEL}/${PRECISION}/
RUN yum install python3-pip
RUN pip install requests
RUN python3 getmodel.py
