FROM ubuntu:18.04

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 

RUN echo "now building..."
RUN apt-get update
RUN apt-get install -y python3 \
            python3-distutils \
            curl

RUN python3 -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/develop/scripts/get-platformio.py)" 
ENV PATH $PATH:~/.platformio/penv/bin
RUN echo $PATH

# アクションのリポジトリからコードファイルをファイルシステムパスへコピー
# `/` of the container
COPY entrypoint.sh /entrypoint.sh

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
