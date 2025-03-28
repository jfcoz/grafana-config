# script to convert dashboard export with variables that something that the grafana-sc-dashboard can import via https://github.com/grafana/helm-charts/blob/b8f10c0c61deaf890e94e61066d156ee598df701/charts/grafana/templates/_config.tpl#L122-L130
perl -pe 'BEGIN{undef $/;} s/\{\n +"type": "prometheus",\n +"uid": ("[^"]*")\n +}/\1/mg'
