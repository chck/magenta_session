# magenta-session Dockerfile

# base image
FROM tensorflow/magenta:0.1.10

# installing  library
COPY ./requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

# deploy magenta-session module
#COPY . /src/
COPY . /work/

# port
EXPOSE 8080 6006

# daemon run
#WORKDIR /src/
WORKDIR /work/
#CMD MAGENTA_MODEL=my_model python server/server.py
CMD python server/server.py
