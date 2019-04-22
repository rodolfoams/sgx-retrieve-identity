FROM sebvaucher/sgx-base:sgx_2.5

RUN apt-get update && apt-get install -y vim
WORKDIR /opt/intel/sgxsdk/SampleCode/SampleEnclave
COPY . ./

CMD [ "make", "mrenclave" ]