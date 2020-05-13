FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y stress-ng && \
    rm -rf /var/lib/apt/lists/*

CMD ["stress-ng", "-m","1", "--vm-bytes" ,"256M","--vm-hang","0","-q"]
