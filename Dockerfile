FROM openjdk:8-jre-slim

# Baixa e instala o Flume
ENV FLUME_VERSION=1.9.0
ENV FLUME_HOME=/opt/apache-flume

RUN apt-get update && apt-get install -y wget && \
    wget https://archive.apache.org/dist/flume/${FLUME_VERSION}/apache-flume-${FLUME_VERSION}-bin.tar.gz && \
    mkdir -p ${FLUME_HOME} && \
    tar -xzf apache-flume-${FLUME_VERSION}-bin.tar.gz -C ${FLUME_HOME} --strip-components=1 && \
    rm apache-flume-${FLUME_VERSION}-bin.tar.gz

# Define o diretório de trabalho
WORKDIR $FLUME_HOME

# Define o ponto de entrada para o Flume
ENTRYPOINT ["bin/flume-ng"]
CMD ["help"]
