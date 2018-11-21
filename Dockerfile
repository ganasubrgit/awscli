FROM alpine

#Evironment variables
ENV AWS_DEFAULT_REGION us-east-1
ENV AWS_ACCESS_KEY_ID defaultawsaccesskeyid
ENV AWS_SECRET_ACCESS_KEY defaultawssecretaccesskey

RUN apk add -q --update \
    && apk add -q \
            python py-pip py-setuptools \
            ca-certificates \
    && pip install --upgrade pip \
    && pip install awscli \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["aws"]
