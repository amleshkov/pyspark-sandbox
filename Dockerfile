FROM debian:11

RUN apt-get update
RUN apt-get install -y python3-pip openjdk-11-jre
RUN pip3 install jupyter pyspark

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
    SPARK_HOME=/usr/local/lib/python3.9/dist-packages/pyspark/ \
    PYSPARK_DRIVER_PYTHON="jupyter" \
    PYSPARK_DRIVER_PYTHON_OPTS="notebook --ip='*' --allow-root --NotebookApp.token='' --NotebookApp.password=''"

EXPOSE 8888
CMD ["/usr/local/bin/pyspark"]
