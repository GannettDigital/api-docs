### **Events**
<a name="lips_events"></a>

# Events API

Also referred to as "contact interactions", *events* are activities associated with a contact.  The event may be a call, a form post, or a chat event recorded by capture.  It could also be created by posting to this API.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /fpd_events |
| GET `index` | /fpd_events/#id |
| GET `index` | /contacts/#id/events |
| POST `create` | /fpd_events |

## Get Events for specific event type

### GET FPD Events (Index)

### Usage

### Parameters
When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`global_master_advertiser_id`|Yes|Restrict results to one or more specific gmaid|
|`per_page`|No|Restrict number of events in result <br><b>Default value: 25</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|

### Response Description

| Field Name | Datatype | Description |
|---|---|---|
|`id`| integer | id of the event|
|`call_recording_url`| String | url used to match the contact|
|`email`| String | email used to match the contact|
|`phone_number`| String | normalized phone number used to match the contact|
|`page`| Integer | the number of the events page|
|`per_page`| Integer | the number of events in each page|
|`total_pages`| Integer | total number of pages|

#### Example Curl

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/fpd_events?global_master_advertiser_id=USA_1S' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

#### Example Response

```javascript
{
    "fpd_events": [
        {
            "id": 3617,
            "call_recording_url": null,
            "phone_number": "+14406677553",
            "email": null
        }
    ],
    "page": 1,
    "total_pages": 1,
    "per_page": 25
}
```

## Show Single Event

### Usage

### Parameters

| Parameter | Required | Description |
|---|---|---|
|`id`|Yes|The id of the record to retrieve|

### Response Description

| Field Name | Datatype | Description |
|---|---|---|
|`id`| integer | id of the event|
|`event_type`| string | type of the event |
|`visitor_id`| string | capture visitor_id |
|`occurrence_time`| string | Time the event occurred |
|`first_name`| string | First Name of the contact |
|`last_name`| string | Last Name of the contact |
|`address`| string | Street address of the contact |
|`city`| string | City of the contact |
|`state`| string | State/province of the contact |
|`postal`| string | Zip Code of the contact |
|`email`| string | Email address of the contact |
|`phone_numbers`|Array|phone number data. ('phone_type' phone_type of the contact, 'normalized_number' the normalized number of the phone number, 'number' the number of the phone number record, 'created_at' when the phone number was created, 'updated_at' when the phone number was updated )|
|`master_capaign_id`| string | ID of the Campaign that generated the event |
|`master_advertiser_id`| string | ID of the Advertiser the event is for |
|`influencing_campaign_id`| string | ID of the Campaign that influenced the event |
|`wpc_id`| string | ID of the Web Puiblisher Campaign that generated the event |
|`influencing_wpc_id`| string | ID of the Web Puiblisher Campaign that influenced the event |
|`referrer_type`| string | Capture referrer type for the event |
|`page_url`| string | Page URL for the event |

#### Example Curl

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/fpd_events/3636' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

#### Example Response

```javascript
{
    "event": {
        "id": 3636,
        "event_type": "FpdEvent",
        "visitor_id": null,
        "occurrence_time": "2021-01-08T00:00:00.000Z",
        "first_name": null,
        "last_name": null,
        "address": null,
        "city": null,
        "state": null,
        "postal": null,
        "email": null,
        "phone_numbers": [
            {
                "phone_type": "work",
                "phone_number": "+14406677553"
            }
        ],
        "master_campaign_id": null,
        "master_advertiser_id": 186133,
        "influencing_campaign_id": null,
        "wpc_id": null,
        "influencing_wpc_id": null,
        "referrer_type": null,
        "referrer_source": null,
        "page_url": null
    }
}
```

## GET All Events for a given contact (Index)

### Usage

### Parameters
When using this GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`per_page`|No|Restrict number of events in result <br><b>Default value: 25</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|

### Response Description

| Field Name | Datatype | Description |
|---|---|---|
|`events`| array | array of events objects for the given contact |
|`page`| Integer | the number of the events page|
|`per_page`| Integer | the number of events in each page|
|`total_pages`| Integer | total number of pages|

##### Event Object:

| Field Name | Datatype | Description |
|---|---|---|
|`id`| integer | id of the event|
|`event_type`| string | type of the event |
|`visitor_id`| string | capture visitor_id |
|`occurrence_time`| string | Time the event occurred |
|`first_name`| string | First Name of the contact |
|`last_name`| string | Last Name of the contact |
|`address`| string | Street address of the contact |
|`city`| string | City of the contact |
|`state`| string | State/province of the contact |
|`postal`| string | Zip Code of the contact |
|`email`| string | Email address of the contact |
|`phone_numbers`|Array|phone number data. ('phone_type' phone_type of the contact, 'normalized_number' the normalized number of the phone number, 'number' the number of the phone number record, 'created_at' when the phone number was created, 'updated_at' when the phone number was updated )|
|`master_capaign_id`| string | ID of the Campaign that generated the event |
|`master_advertiser_id`| string | ID of the Advertiser the event is for |
|`influencing_campaign_id`| string | ID of the Campaign that influenced the event |
|`wpc_id`| string | ID of the Web Puiblisher Campaign that generated the event |
|`influencing_wpc_id`| string | ID of the Web Puiblisher Campaign that influenced the event |
|`referrer_type`| string | Capture referrer type for the event |
|`page_url`| string | Page URL for the event |

