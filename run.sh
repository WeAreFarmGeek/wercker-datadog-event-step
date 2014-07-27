if [ ! -n "$WERCKER_DATADOG_EVENT_TOKEN" ]; then
  error 'Please specify token property'
  exit 1
fi

if [ ! -n "$WERCKER_DATADOG_EVENT_TITLE" ]; then
  error 'Please specify title property'
  exit 1
fi

if [ ! -n "$WERCKER_DATADOG_EVENT_TEXT" ]; then
  error 'Please specify text property'
  exit 1
fi

if [ ! -n "$WERCKER_DATADOG_EVENT_PRIORITY" ]; then
  error 'Please specify priority property'
  exit 1
fi

if [ ! -n "$WERCKER_DATADOG_EVENT_ALERT_TYPE" ]; then
  error 'Please specify alert_type property'
  exit 1
fi


curl  -X POST -H "Content-type: application/json" \
-d '{
      "title":       "$WERCKER_CAMPFIRE_NOTIFY_TITLE",
      "text":        "$WERCKER_CAMPFIRE_NOTIFY_TEXT",
      "priority":    "$WERCKER_CAMPFIRE_NOTIFY_PRIORITY",
      "alert_type":  "$WERCKER_CAMPFIRE_NOTIFY_ALERT_TYPE"
  }' \
'https://app.datadoghq.com/api/v1/events?api_key=$WERCKER_CAMPFIRE_NOTIFY_TOKEN'
