# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster 
# this line states the type of base image that will have the base environment to run the app. we are using 
# official python image. it already has most of the tools and packages to run a python image.

WORKDIR /app 
#  creating a working directory. Docker will use this directory/path as default for executing all the commands.
# this command creates a relative path.it is short and easy to use.

COPY requirements.txt requirements.txt
# to run the python app we need multiple python packages. FOr those packages we install them. To install 
# these packages we will create a requirement.txt file. This file will have all the names of packages/modules 
# to be downloaded. Using above commnad the requirements.txt is copied from the program folder and 
# it is copied inside the image.

RUN pip3 install -r requirements.txt

# Now running pip3 install command, it will install all the packages/modules listed inside the requirements.txt file.
# Now we have python base image 3.8 version and all the dependancies are installed.

# Now adding source code to the image.
COPY . .
# This command takes all the files from the source code directory and places em inside the image.
# Now writing all the commands that we were supposed to run when our image is exectuted inside a container.

CMD ["python3", "python.py"]





