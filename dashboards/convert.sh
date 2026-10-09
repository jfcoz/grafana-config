#!/bin/bash
if [ -z "$1" ]; then
	echo missing file name to edit in place
	exit 1
fi

# from a classic export with "share externally" dashboard export
# script to convert dashboard export with variables that something that the grafana-sc-dashboard can import via https://github.com/grafana/helm-charts/blob/b8f10c0c61deaf890e94e61066d156ee598df701/charts/grafana/templates/_config.tpl#L122-L130


perl -i -pe 'BEGIN{undef $/;} s/"datasource": {\n\s+"type": "prometheus",\n\s+"uid": "([^"]+)"\n\s+}/"datasource": "\1"/mg' $1
