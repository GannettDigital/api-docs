## Contact Interactions
<a name="lips_contact_interactions"></a>

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
|`external_id`|No|Filters on an external_id registered by an external app. Should be used in conjunction with external_app_id|
|`external_app_id`|No|Filters on an e external app. Should be used in conjunction with external_id|


> * Results are always sorted by `occurred_at DESC`, if we provide `sort_by` and `sort_dir` it will order by params first and then by `occurred_at DESC`.  Default is `occurred_at DESC`. Searching by `channel` will remove any event without a `wpc_id`.
#### Event Type Filter
Event Type | Explanation
-- | --
booking | All BookingEvents
call | All CallEvents
chat | All ChatEvents
chat_other | ChatEvents with a lead type of other. Ignored when used in combination with `chat`
chat_sales | ChatEvents with a lead_type of sales. Ignored when used in combination with `chat`
chat_service | ChatEvents with a lead_type of service. Ignored when used in combination with `chat`
dyipost | FormEvents with a sub_type of DIYFORMPOST
email | FormEvents with a sub_type of FormEmail
facebook | FormEvents with a sub_type of Facebook
form | FormEvents with a sub_type of FormPost
fpd | All FpdEvents
lsa | All LsaEvents
promotion | FormEvents with a sub_type of Promotion
sms | FormEvents with a sub_type of SMSRequest

### Examples:

### GET (index)

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions?global_master_advertiser_id=USA_1&event_params[phone_numbers]=+1243325' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```
> Response Description if query_params contains event_params


```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions?global_master_advertiser_id=USA_1' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions?global_master_advertiser_id=USA_1&event_type[]=form&event_type[]=calls' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```


```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions?global_master_advertiser_id=USA_1&tags[]=foo' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```
### Contact Interactions
**Contact**
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|id| Integer | no | id of the contact|
|first_name| String | yes | first name of the contact|
|last_name| String | yes | last name of the contact|
|display_name| String | yes | The display name of the contact interaction. This a concatination of the first name and last name if available else it is the email or phone number of the visitor|
|email| String | yes | email of the contact|
|phone_numbers| String | yes | phone number data. ('phone_type' phone_type of the contact, 'phone_number' the normalized number of the phone number)|
|created_at| Datetime | no | The date and time which this contact was created|

**Interaction**
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|id| Integer | no | id of the interaction|
|campaign_name| String | yes | The name of the campaign that this contact interaction is attributed to|
|global_master_advertiser_id| String | no | The global master advertiser id for this interaction ('USA_123') |
|global_master_campaign_id| String | yes | The global master campaign id for this interaction  ('USA_567') |
|master_advertiser_id| Integer | no | The master advertiser id for this interaction (123) |
|master_campaign_id| Integer | yes | The master campaign id for this interaction (567) |
|platform_id| Integer | yes | The numeric identifier of the platform for this interaction (Valid platform ids are: 1 (`USA`), 2 (`CAN`), 3 (`AUS`), 6 (`GBR`) and 7 (`TEST`)) |
|platform_id| Integer | yes | The string identifier of the platform for this interaction |
|sub_type| String | yes |Sub type of the campaign|
|referrer_type| String | no | Paid, organic|
|referrer_source| String | no | Domain the visitor came from|
|influencing_campaign| String | yes | Campaign that influenced this interaction|
|created_at| Datetime | yes | The date and time which this interaction was created|
|occured_at| Datetime | yes |The date and time which this contact interaction occurred. This will usually be different than the date that the contact interaction was created.|
|channel| String | yes | The acquisition channel responsible for the contact interaction|
|event_type| String | no | The type of the contact interaction . Valid values are chat, call, form and booking|
|external_source| String | no | External Source tells us if this interaction came to us from Capture (through the pubsub) or through the LIPS API(Zapier, FPD, Entrata etc.|
|page_url|String|No|The page_url associated with the interaction|
|archived_at | Datetime | yes | The date of the archived interaction|


**Totals**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|events| Integer | no | totals of events|
|call_events| Integer | no | totals of call events|
|form_events| Integer | no | totals of form events|
|chat_events| Integer | no | totals of chat events|
|booking_events| Integer | no | totals of unread booking events|
|lsa_events| Integer | no | totals of unread lsa events|

**Unread**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|events| Integer | no | totals of unread events|
|call_events| Integer | no | totals of unread call events|
|form_events| Integer | no | totals of unread form events|
|chat_events| Integer | no | totals of unread chat events|
|booking_events| Integer | no | totals of unread booking events|
|lsa_events| Integer | no | totals of unread lsa events|

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

only included when interaction is call

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|call_recording_url| String | yes | Call recording URL.  Use this to access the call recording. |
|call_duration| Integer | yes | Length of call in seconds |
|target_number| String | yes | In instances where a client has phone replacement tracking provisioned, the target_phone value is the phone number that was displayed on the client website. |
|caller_number| String | yes | The caller's phone number |
|dialed_number| String | yes | The dialed phone number |

**Booking**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|booking_id| String | no | the external id (appointment token) of the Appointment. Used Internally to retrieve additional data about the Appointment. |
|extra_fields| object | yes |extra fields|

**Lsa**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|charged| integer | no |Could be one or zero.|
|customer_name| string | yes| Name of the customer.|
|lead_type| string | yes |Could be one of `MESSAGE`, `PHONE_CALL`, `BOOKING`|
|lead_price| integer | yes |The price of lead|

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
|lead_type| string | yes |Could be one of `Sales`, `Service`, `Other`, `Active`, `Lead`|
|provider| string | yes |chat provider(if missing assume Apex)|
|referring_url| string | yes |URL of the referring page|
|transcript| object | yes |object of chat transcript|

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
            "occurred_at": "2021-09-06T16:16:08.000Z",
            "channel": "search",
            "external_source": "capture",
           "page_url": "www.example.com",
            "contact": {
                "first_name": "Tinisha",
                "last_name": "Champlin",
                "display_name": "Tinisha Champlin",
                "email": "cameron@kshlerin-anderson.example",
                "phone_numbers": [
                    {
                        "phone_type": "work",
                        "phone_number": "+19893643647 x241"
                    }
                ]
            },
            "call": {
                "recording_url": "http://google.com/marinda.schuppe.mp3"
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
            "occurred_at": "2021-08-25T14:50:34.000Z",
            "channel": "search",
            "external_source": "capture",
            "contact": {
                "first_name": "Shavonda",
                "last_name": "Hilpert",
                "display_name": "Shavonda Hilpert",
                "email": "bruno_ohara@schaefer.example"
            },
            "chat": {
                "lead_type": "Service",
                "referring_url": "http://fifa.com/catarina",
                "transcript": []
            }
        }
    ],
    "page": 1,
    "total_pages": 1,
    "per_page": 25,

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