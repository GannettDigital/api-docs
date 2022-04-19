### **Contacts**
<a name="lips_contacts"></a>
## Contacts API

### Resource Overview

| Route | Method | URI Format |
|---|---|---|
| `index` | GET | /contacts |
| `show` | GET | /contact/[id] |
| `create` | POST | /contacts |
| `update` | PUT | /contact/[id] |
| `destroy` | DELETE | /contact/[id] |
| `show` | GET | /contacts/[id]/events |

#### GET Contacts(index)

##### Usage
Use GET to retrieve contacts that match the query params.

##### Parameters
When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`event_params[recording_url]`|Yes|String that restricts the contacts to one or more based on recording_url|
|`event_params[phone_numbers]`|Yes|String that restricts the contacts to one or more based on phone number|
|`global_master_advertiser_id`|Yes|Restrict results to one or more specific gmaid|
|`page_size`|No|Restrict number of contacts in result <br><b>Default value: 25</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|


If the event_params parameter is present, the response will also contain recording_url and duration.

##### Examples:

##### GET (index)

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contacts?global_master_advertiser_id=USA_1&event_params[recording_url]=url' -H 'Authorization: token 1b01Secret'
```
> Response Description if query_params contains event_params

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contacts?global_master_advertiser_id=USA_1' -H 'Authorization: token 1b01Secret'
```

The body of the API response will contain metadata and a JSON array of contact objects.

*MetaData*

| Field Name | Description |
|---|---|
| page | Current page number being displayed |
| total_pages | Total number of pages of results |
| per_page |  Maximum results per page |

*Contact*

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|first_name| String | no | first name of the contact|
|last_name| String | no | last name of the contact|
|email| String | no | email of the contact|
|address1| String | no | address of the contact|
|address2| String | no | address of the contact|
|city| String | no | city of the contact|
|state| String | no | state of the contact|
|postal| String | no | zip code of the contact|
|country| String | no | country code of the contact|
|duration| Integer | no | the phone call duration of the contact|
|url| String | no | the recording_url of the contact's call|
|phone_number|Array|phone number data. ('phone_type' phone_type of the contact, 'normalized_number' the normalized number of the phone number, 'number' the number of the phone number record, 'created_at' when the phone number was created, 'updated_at' when the phone number was updated )|
|first_party_data | boolean | This contact has been flagged as being "first party data"|
|status | String | Status of the contact|
|archived_at | Datetime | The date of the archived contact|
|page| Integer | no | the number of the contacts page|
|page_size| Integer | no | the number of the size of the contacts array|
|total_events| Integer | no | the number of contacts events|
|total_call_event| Integer | no | the number of contacts call events|
|total_fpd_event| Integer | no | the number of contacts fpd events|
|total_form_event| Integer | no | the number of contacts form events|
|total_chat_event| Integer | no | the number of contacts chat events|
|total_pages| Integer | no | the number of contacts array total pages|

##### Example Response

```javascript
{
    "contacts": [
        {
            "id": 1,
            "master_advertiser_id": 1,
            "platform": "USA",
            "first_name": "M",
            "last_name": "Example",
            "address1": "asd",
            "address2": "dsa",
            "city": "Maryland",
            "state": "NJ",
            "postal": "1234",
            "country": "US",
            "email": "mail@mail.com",
            "duration": 20,
            "recording_url": "url",
            "tags": [
                "first",
                "contact"
            ],
            "phone_numbers": [
                {
                    "phone_type": "smart",
                    "normalized_number": "+1234",
                    "number": "1234",
                    "created_at": "2021-07-16T12:43:32.000Z",
                    "updated_at": "2021-07-16T12:43:32.000Z"
                }
            ],
            "status": null,
            "archived_at": null,
            "first_party_data": false
            "occurrence_time": "2022-02-23T14:53:03.000Z",
            "total_events": 1,
            "total_call": 1,
            "total_chat": 0,
            "total_form": 0,
            "total_fpd": 0
        }
    ],
    "page": 1,
    "total_pages": 1,
    "per_page": 25
}
```

#### GET Contact(show)

##### Usage
Use GET to retrieve single contact corresponding with the provided id.

##### Parameters
When using the GET show method, the only parameter is the contact id.  If the contact with the provided id is found, it will be returned.  If not, a 404 response will be returned.  Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

##### Examples:

