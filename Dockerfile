FROM grafana/grafana:7.5.16

COPY config/grafana.ini /etc/grafana/grafana.ini
COPY config/dashboards.yml /etc/grafana/provisioning/dashboards/
COPY config/datasources.yml /etc/grafana/provisioning/datasources/
COPY config/dashboard.json /etc/grafana/dashboards/
