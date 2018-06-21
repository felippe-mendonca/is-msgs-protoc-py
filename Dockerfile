FROM python:3.6

WORKDIR /
RUN apt-get update && apt-get install -y --no-install-recommends unzip                             \
 && wget https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip \
 && unzip protoc-3.5.1-linux-x86_64.zip                                                            \
 && rm -rf protoc-3.5.1-linux-x86_64.zip                                                           \
 && pip install --user is-msgs==1.1.4
WORKDIR /protos
ENTRYPOINT ["python", "-m", "is_msgs.utils.build"]