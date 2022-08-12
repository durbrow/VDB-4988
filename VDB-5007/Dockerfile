FROM ncbi/sra-tools:3.0.0
RUN apk --no-cache update \
 && apk --no-cache add --virtual .build-deps perl-app-cpanminus wget make \
 && apk --no-cache add perl aws-cli \
 && cpanm File::chdir \
 && apk del .build-deps
COPY run-test .
ENTRYPOINT [ "perl", "/run-test" ]
