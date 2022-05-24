FROM fishtownanalytics/dbt:0.19.1
USER root
WORKDIR /dbt
COPY script.sh ./
COPY binance ./

CMD exec dbt run --profiles-dir .
