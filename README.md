# Datadog-event

Send an event to datadog

## Options

 - `token` (required) Your Datadog Token
 - `title` (required) The title of the event
 - `text`  (required) A description of the event
 - `alert_type` (optional, default: `success`) The type of alert we're generating (`error`, `warning`, `info`, or `success`)
 - `priority` (optional, default: `low`) The priority of the alert we're generating (`low` or `normal`)

## Example

    build:
        after-steps:
            - datadog-event:
                token: $DATADOG_TOKEN
                title: MyApp has passed
                text: MyApp has been marked as passed
                alert_type: success
                priority: low

## License

The MIT License (MIT)
