### **Contact Interactions**
<a name="lips_contact_interactions"></a>
## Contact Interactions API

Also referred to as "events", *contact interactions* are activities associated with a contact.  The event may be a call, a form post, or chat event recorded by capture or a FPD event.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /contact_interactions? |
| GET `show` |/contact_interactions/:id|
| PUT `update` | /contact_interactions/:id |
| DELETE `destroy` | /contact_interactions/:id |
| PUT `unarchive` | /contact_interactions/:id/unarchive |

### Usage
Use GET to retrieve contact interactions that match the query params.

### Parameters
When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`event_params[phone_numbers]`|No|String that restricts the contacts to one or more based on phone number|
|`global_master_advertiser_id`|Yes|Restrict results to one or more specific gmaid.|
|`global_master_campaign_id`|No|Restrict results to one or more specific gmcid.|
|`start_date`|No|Restricts the results to those occurring on or after this date|
|`end_date`|No|Restricts the results to those occurring on or before this date|
|`per_page`|No|Restrict number of contacts in result <br><b>Default value: 25</b><br><b>Trusted callers default value: 100</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|
|`sort_by`|No|Specifies what column to sort by. Valid columns are: important<br><b>Default value: occurred_at</b> |
|`sort_dir`|No|Specifies the sort direction. Can be either asc or desc <br><b>Default value: asc</b> |
|`event_type[]`|No|See chart below|
|`channel[]`|No|Filters results by Event channel. Valid channels are: `search, display, social, chat, other, none`|
|`call_duration`|No|Filters CallEvents by call_duration that is >= given value.|
|`archived`|No|Boolean filter to include ONLY archived events|
|`booking_id`|No|Filters the booking events based on the external booking_id|


> * Results are always sorted by `occurred_at DESC`, if we provide `sort_by` and `sort_dir` it will order by params first and then by `occurred_at DESC`.  Default is `occurred_at DESC`. Searching by `channel` will remove any event without a `wpc_id`.
#### Event Type Filter
Event Type | Explanation
-- | --
call | All CallEvents
chat | All ChatEvents
booking | All BookingEvents
chat_sales | ChatEvents with a lead_type of sales. Ignored when used in combination with `chat`
chat_service | ChatEvents with a lead_type of service. Ignored when used in combination with `chat`
chat_other | ChatEvents with a lead type of other. Ignored when used in combination with `chat`
form | FormEvents with a sub_type of FormPost
email | FormEvents with a sub_type of FormEmail
fpd | All FpdEvents

### Examples:

### GET (index)

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions?global_master_advertiser_id=USA_1&event_params[phone_numbers]=+1243325' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```
> Response Description if query_params contains event_params


```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions?global_master_advertiser_id=USA_1' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions?global_master_advertiser_id=USA_1&event_type[]=form&event_type[]=calls' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions?global_master_advertiser_id=USA_1&tags[]=foo' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```
### Contact Interactions
**Contact**
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|id| Integer | no | id of the contact|
|first_name| String | yes | first name of the contact|
|last_name| String | yes | last name of the contact|
|display_name| String | yes | The display name of the contact interaction. This a concatination of the first name and last name if available else it is the email or ph number of the visitor|
|email| String | yes | email of the contact|
|company| String | yes | The company name for this contact|
|notes| String | yes | Notes for this contact interaction|
|title| String | yes | The title of the contact|
|preferred_contact_method| String | yes | The preferred contact method of the contact|
|phone_numbers| String | yes | phone number data. ('phone_type' phone_type of the contact, 'phone_number' the normalized number of the phone number)|
|created_at| Datetime | no | The date and time which this contact was created|

