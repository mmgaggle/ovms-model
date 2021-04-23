FROM openvino/model_server:latest

RUN mkdir -p /tmp/models/faster-rcnn-resnet101-coco-sparse-60-0001/FP16
RUN cd /tmp/models/faster-rcnn-resnet101-coco-sparse-60-0001/FP16
RUN curl -O https://download.01.org/opencv/2021/openvinotoolkit/2021.2/open_model_zoo/models_bin/3/faster-rcnn-resnet101-coco-sparse-60-0001/FP16/faster-rcnn-resnet101-coco-sparse-60-0001.bin
RUN curl -O https://download.01.org/opencv/2021/openvinotoolkit/2021.2/open_model_zoo/models_bin/3/faster-rcnn-resnet101-coco-sparse-60-0001/FP16/faster-rcnn-resnet101-coco-sparse-60-0001.xml
