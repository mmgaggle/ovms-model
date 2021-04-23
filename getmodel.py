import os
import requests

zoo_base = os.environ['ZOO_BASE']
model_name = os.environ['MODEL']
precision = os.environ['PRECISION']
base_path = '/tmp/models/' + model_name + '/' + precision + '/' + model_name

for suffix in ['.bin', '.xml']:
  url = zoo_base + '/' + model_name + '/' +  precision + '/' + model_name + suffix
  response = requests.get(url)
  file = open(base_path + suffix, "wb")
  file.write(response.content)
  file.close
