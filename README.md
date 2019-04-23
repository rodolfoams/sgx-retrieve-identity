# sgx-retrieve-enclave-identity

[![CircleCI](https://circleci.com/gh/rodolfoams/sgx-retrieve-identity/tree/master.svg?style=svg)](https://circleci.com/gh/rodolfoams/sgx-retrieve-identity/tree/master)

Tool for retrieving the identities from a signed SGX enclave.

## Dependencies

You should have the SGX driver installed on your host machine, and AESM *should not* be running in it.
For instructions on how to install the SGX driver, see the documentation available [here](https://github.com/intel/linux-sgx-driver).

## Running the sample code

```bash
docker build -t mrenclave .
docker run -it --rm --device /dev/isgx --device /dev/mei0 mrenclave
```

**Note**: This sample code was based on the SampleEnclave provided by Intel. You can use the modified Makefile as an example to using it with your own SGX application.