### **Tags**
<a name="lips_tags"></a>

# Tags API

Are activities associated with a contact or contact interaction. The tag is a string that is attached to a given contact or interaction. It could also be created by posting to this API.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /contact_interactions/#id/tags |
| GET `index` | /contacts/#id/tags |
| POST `create` | /contact_interactions/#id |
| POST `create` | /contacts/#id |
| DELETE `destroy` | /contact_interactions/#id/tags/'tag' |
| DELETE `destroy` | /contacts/#id/tags/'tag' |

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

