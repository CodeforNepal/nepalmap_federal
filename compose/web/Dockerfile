FROM library/python:3.8.13-bullseye

ENV PYTHONUNBUFFERED="true" \
    PATH="/usr/src/app/compose/web/bin:/usr/src/app/compose/common/bin:${PATH}" \
    GOSU_VERSION="1.10"

RUN set -exu \
    && apt-get update \
    && apt-get install -y libgdal-dev=3.2.2+dfsg-2+deb11u2 postgresql-client \
    && rm -rf /var/lib/apt/lists/* \
    && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" \
    && chmod +x /usr/local/bin/gosu \
    && gosu nobody true

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/requirements.txt
RUN pip install --ignore-installed --no-cache-dir --global-option=build_ext --global-option="-I/usr/include/gdal/" -r requirements.txt

COPY . /usr/src/app/

ENTRYPOINT ["/usr/src/app/compose/web/entrypoint.sh"]
CMD ["/bin/bash"]

