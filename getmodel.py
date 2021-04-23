import os
import requests

zoo_base = os.environ['ZOO_BASE']
model_name = os.environ['MODEL']
precision = os.environ['PRECISION']
version = os.environ['VERSION']
base_path = '/tmp/models/' + version + '/' + model_name + '/' + precision + '/' + model_name

for suffix in ['.bin', '.xml']:
  url = zoo_base + '/' version + '/' + model_name + '/' +  precision + '/' + model_name + suffix
  response = requests.get(url)
  file = open(base_path + suffix, "wb")
  file.write(response.content)
  file.close
