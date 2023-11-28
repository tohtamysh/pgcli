FROM alpine

RUN set -x \
  && buildDeps='postgresql-dev gcc openssl python3-dev musl-dev libffi-dev' \
  && apk add --update py3-pip libpq $buildDeps \
  && pip install "psycopg[binary,pool]" pgcli "pgcli[sshtunnel]" \
  && apk del $buildDeps \
  && rm -rf /var/cache/apk/*

CMD pgcli
