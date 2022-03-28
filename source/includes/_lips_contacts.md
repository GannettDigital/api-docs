### **Contacts**
<a name="lips_contacts"></a>
## Contacts API

### Resource Overview

| Route | Method | URI Format |
|---|---|---|
| `index` | GET | /contacts |
| `show` | GET | /contacts/[id] |
| `create` | POST | /contacts |
| `update` | PUT | /contacts/[id] |
| `destroy` | DELETE | /contacts/[id] |
| `index` | GET | /contacts/[id]/events |

#### GET Contacts(index)

##### Usage
Use GET to retrieve contacts that match the query params.

##### Parameters
When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description | Possible Values
|---|---|---|---|
|`global_master_advertiser_id`|Yes|Restrict results to one or more specific gmaid|
|`event_params[recording_url]`|no|String that restricts the contacts to one or more based on recording_url|
|`event_params[phone_numbers]`|no|String that restricts the contacts to one or more based on phone number|
|`search_term`|no|String (min. length 3) used to search for contacts using a full text search across first_name, last_name, email, and phone number|Ex. `?search_term=202` returns contacts with phone nubmers `(202)-555-5555`, `+1232025678`|
|`first_char_first_name`|no|String that filters by first character in first name|`#`(starts with a digit) or one of `a-z` (case insensitive)|
|`first_char_last_name`|no|String that filters by first character in last name|`#`(starts with a digit) or one of `a-z`(case insensitive)|
|`start_date`|no|Datetime that filters contact created_at. If no end_date given acts like created_at after|
|`end_date`|no|Datetime that filters contact created_at. If no start_date given acts like created_at before|
|`tags`|no|Array of tag strings to filter by| Ex. `?tags[]=organic&tags[]=direct_site`|
|`only_archived`|no|Boolean filter to include only archived contacts|
|`sort_by`|no|Column to sort by|`created_at`, `last_event`, `last_name`, `first_name` Default value: `created_at`|
|`sort_direction`|no|Direction of sort_by|`asc`,`desc` Default value: `desc`|
|`page_size`|No|Restrict number of contacts in result|Default value: 25|
|`page`|No|Specifies which page of results to return|Default value: 1|


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
|preferred_contact_method | String | Preferred contact method of the contact|
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
            "preferred_contact_method": "mail",
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
        "preferred_contact_method": "mail",
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
        "preferred_contact_method": "email",
        "status": "pending",
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

## GET all Events for a given contact

### Usage

### Parameters
When using this GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`per_page`|No|Restrict number of events in result <br><b>Default value: 25</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|

### Response Description

See [LIPS EVENTS](https://github.com/GannettDigital/api-docs/blob/master/source/includes/_lips_events.md)
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
  "contact_interactions": [
    {
      "id": 4960,
      "sub_type": "FormPost",
      "referrer_type": "OTHER",
      "referrer_source": "ORGANIC",
      "influencing_campaign": "",
      "occurred_at": "2022-03-22T16:03:55.000Z",
      "external_source": "capture",
      "event_type": "FormEvent",
      "visitor_id": "8c8c1b23-028c-41a7-99d5-0c13e3abc23c",
      "important": false,
      "read": false,
      "tags": [],
      "form": {
        "full_message": "{}",
        "extra_fields": {
          "__requestverificationtoken": "FWR2fUuss1rm7-PFCJQlrEvzTU0PCqL2QTsB4QmWvch32lpiSYSzMQxq71se3WAeLO3q8HC1y6Ns7MX1QM_6gjt70nQ1",
          "user.userid": "44339",
          "user.address.validationattempts": "0",
          "user.optin": "false",
          "user.agreetorules": "false",
          "captcha.key": "kRbMYO74DSeNPf//J97EAuBQYuJDqAOmhQ/BlM+Kq6VIvuNnGcqmZshylkZS3VtS",
          "submit": "SUBMIT",
          "first_name": "Janis",
          "last_name": "Joplin",
          "enter_your_e-mail_address_to_begin": "jj@gmail.com",
          "address": "917 Somewhere St.",
          "city": "Newton",
          "state": "NJ",
          "zip_code": "07860",
          "phone": "(973) 670-6472",
          "date_of_birth": "4/4/1990",
          "pl_user_birthdate_month": "4",
          "pl_user_birthdate_day": "4",
          "pl_user_birthdate_year": "1990",
          "pocono_mountains,pennsylvania": "Pennsylvania",
          "earn_1_bonus_entry_\n____________________________yes,_i’d_like_to_receive_emails_with_special_offers_and_promotions_from_kalahari_resorts._you_may_opt-out_at_any_time.": "true",
          "i_have_read_and_agree_to_be_bound_by_these_________official_rules": "true",
          "captcha.value": "9LSTQR",
          "page_post_url": "https://win.kalahariresorts.com/en-us/Register"
        }
      }
    },
    {
      "id": 4926,
      "sub_type": "FormPost",
      "referrer_type": "OTHER",
      "referrer_source": "ORGANIC",
      "influencing_campaign": "",
      "occurred_at": "2022-03-22T16:03:09.000Z",
      "external_source": "capture",
      "event_type": "FormEvent",
      "visitor_id": "8c8c1b23-028c-41a7-99d5-000000000",
      "important": false,
      "read": false,
      "tags": [],
      "form": {
        "referring_url": "https://www.google.com"
        "full_message": "{}",
        "extra_fields": {
          "email": "jj@gmail.com",
          "page_post_url": "https://win.kalahariresorts.com/en-us/LoginWithEmail"
        }
      }
    }
  ],
  "page": 1,
  "total_pages": 1,
  "per_page": 25,
  "totals": {
    "events": 2,
    "call_events": 0,
    "form_events": 2,
    "chat_events": 0
  },
  "unread": {
    "events": 2,
    "call_events": 0,
    "form_events": 2,
    "chat_events": 0
  },
  "channel": {
    "display": 0,
    "search": 0,
    "social": 0,
    "chat": 0,
    "other": 0,
    "none": 2
  }
}
```

