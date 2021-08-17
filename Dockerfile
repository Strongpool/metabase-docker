FROM metabase/metabase:v0.40.2
ARG ATHENA_DRIVER_VERSION="v1.2.1"

RUN curl -sLO https://github.com/dacort/metabase-athena-driver/releases/download/v1.2.1/athena.metabase-driver.jar \
    && mv athena.metabase-driver.jar /plugins
