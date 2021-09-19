FROM grafana/grafana
ENV GF_INSTALL_PLUGINS grafana-piechart-panel,grafana-googlesheets-datasource,grafana-clock-panel,aidanmountford-html-panel,yesoreyeram-boomtable-panel,yesoreyeram-boomtheme-panel,sebastiangunreben-cdf-panel,briangann-datatable-panel,magnesium-wordcloud-panel,snuids-radar-panel
ADD heroku-run.sh /
ADD grafana.ini /etc/grafana/grafana.ini
ENTRYPOINT [ "/heroku-run.sh" ]
