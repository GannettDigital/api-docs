### **Tags**
<a name="lips_tags"></a>

# Tags API

Are activities associated with a contact or contact interaction. The tag is a string that is attached to a given contact or interaction. It could also be created by posting to this API.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /tags |
| GET `index` | /contact_interactions/#id/tags |
| GET `index` | /contacts/#id/tags |
| POST `create` | /tags |
| POST `create` | /contact_interactions/#id |
| POST `create` | /contacts/#id |
| PUT `update` | /tags/'tag' |
| DELETE `destroy` | /tags/'tag' |
| DELETE `destroy` | /contact_interactions/#id/tags/'tag' |
| DELETE `destroy` | /contacts/#id/tags/'tag' |


## GET All Tags (Index)
### Usage
When using the GET tags index method, the following paramters are allowed:

| Parameter | Required | Description |
|---|---|---|
|`global_master_advertiser_id`|Yes|The gmaid, that the tags will be associated with|
|`tags`|No|Filter parameter to show particular tags|

### Response Description

| Field Name | Datatype | Description |
|---|---|---|
|`tags`| array | array of tag objects for a given global_master_advertiser_id |
|`global_master_advertiser_id`| string | the global master_advertiser associated with the tags

##### Tag Object:

| Field Name | Datatype | Description |
|---|---|---|
|`name`| string | Name of the tag |
|`counts`| object | Different entity counts of the tag (contacts count, contact_interaction count, etc.) |

