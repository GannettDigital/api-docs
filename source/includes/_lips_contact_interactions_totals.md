### **Contact Interactions Totals**
<a name="lips_contact_interactions_totals"></a>
## Contact Interactions API

The totals of the "events", *contact interactions* are activities associated with a contact.  The event may be a call, a form post, or chat event recorded by capture or a FPD event.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /contact_interactions/{gmaid}/totals|

### Usage
Use GET to retrieve contact interactions that match the query params.

### Parameters
You can find all of the filter params here: https://github.com/GannettDigital/api-docs/blob/master/source/includes/_lips_events.md

### Examples:

### GET (index)

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions/USA_1/totals' \
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

**Unread**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|events| Integer | no | totals of unread events|
|call_events| Integer | no | totals of unread call events|
|form_events| Integer | no | totals of unread form events|
|chat_events| Integer | no | totals of unread chat events|

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

**Call**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|call_recording_url| String | yes | Only included when interaction is call|
|call_duration| Integer | yes | Length of call in seconds -- only included when interaction is call|

**Form**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|referring_url| string | yes |URL of the referring page|
|full_message| string | yes |full message of the form event|
|message| string | yes| parsed message|
|extra_fields| object | yes |extra fields|

**Chat**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|provider| string | yes |chat provider(if missing assume Apex)|
|transcript| object | yes |object of chat transcript|
|summary| object | yes |A freeform text description of the chat.|

**Transcript**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|id| object | no |A sequential id of the line chat transcript. It uniquely identifies a line of the chat transcript within this contact interaction.|
|timestamp| object | no |The date and time that the external chat API registered for this line of the chat transcript.|
|form| object | no |The display name of the member of the chat who sent this message.|
|message| object | no |The message body of this line of the chat transcript.|

#### Example Response

```javascript
{
    "totals": {
        "events": 3,
        "call_events": 3,
        "form_events": 0,
        "chat_events": 0,
    },
    "unread": {
       "events": 2,
       "call_events": 2,
       "form_events": 0,
       "chat_events": 0
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