**Interaction**
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|id| Integer | no | id of the interaction|
|campaign_name| String | no | The name of the campaign that this contact interaction is attributed to|
|global_master_campaign_id| String | no | An string global master campaign id for this interaction|
|sub_type| String | yes |Sub type of the campaign|
|referrer_type| String | no | Paid, organic|
|referrer_source| String | no | Domain the visitor came from|
|influencing_campaign| String | yes | Campaign that influenced this interaction|
|created_at| Datetime | yes | The date and time which this interaction was created|
|occured_at| Datetime | yes |The date and time which this contact interaction occurred. This will usually be different than the date that the contact interaction was created.|
|channel| String | yes | The acquisition channel responsible for the contact interaction|
|event_type| String | no | The type of the contact interaction . Valid values are chat, call and form|
|external_source| String | no | External Source tells us if this interaction came to us from Capture (through the pubsub) or through the LIPS API(Zapier, FPD, Entrata etc.|
|tags| Array(String)| the tags attached to the contact interaction|
|read|boolean|No|Check if contact interaction is marked as read|
|important|boolean|No|Check if contact interaction is marked as important|
|page_url|String|No|The page_url associated with the interaction|
|archived_at | Datetime | yes | The date of the archived interaction|


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

**Booking**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|booking_id| String | no | the external id of the booking event |
|extra_fields| object | yes |extra fields|

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
    "contact_interactions": [
        {
            "id": 4314774,
            "campaign_name": "LSS Test Campaign",
            "global_master_campaign_id": "USA_3115232",
            "sub_type": "Call"
            "channel": "search",
            "referrer_type": "UNKNOWN",
            "referrer_source": "PAID",
            "influencing_campaign": "",
            "notes": "some notes",
            "occurred_at": "2021-09-06T16:16:08.000Z",
            "channel": "search",
            "external_source": "capture",
            "important": true,
            "read": true,
            "tags": [
                "search",
                "call"
            ],
           "page_url": "www.example.com",
            "contact": {
                "id": 2197617,
                "first_name": "S",
                "last_name": "ELIGIO",
                "display_name": "S ELIGIO",
                "email": null,
                "company": null,
                "title": null,
                "preferred_contact_method": "email",
                "phone_numbers": [
                    {
                        "phone_type": "work",
                        "phone_number": "+13184227453"
                    }
                ],
                "created_at": "2021-09-04T01:21:27.394Z"
            },
            "call": {
                "call_recording_url": "https://webservice.telmetrics.com/filedownload.ashx/a6426573-5120-4077-9d71-ac5e7f65bcc220384.mp3",
                "call_duration": 44
            }
        },
        {
            "id": 3871993,
            "campaign_name": "LSS Test Campaign",
            "global_master_campaign_id": "USA_3115232",
            "sub_type": "Call"
            "channel": "search",
            "referrer_type": "UNKNOWN",
            "referrer_source": "PAID",
            "influencing_campaign": "",
            "notes": "some notes",
            "occurred_at": "2021-08-25T14:50:34.000Z",
            "channel": "search",
            "external_source": "capture",
            "important": false,
            "read": true,
            "tags": [
                "capture",
                "call"
            ],
            "contact": {
                "id": 2197617,
                "first_name": "S",
                "last_name": "ELIGIO",
                "display_name": "S ELIGIO",
                "email": null,
                "company": null,
                "title": null,
                "phone_numbers": [
                    {
                        "phone_type": "work",
                        "phone_number": "+13184227453"
                    }
                ],
               "created_at": "2021-09-04T01:21:27.394Z"
            },
            "call": {
                "call_recording_url": "https://webservice.telmetrics.com/filedownload.ashx/a6426573-5120-4077-9d71-ac5e7f65bcc220384.mp3",
                "call_duration": 44
            }
        }
    ],
    "page": 1,
    "total_pages": 1,
    "per_page": 25,
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
```
### GET (SHOW)
Show a single contact interaction by id

#### Examples:
```

curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions/1001
```
#### Example Response

```json
{
    "id": 1001,
    "campaign_name": "Boats | Boats | Boats",
    "global_master_campaign_id": "USA_1234567",
    "sub_type": "Call",
    "referrer_type": "UNKNOWN",
    "referrer_source": "PAID",
    "influencing_campaign": "",
    "notes": "some notes",
    "occurred_at": "2022-02-18T15:14:42.000Z",
    "channel": null,
    "external_source": "capture",
    "event_type": "CallEvent",
    "important": false,
    "read": false,
    "contact": {
        "id": 2000,
        "first_name": "Unknown",
        "last_name": null,
        "display_name": "Unknown Somebody",
        "email": null,
        "company": null,
        "title": null,
        "phone_numbers": [],
        "created_at": "2022-02-23T13:35:56.855Z"
    },
    "call": {
        "recording_url": "",
        "duration": 5
    }
}
```
### PUT (UPDATE)

Update an existing contact_interaction.

|Parameter|Type|Required|Description|
|---|---|---|---|
|read|boolean|No|Check if contact interaction is marked as read|
|important|boolean|No|Check if contact interaction is marked as important|
|notes|String|No|Notes for the contact interaction


Fields marked as required aren't necessarily required in the request, but are required on the resulting object.

#### Examples:

```
curl --location --request PUT 'https://data-connect-lips.gannettdigital.com/contact_interactions/1' \
--header 'Authorization: {auth_token}' \
--header 'Content-Type: application/json' \
--data-raw '
    {
        "contact_interaction": { "important": false, "read": true, "notes": "some notes"}
    }
'
```

example success response (HTTP status 2xx):

```
{
    "contact_interaction": "successfully updated!"
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

### DELETE (destroy)

```
curl -L -X DELETE 'https://data-connect-lips.gannettdigital.com/contacts_interactions/1' \
-H 'Authorization: 1b01Secret'
```

A successful response will have no response body and return a 200 HTTP response code.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

### PUT (unarchive)

```
curl -L -X PUT 'https://data-connect-lips.gannettdigital.com/contacts_interactions/1/unarchive' \
-H 'Authorization: 1b01Secret'
```

A successful response will have no response body and return a 200 HTTP response code.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.