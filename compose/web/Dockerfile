FROM ubuntu:16.04

ENV PYTHONUNBUFFERED="true" \
    PATH="/usr/src/app/compose/web/bin:/usr/src/app/compose/common/bin:${PATH}" \
    GOSU_VERSION="1.10" \
    CPLUS_INCLUDE_PATH=/usr/include/gdal \
    C_INCLUDE_PATH=/usr/include/gdal


RUN set -eux \
    && apt-get update \
    && apt-get install -y python2.7 libgdal-dev postgresql-client python-pip wget\
    && rm -rf /var/lib/apt/lists/* \
    && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" \
    && chmod +x /usr/local/bin/gosu \
    && gosu nobody true

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt

COPY . /usr/src/app/

ENTRYPOINT ["/usr/src/app/compose/web/entrypoint.sh"]
CMD ["/bin/bash"]