#### Example Curl

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/tags?global_master_advertiser_id=TEST_1&tags[]=Third' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
``` 

#### Example Response

```javascript
{
    "tags": [
        {
            "name": "Third",
            "counts": {
                "contact_interactions": 1,
                "contacts": 0
            }
        }
    ],
    "global_master_advertiser_id": "TEST_1"
}
```

## POST Tag

### Usage

Call this endpoint to create a tag for a given gmaid

### Parameters
When using the POST Tags create method, the following paramters are allowed:

| Parameter | Required | Description |
|---|---|---|
|`global_master_advertiser_id`|Yes|The gmaid, that the tags will be associated with|
|`tags`|Yes|The tags that will be associated with the global_master_advertiser_id|

### Response Description

| Field Name | Datatype | Description |
|---|---|---|
|`tags`| array | array of tag objects for a given global_master_advertiser_id |
|`global_master_advertiser_id`| string | the global master_advertiser associated with the tags

##### Tag Object:

| Field Name | Datatype | Description |
|---|---|---|
|`name`| string | Name of the tag |
|`counts`| object | Different entity counts of the tag (contacts count, contact_interaction count, etc.) |

#### Example Curl

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/tags' \
  --data-raw '{
      "tags": ['first', 'second'],
      "global_master_advertiser_id": "TEST_1"
  }'
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

#### Example Response

```javascript
{
    "tags": [
        {
            "name": "first",
            "counts": {
                "contact_interactions": 0,
                "contacts": 0
            }
        },
        {
            "name": "second",
            "counts": {
                "contact_interactions": 0,
                "contacts": 0
            }
        }
    ],
    "global_master_advertiser_id": "TEST_1"
}
```

## PUT Tag

### Usage

Call this endpoint to update a tag for a given gmaid

### Parameters
When using the PUT Tag updated method, the following paramters are allowed:

| Parameter | Required | Description |
|---|---|---|
|`global_master_advertiser_id`|No|The gmaid, that the tag is associated with|
|`name`|Yes|The name that we want the tag to be changed to|

### NOTE! IF YOU USE THE UPDATE WITHOUT A GMAID, ALL OF THE TAGS WITH THE GIVEN NAME WOULD BE UPDATED REGARDLESS OF THE GMAID

### Response Description

| Field Name | Datatype | Description |
|---|---|---|
|`tags`| array | array of tag objects |

##### Tag Object:

| Field Name | Datatype | Description |
|---|---|---|
|`name`| string | Name of the tag |
|`counts`| object | Different entity counts of the tag (contacts count, contact_interaction count, etc.) |
|`global_master_advertiser_id`| string | the global master_advertiser associated with the tag

#### Example Curl

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/tag/foo' \
  --data-raw '{
      "name": "fighters",
      "global_master_advertiser_id": "TEST_1"
  }'
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

#### Example Response

```javascript
{
    "tags": [
        {
            "name": "fighters",
            "counts": {
                "contact_interactions": 0,
                "contacts": 0
            },
            "global_master_advertiser_id": "TEST_1"
        }
    ]
}
```

#### DELETE Tag(destroy)

##### Usage
Used to delete an existing Tag associated with a global master advertiser id.

##### Parameters
The DELETE endpoint doesn't accept any request parameters other than the tag name and the global master advertiser id.

##### Examples:

##### DELETE (destroy)

```
curl -L -X DELETE 'https://data-connect-lips.gannettdigital.com/tags/foo?global_master_advertiser_id=TEST_1 \
-H 'Authorization: 1b01Secret'
```

A successful response will have no response body and return a 200 HTTP response code.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

## GET All Tags for a given contact (Index)

### Usage

### Response Description

| Field Name | Datatype | Description |
|---|---|---|
|`tags`| array | array of tag strings given contact |

#### Example Curl

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contacts/2626/tags' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

#### Example Response

```javascript
{
    "tags": [
        "first",
        "second",
        "third"
    ]
}
```
## POST Tag for specific contact

### Usage

Call this endpoint to create a tag. An attempt will be made to match the event to an existing contact using the provided parameters.

### Parameters
When using the POST Contact tags create method, the following paramters are allowed:

| Parameter | Required | Description |
|---|---|---|
|`tags`|Yes|The tags that will be associated with the contact|

### Response Description

| Field Name | Datatype | Description |
|---|---|---|
|`tags`| Array | Array of strings|

#### Example Curl

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contacts/232/tags' \
  --data-raw '{
      "tags": ['first', 'second']
  }'
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

#### Example Response

```javascript
{
    "tags": [
        'first',
        'second'
    ]
}
```

#### DELETE Contact tag(destroy)

##### Usage
Used to delete an existing contact tag.

##### Parameters
The DELETE endpoint doesn't accept any request parameters other than the contact id in the request URL.

##### Examples:

##### DELETE (destroy)

```
curl -L -X DELETE 'https://data-connect-lips.gannettdigital.com/contacts/63807/tag/'foo' \
-H 'Authorization: 1b01Secret'
```

A successful response will have no response body and return a 200 HTTP response code.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

## GET All Tags for a given contact interaction (Index)

### Usage

### Response Description

| Field Name | Datatype | Description |
|---|---|---|
|`tags`| array | array of tag strings given contact interaction |

#### Example Curl

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interaction/2626/tags' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

#### Example Response

```javascript
{
    "tags": [
        "first",
        "second",
        "third"
    ]
}
```
## POST Tag for specific contact interaction

### Usage

Call this endpoint to create a tag. An attempt will be made to match the event to an existing contact interaction using the provided parameters.

### Parameters
When using the POST Contact tags create method, the following paramters are allowed:

| Parameter | Required | Description |
|---|---|---|
|`tags`|Yes|The tags that will be associated with the contact|

### Response Description

| Field Name | Datatype | Description |
|---|---|---|
|`tags`| Array | Array of strings|

#### Example Curl

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions/232/tags' \
  --data-raw '{
      "tags": ['first', 'second']
  }'
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

#### Example Response

```javascript
{
    "tags": [
        'first',
        'second'
    ]
}
```

#### DELETE Contact interactions tag(destroy)

##### Usage
Used to delete an existing contact interactions tag.

##### Parameters
The DELETE endpoint doesn't accept any request parameters other than the contact id in the request URL.

##### Examples:

##### DELETE (destroy)

```
curl -L -X DELETE 'https://data-connect-lips.gannettdigital.com/contact_interactions/63807/tag/'foo' \
-H 'Authorization: 1b01Secret'
```

A successful response will have no response body and return a 200 HTTP response code.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

