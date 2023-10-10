## Contact Interactions Totals
<a name="lips_contact_interactions_totals"></a>

The totals of the "events", *contact interactions*. The event may be a call, a form post, or chat event recorded by capture or a FPD event. These activities could be associated with a contact

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /contact_interactions/totals|

### Usage
Use GET to retrieve contact interactions that match the query params.

### Parameters
When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`global_master_advertiser_id`|Yes|Restrict results to one or more specific gmaid.|
|`start_date`|No|Restricts the results to those occurring on or after this date|
|`end_date`|No|Restricts the results to those occurring on or before this date|
|`global_master_campaign_id`|No|Restrict results to one or more specific gmcid.|
|`event_type[]`|No|See chart below|
|`channel[]`|No|Filters results by Event channel. Valid channels are: `search, display, social, chat, other, none`|
|`call_duration`|No|Filters CallEvents by call_duration that is >= given value.|
|`archived`|No|Boolean filter to include ONLY archived events|
|`booking_id`|No|Filters the booking events based on the external booking_id|
|`contact_id`|No|Integer that restricts the contact_interactions/events totals and show them for a single contact|
|`event_params[phone_numbers]`|No|String that restricts the contacts to one or more based on phone number|

> * Searching by `channel` will remove any event without a `wpc_id`.

#### Event Type Filter
Event Type | Explanation
-- | --
call | All CallEvents
chat | All ChatEvents
booking | All BookingEvents
lsa | All LsaEvents
chat_sales | ChatEvents with a lead_type of sales. Ignored when used in combination with `chat`
chat_service | ChatEvents with a lead_type of service. Ignored when used in combination with `chat`
chat_other | ChatEvents with a lead type of other. Ignored when used in combination with `chat`
form | FormEvents with a sub_type of FormPost
email | FormEvents with a sub_type of FormEmail
fpd | All FpdEvents
diy_post | FormEvents with a sub_type of DIYPost

### Examples:

### GET (index)

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions/totals' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
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