##### GET (show)
```
curl -L -X GET 'https://data-connect-lips.gannettdigital.com/contacts/1' -H 'Authorization: 1b01Secret'
```

##### Example Response

```javascript
{
    "contact": {
        "id": 1,
        "master_advertiser_id": 1,
        "platform_id": 1,
        "platform": "USA",
        "first_name": "M",
        "last_name": "Example",
        "address1": "asd",
        "address2": "dsa",
        "city": "Maryland",
        "state": "NJ",
        "postal": "1234",
        "country": "US",
        "email": "mail@mail.com",
        "tags": [
            "first",
            "contact"
        ],
        "phone_numbers": [
            {
                "phone_type": "work",
                "normalized_number": "+15558675309",
                "number": "5558675309",
                "created_at": "2021-07-16T12:43:32.000Z",
                "updated_at": "2021-07-16T12:43:32.000Z"
            }
        ],
        "status": null,
        "archived_at": null,
        "first_party_data": false
        "occurrence_time": "2022-02-23T14:53:03.000Z",
        "total_events": 1,
        "total_call": 1,
        "total_chat": 0,
        "total_form": 0,
        "total_fpd": 0
    }
}
```

#### POST Contact(create)

##### Usage
Used to create a new contact.  A contact is uniquely identified for a single advertiser by either their email address or one of their phone numbers.

##### Parameters
The POST body is simply a contact object without an id.

##### Examples:

##### POST (create)

```
curl -L -X POST 'https://data-connect-lips.gannettdigital.com/contacts' \
-H 'Authorization: 1b01Secret' \
-H 'Content-Type: application/json' \
--data-raw '{
    "contact": {
        "master_advertiser_id": 1,
        "platform_id": 1,
        "platform": "USA",
        "first_name": "M",
        "last_name": "Example",
        "address1": "asd",
        "address2": "dsa",
        "city": "Maryland",
        "state": "NJ",
        "postal": "1234",
        "country": "US",
        "email": "mail@mail.com",
        "phone_numbers": [
            {
                "phone_type": "work",
                "number": "5558675309"
            }
        ]
    }
}'
```
A successful response will simply echo the contact (with an id) and return a 200 HTTP response code.

The **master_advertiser_id** and **platform_id** parameters are required.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

For the above example, if the email address `mail@mail.com` was already associated with a contact belonging to USA_1, the response would have an HTTP status code of 422 with the following response body
```
[
    {
        "attribute": "email",
        "message": "must be unique"
    }
]
```

If the phone number and email address were already associated with a contact belonging to USA_1, the response would have an HTTP status code if 422 qith the following response body
```
[
    {
        "attribute": "email",
        "message": "must be unique"
    },
    {
        "attribute": "phone_number",
        "message": "must be unique"
    }
]
```

#### PUT Contact(update)

##### Usage
Used to create a update an existing contact.  A contact is uniquely identified for a single advertiser by either their email address or one of their phone numbers.

##### Parameters
The PUT body is simply a contact object without an id.

##### Examples:

##### PUT (update)

```
curl -L -X PUT 'http://localhost:3000/contacts/1' \
-H 'Authorization: 1b01Secret' \
-H 'Content-Type: application/json' \
--data-raw '{
    "contact": {
        "first_name": "M",
        "last_name": "Example",
        "address1": "asd",
        "address2": "dsa",
        "city": "Maryland",
        "state": "NJ",
        "postal": "1234",
        "country": "US",
        "email": "mail@mail.com",
        "phone_numbers": [
            {
                "phone_type": "work",
                "number": "5558675309"
            }
        ]
    }
}'
```
A successful response will simply echo the contact (with an id) and return a 200 HTTP response code.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### DELETE Contact(destroy)

##### Usage
Used to delete an existing contact.

##### Parameters
The DELETE endpoint doesn't accept any request parameters other than the contact id in the request URL.

##### Examples:

##### DELETE (destroy)

```
curl -L -X DELETE 'https://data-connect-lips.gannettdigital.com/contacts/63807' \
-H 'Authorization: 1b01Secret'
```

A successful response will have no response body and return a 200 HTTP response code.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

## GET all Events for a given contact (show)

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
|`provider`| String | The chat provider |
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
### Like the format of the `contacts/[id]/events` response? The Data Connect team would be happy to discuss creating a new `events` endpoint that combines the functionality of the `contact_interactions` endpoint but responds using this format.
