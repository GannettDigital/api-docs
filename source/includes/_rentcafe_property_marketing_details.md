## RentCafe Property Marketing Details
<a name="RentCafe Property Marketing Details"></a>

Returns property office marketing details.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /property/marketingdetails|

### Usage
Use GET to retrieve the property marketing details.

### Examples:

### GET (index)

```
curl -L -g -X GET '/property/marketingdetails' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|---|---|
|errorCode| Integer |
|errorMessage| String |
|details| Array of details |

**Marketing Hours**

|name| String |
|address| String |
|city| String |
|state| String |
|zipcode| String |
|url| String |
|description| String |
|email| String |
|phone| String |
|latitude| Integer |
|longitude| Integer |
|propertyCode| String |
|voyagerPropertyCode| String |
|propertyId| Integer |
|propertyVideoEmbedCode| String |
|propertyVirtualTourUrl| String |



#### Example Response

```javascript
{
  "errorCode": 200,
  "errorMessage": "string",
  "properties": [
    {
      "name": "string",
      "address": "string",
      "city": "string",
      "state": "string",
      "zipcode": "string",
      "url": "string",
      "description": "string",
      "email": "string",
      "phone": "string",
      "latitude": 0,
      "longitude": 0,
      "propertyCode": "string",
      "voyagerPropertyCode": "string",
      "propertyId": 0,
      "propertyVideoEmbedCode": "string",
      "propertyVirtualTourUrl": "string"
    }
  ]
}

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
