# Docker Image Base Imgae 
FROM python:2.7
# create a code directory in image 
RUN mkdir /code
# Copy code from src to docker image /code path 
ADD src/app.py  /code
# define work directory /code in docker image 
WORKDIR /code
# install require by python requirement files
RUN pip install -r requirements.txt
# define run code command 
CMD python app.py
