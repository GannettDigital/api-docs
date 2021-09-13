### **Contacts**
<a name="lips_contacts"></a>
## Contacts API

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /contacts? |

### Usage
Use GET to retrieve contacts that match the query params.

### Parameters
When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
<internal>
|`event_params[recording_url]`|Yes|String that restricts the contacts to one or more based on recording_url|
|`event_params[phone_number]`|Yes|String that restricts the contacts to one or more based on phone number|
</internal>
|`global_master_advertiser_id`|Yes|Restrict results to one or more specific gmaid|
|`page_size`|No|Restrict number of contacts in result <br><b>Default value: 25</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|

<internal>

#### If the event_params parameter is present, the response will also contain recording_url and duration.
</internal>

### Examples:

### GET (index)
<internal>

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contacts?global_master_advertiser_id=USA_1&event_params[recording_url]=url' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```
> Response Description if query_params contains event_params


```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contacts?global_master_advertiser_id=USA_1' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

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
|page| Integer | no | the number of the contacts page|
|page_size| Integer | no | the number of the size of the contacts array|
|total_pages| Integer | no | the number of contacts array total pages|


#### Example Response

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
            "phone_numbers": [
                {
                    "phone_type": "smart",
                    "normalized_number": "+1234",
                    "number": "1234",
                    "created_at": "2021-07-16T12:43:32.000Z",
                    "updated_at": "2021-07-16T12:43:32.000Z"
                }
            ],
            "first_party_data": false
        }
    ],
    "page": 1,
    "total_pages": 1,
    "per_page": 25
}
