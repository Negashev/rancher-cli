FROM alpine

RUN apk --update upgrade && apk add curl ca-certificates docker && rm -rf /var/cache/apk/*

ENV ENV 1a5
ENV URL ''
ENV ACCESS_KEY ''
ENV SECRET_KEY ''

ADD docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

ENV VERSION v0.4.0

ADD https://github.com/rancher/cli/releases/download/$VERSION/rancher-linux-amd64-$VERSION.tar.gz /rancher.tar.gz

RUN tar -xf /rancher.tar.gz

RUN mv /rancher-$VERSION/rancher /bin/


ENTRYPOINT ["/docker-entrypoint.sh"]
