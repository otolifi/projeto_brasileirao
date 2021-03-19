# Use an official Python runtime as a parent image
FROM python:3.7-slim 
# Set the working directory to /notebooks 
WORKDIR /brasileirao
# install necessary build packages 
#RUN apk add --no-cache --virtual .build-deps gcc musl-dev unixodbc unixodbc-dev freetds-dev freetds-bin tdsodbc\
#RUN  apt-get update && apt-get install -y gcc libsndfile1-dev 
# Copy the current directory contents into the container at /app
COPY requirements.txt /brasileirao
# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org --no-cache -r requirements.txt
