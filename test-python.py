import requests

while True:
    response = requests.get('http://192.168.59.114/')
    response2 = requests.get('http://192.168.59.114/products')



