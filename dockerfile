FROM python:3.5

WORKDIR /app
# Copy the current directory contents into the container at /app
ADD . /app

# pip 本体のアップデート
RUN pip install --upgrade pip
# tensorflow install
RUN pip install tensorflow==1.13.1
RUN pip install opencv-python
RUN pip install keras==2.2.4
RUN pip install numpy==1.16.1
RUN pip install imageai --upgrade
RUN pip install requests
RUN pip install ipykernel

RUN apt-get update
RUN apt-get install -y libgl1-mesa-dev

# RUN pip install --trusted-host pypi.python.org -r requirements.txt
