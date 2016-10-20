#!/bin/sh

# start splunk
splunk start --accept-license
touch $HOME/$SPLUNK_LOG_FILE
splunk add forward-server $SPLUNK_INDEXER -auth admin:changeme
splunk add monitor $HOME/$SPLUNK_LOG_FILE  -auth admin:changeme
echo "goapi_jtier_splunk_agent_started" >> $HOME/$SPLUNK_LOG_FILE

# start metrics daemon



bundle exec rackup -p $PORT config.ru
