# LAMPStack
First, please run above command to build image:
```
docker build -t lamp_stack .
```
then, run container on some port (for example: 8000):
```
docker run -d -v ./:/var/www/html -p 8000:80  lamp_stack
```
and visit `http://localhost:8000' in your browser.
