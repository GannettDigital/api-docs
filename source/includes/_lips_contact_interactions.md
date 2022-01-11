### **Contact Interactions**
<a name="lips_contact_interactions"></a>
## Contact Interactions API

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /contact_interactions? |
| PUT `update` | /contact_interactions/:id |

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
|`per_page`|No|Restrict number of contacts in result <br><b>Default value: 25</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|
|`sort_by`|No|Specifies what column to sort by. Valid columns are: important<br><b>Default value: occurred_at</b> |
|`sort_dir`|No|Specifies the sort direction. Can be either asc or desc <br><b>Default value: asc</b> |
|`event_type[]`|No|See chart below|

> * Results are always sorted by `occurred_at DESC`, if we provide `sort_by` and `sort_dir` it will order by params first and then by `occurred_at DESC`.  Default is `occurred_at DESC`.
#### Event Type Filter
Event Type | Explanation
-- | --
call | All CallEvents
chat | All ChatEvents
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
|title| String | yes | The title of the contact|
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
|external_source| String | no | External Source tells us if this interaction came to us from FPD, Yardi etc|
|read|boolean|No|Check if contact interaction is marked as read|
|important|boolean|No|Check if contact interaction is marked as important|

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

**Call**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|call_recording_url| String | yes | Only included when interaction is call|
|call_duration| Integer | yes | Length of call in seconds -- only included when interaction is call|

**Form**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|full_message| string | yes |full message of the form event|
|message| string | yes| parsed message|
|extra_fields| object | yes |extra fields|

**Chat**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
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
            "occurred_at": "2021-09-06T16:16:08.000Z",
            "channel": "search",
            "external_source": "capture",
            "important": true,
            "read": true,
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
            "important": false,
            "read": true,
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
       "call_events": 2
       "form_events": 0
       "chat_events": 0
    }
}
```

#### PUT Contact Interaction

Update an existing contact_interaction.

|Parameter|Type|Required|Description|
|---|---|---|---|
|read|boolean|No|Check if contact interaction is marked as read|
|important|boolean|No|Check if contact interaction is marked as important|


Fields marked as required aren't necessarily required in the request, but are required on the resulting object.

example request: 

```
curl --location --request PUT 'https://data-connect-lips.gannettdigital.com//contact_interactions/1' \
--header 'Authorization: {auth_token}' \
--header 'Content-Type: application/json' \
--data-raw '
    {
        "contact_interaction": { "important": false, "read": true}
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