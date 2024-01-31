# LIPS Demo Data Generator
<a name="lips_demo_data_generator"></a>

This API gives us the oppurtunity to create demo data events based on different fields given by the user or randomnly generated when not given.

### Resource Overview

| Method | URI Format |
|---|---|
| POST `create` | /demo_data_generator |



## POST Event for specific event type

### POST Demo Data Generator (Create)

### Usage

Call this endpoint to create a demo data for a certain event.

!Important! All of the

### Parameters
When using the POST Demo Data Generator:

| Parameter | Required | Description |
|---|---|---|
|`event_type`|Yes|One of fpd, lsa, call, chat, nonleadchat, formemail, formpost, booking must be used|

!IMPORTANT! All of the fields used for creation of Event/Contact Interaction can be used in this API call


#### Example Curl

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/demo_data_generator' \
  --data-raw '{
      "event_type": "chat",
      "sub_type": "sales",
      "global_master_advertiser_id": "USA_186133"
  }'
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```

#### Example Response