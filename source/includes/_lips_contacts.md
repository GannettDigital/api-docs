### **Contacts**

## Contacts API

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /contacts? |

### Usage
Use GET to retrieve advertisers that match the query params.

### Parameters

When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`event_params`|Yes (in first case)|JSON object with `duration`, `recording_url` and `phone_number` keys to match on|
|`event_params[duration]`|Yes|Integer that restricts the contacts to one or more based on call_duration|
|`event_params[recording_url]`|Yes|String that restricts the contacts to one or more based on recording_url|
|`event_params[phone_number]`|Yes|Array of max 15 elements that restricts the contacts to one or more based on the phone number elements|
|`global_master_advertiser_id`|No|Restrict results to one or more specific gmaid|

#### If you use the event_params parameter, the ones below won't be considered from the API
### Examples:

### GET (index)

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contacts?global_master_advertiser_id=USA_1&event_params[duration]=20&event_params[recording_url]=url&event_params[phone_number][]=1234' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

> Response Description if query_params contains match_params

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


#### Example Response

```javascript
{
    "contacts": [
        {
            "id": 1,
            "master_advertiser_id": 1,
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
            "url": "url",
            "phone_numbers": [
                {
                    "phone_type": "smart",
                    "normalized_number": "+1234",
                    "number": "1234",
                    "created_at": "2021-07-16T12:43:32.000Z",
                    "updated_at": "2021-07-16T12:43:32.000Z"
                }
            ]
        }
    ]
}

