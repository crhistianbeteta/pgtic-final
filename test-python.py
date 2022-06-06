import requests

while True:
    response = requests.get('http://192.168.59.121/')
    response2 = requests.get('http://192.168.59.121/products')



