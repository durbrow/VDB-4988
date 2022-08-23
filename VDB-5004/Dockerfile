FROM ncbi/sra-tools:3.0.0
RUN apk --no-cache update \
 && apk --no-cache add python3 py3-pip py3-cffi py3-cryptography \
 && pip install --upgrade pip \
 && apk --no-cache add --virtual .build-deps gcc libffi-dev python3-dev linux-headers musl-dev openssl-dev \
 && pip install gsutil \
 && apk del .build-deps
COPY run-test .
# ENTRYPOINT [ "perl", "/run-test" ]
