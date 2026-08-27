###use the official python image from the docker hub 
FROM python:3.9-slim
###set the working directory 
WORKDIR /app
###copy the current directory contain in /app
COPY . /app 
####install the requirements
RUN pip install flask 
###make the 5000 port available to connect to container 
EXPOSE 5000
#### run the app.py when the container is ready 
CMD [ "python","app.py" ]
