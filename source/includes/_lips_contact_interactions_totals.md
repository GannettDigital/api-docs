### **Contact Interactions Totals**
<a name="lips_contact_interactions_totals"></a>
## Contact Interactions API

The totals of the "events", *contact interactions*. The event may be a call, a form post, or chat event recorded by capture or a FPD event. These activities could be associated with a contact

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /contact_interactions/totals|

### Usage
Use GET to retrieve contact interactions that match the query params.

### Parameters
You can find all of the filter params here: https://github.com/GannettDigital/api-docs/blob/master/source/includes/_lips_events.md

The only additional parameter is:

| Parameter | Required | Description |
|---|---|---|
|`contact_id`|No|Integer that restricts the contact_interactions/events totals and show them for a single contact|


### Examples:

### GET (index)

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions/totals' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

**Totals**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|events| Integer | no | totals of events|
|call_events| Integer | no | totals of call events|
|form_events| Integer | no | totals of form events|
|chat_events| Integer | no | totals of chat events|
|lsa_events| Integer | no | totals of lsa events|
|booking_events| Integer | no | totals of booking events|

**Unread**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|events| Integer | no | totals of unread events|
|call_events| Integer | no | totals of unread call events|
|form_events| Integer | no | totals of unread form events|
|chat_events| Integer | no | totals of unread chat events|
|booking_events| Integer | no | totals of unread booking events|

**Channel**
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|channels| Integer | no | total events|
|display| Integer | no | total events with `display` channel|
|search| Integer | no |total events with `search` channel |
|social| Integer | no | total events with `social` channel|
|chat | Integer | no | total events with `chat` channel|
|other | Integer | no | total events with `other` channel|
|none | Integer | no | total events without channel|

#### Example Response

```javascript
{
    "totals": {
        "events": 3,
        "call_events": 3,
        "form_events": 0,
        "chat_events": 0,
        "lsa_events": 0,
        "booking_events": 0,
        "lsa_events": 0
    },
    "unread": {
       "events": 2,
       "call_events": 2,
       "form_events": 0,
       "chat_events": 0,
       "booking_events": 0,
       "lsa_events": 0
    }
    "channel": {
       "display": 2,
       "search": 0,
       "social": 0,
       "chat": 0,
       "other": 0,
       "none": 1
    }

}

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
