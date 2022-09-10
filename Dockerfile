FROM nvidia/cuda:11.7.1-base-ubuntu22.04

RUN apt-get update && \
    apt-get install -y python3 python3-pip libsndfile1 &&\
    pip3 install TTS

# tts-server
EXPOSE 5002

ENTRYPOINT tts