If `event_type` is FpdEvent, the following fields are also returned:

| Field Name | Datatype | Description |
|---|---|---|
|`call_recording_url`| String | url used to match the contact|
|`phone_number`| String | normalized phone number used to match the contact|

If `event_type` is CallEvent, the following fields are also returned:

| Field Name | Datatype | Description |
|---|---|---|
|`call_recording_url`| String | url used to match the contact|
|`phone_number`| String | normalized phone number used to match the contact|
|`call_duration` | String | duration of call in seconds |
|`call_recording_url` | String | call recording url |
|`caller_number` | String | Phone Number of the caller |
|`dialed_number` | String | Phone Number the caller dialed |
|`target_number` | String | Phone Number the call was redirected to|

If `event_type` is ChatEvent, the following fields are also returned:

| Field Name | Datatype | Description |
|---|---|---|
|`transcript`| String | Transcript of the chat|

If `event_type` is FormEvent, the following fields are also returned:

| Field Name | Datatype | Description |
|---|---|---|
|`referring_url` |String| URL of the referring page|
|`cvt_type` |String| CVT Type|
|`entry_type` |String| CVT Entry Type |
|`page_cvt_id` |String| Page CVT ID |
|`content` |String| Content of for fill (truncated to 80 chars) |
|`extra_fields` |String| JSON of "extra fields" present on the form |

#### Example Curl

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contacts/2626/events?page=1&per_page=2' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

#### Example Response

```javascript
{
    "events": [
        {
            "id": 3607,
            "event_type": "CallEvent",
            "visitor_id": null,
            "occurrence_time": "2021-08-09T07:10:43.000Z",
            "first_name": "Nedra",
            "last_name": "Alston",
            "address": null,
            "city": "Sanford",
            "state": "SC",
            "postal": "29730",
            "email": null,
            "phone_numbers": [
                {
                    "phone_type": "work",
                    "phone_number": "+14406677553"
                }
            ],
            "master_campaign_id": 2425824,
            "master_advertiser_id": 186133,
            "influencing_campaign_id": null,
            "wpc_id": null,
            "influencing_wpc_id": null,
            "referrer_type": "UNKNOWN",
            "referrer_source": "PAID",
            "page_url": null,
            "call_duration": 372,
            "call_recording_url": "https://app.callcap.com/recording/14024_89_08_09_2021_09_04_31_306.mp3",
            "caller_number": "440-667-7553",
            "dialed_number": "803-888-4555",
            "target_number": "951-336-2456"
        },
        {
            "id": 3636,
            "event_type": "FpdEvent",
            "visitor_id": null,
            "occurrence_time": "2021-01-08T00:00:00.000Z",
            "first_name": null,
            "last_name": null,
            "address": null,
            "city": null,
            "state": null,
            "postal": null,
            "email": null,
            "phone_numbers": [
                {
                    "phone_type": "work",
                    "phone_number": "+14406677553"
                }
            ],
            "master_campaign_id": null,
            "master_advertiser_id": 186133,
            "influencing_campaign_id": null,
            "wpc_id": null,
            "influencing_wpc_id": null,
            "referrer_type": null,
            "referrer_source": null,
            "page_url": null,
            "call_recording_url": null,
            "phone_number": "+14406677553"
        }
    ],
    "page": 1,
    "total_pages": 1,
    "per_page": 2
}
```
## POST Event for specific event type

### POST FPD Event (Create)

### Usage

Call this endpoint to create an FPD event.  An attempt will be made to match the event to an existing contact using the provided parameters.  If no contact is found, one may be created, unless the value of the `skip_contact` parameter is "true".  At least one of these params must be provided for matching purposes:  `call_recording_url`, `email`, or `phone_number`.

### Parameters
When using the POST FPD Event create method, the following paramters are allowed:

| Parameter | Required | Description |
|---|---|---|
|`global_master_advertiser_id`|Yes|Create the event for this advertiser|
|`call_recording_url`|No|Match to a contact using this call_recording url|
|`external_id`|No|The external id of the event, that's being used in other systems|
|`email`|No|Match to a contact using this email address|
|`phone_number`|No|Match to a contact using this phone number|
|`occurrence_time`|No|Time the event occurred|
|`skip_contact`|No|If "true", do not create a contact if no matching contact is found|

### Response Description

| Field Name | Datatype | Description |
|---|---|---|
|`event`| Object | Event Object (see above)|
|`contact_id`| Integer | if of the contact if there was a match, or one was created|

#### Example Curl

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/fpd_events' \
  --data-raw '{
      "global_master_advertiser_id": "USA_186133",
      "skip_contact": "true",
      "phone_number": "+14406677553"
  }'
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

#### Example Response

```javascript
{
    "event": {
        "id": 3669,
        "event_type": "FpdEvent",
        "visitor_id": null,
        "occurrence_time": "2021-01-09T00:00:00.000Z",
        "first_name": null,
        "last_name": null,
        "address": null,
        "city": null,
        "state": null,
        "postal": null,
        "email": null,
        "phone_numbers": [
            {
                "phone_type": "work",
                "phone_number": "+14406677553"
            }
        ],
        "master_campaign_id": null,
        "master_advertiser_id": 186133,
        "influencing_campaign_id": null,
        "wpc_id": null,
        "influencing_wpc_id": null,
        "referrer_type": null,
        "referrer_source": null,
        "page_url": null,
        "contact_id": 2626
    }
}
```
