FROM library/python:2.7.14-stretch

ENV PYTHONUNBUFFERED="true" \
    APP_SRC_PATH="/usr/src/app" \
    PATH="/usr/src/app/compose/web/bin:/usr/src/app/compose/common/bin:${PATH}"

WORKDIR $APP_SRC_PATH

RUN set -exu \
    && apt-get update \
    && apt-get install -y libgdal-dev=2.1.2+dfsg-5 postgresql-client gosu \
    && rm -rf /var/lib/apt/lists/* \
    && gosu nobody true

COPY ./compose/web/requirements.txt $APP_SRC_PATH/requirements.txt
RUN pip install --no-cache-dir --global-option=build_ext --global-option="-I/usr/include/gdal/" -r requirements.txt

COPY . $APP_SRC_PATH

ENTRYPOINT ["/usr/src/app/compose/web/entrypoint.sh"]
CMD ["/bin/bash"]