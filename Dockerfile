# Base image
FROM ubuntu

# Di image configuration
RUN /bin/bash -c 'echo This would generally be apt-get or other system configuration'
ENV myCustomEvnvVar='This sample.'\
    otherEnvVar="this is also sample"