## RentCafe Property Units
<a name="RentCafe Property Units"></a>

Returns RentCafe property image URLs. Note that CLO/Marketing List properties are also
supported in this endpoint.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /images/units|

### Usage
Use GET to retrieve the floor plans.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`apartmentName`|No|Restricts the results based on the apartment name|

### Examples:

### GET (index)

```
curl -L -g -X GET '/images/property' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|
|errorCode| Integer |
|errorMessage| String |
|images| Array of images |

**Images**

| Field Name | Datatype | Description |
|---|---|---|
|id| Integer | Unique numeric code for image. |
|title| String | Image title. Example : "Title":"Apartments in Tonopah | Cityview Towers | Patio" |
|imageURL| String | Image url |
|caption| String | Image caption. Example : "Caption":"Pool View" |
|altText| String | Alt text of the image. Example : "AltText":"North Facing Patio" |


#### Example Response

```javascript
{
  "errorCode": 200,
  "errorMessage": "string",
  "images": [
    {
      "id": 0,
      "title": "string",
      "imageURL": "string",
      "caption": "string",
      "altText": "string",
    }
  ]
}

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
