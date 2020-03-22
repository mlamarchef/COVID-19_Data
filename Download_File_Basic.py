import requests

url = "https://www.python.org/static/img/python-logo@2x.png"
downloaded_obj = requests.get(url)

with open("python_logo.png", "wb") as file:
    file.write(downloaded_obj.content)