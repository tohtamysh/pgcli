FROM alpine

RUN set -x \
  && buildDeps='postgresql-dev gcc openssl python3-dev musl-dev' \
  && apk add --update py3-pip libpq $buildDeps \
  && pip install "psycopg[binary,pool]" pgcli \
  && apk del $buildDeps \
  && rm -rf /var/cache/apk/*

CMD pgcli