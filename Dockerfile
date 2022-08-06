ARG IMAGE_TAG="latest"
FROM metabase/metabase:${IMAGE_TAG}

ARG ATHENA_DRIVER_VERSION="1.4.0"
RUN curl -sLO https://github.com/dacort/metabase-athena-driver/releases/download/v${ATHENA_DRIVER_VERSION}/athena.metabase-driver.jar \
    && mv athena.metabase-driver.jar /plugins
