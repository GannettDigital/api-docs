## RentCafe Property Images
<a name="RentCafe Property Images"></a>

Returns RentCafe property image URLs.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /images/property|

### Usage
Use GET to retrieve the property images.

### Authorization

This endpoint accepts two authorization mechanisms, supplied through the `Authorization` request header:

* **Trusted header (recommended):** send the trusted value provided by LocaliQ in the `Authorization` header and identify the property with the required `propertyId` request parameter.
* **GUID token (deprecated):** send `Authorization: token <guid>`, where the GUID is mapped to a single property. This mechanism is retained for backward compatibility only; new integrations should use the trusted header. When a GUID is provided, the `propertyId` parameter is ignored.

| Parameter | Required | Description |
|---|---|---|
|`propertyId`| Yes, with the trusted header | RentCafe property code identifying the target property. Alphanumeric, 1–32 characters. Example: `p1682239`. Ignored when the deprecated GUID token is used. |

### Examples:

### GET (index)

```
# Trusted header (recommended)
curl -L -g -X GET '/images/property?propertyId=p1682239' \
  -H 'Accept: application/json' \
  -H 'Authorization: <trusted-authorization-value>' \
  -H 'Content-Type: application/json'

# GUID token (deprecated)
curl -L -g -X GET '/images/property' \
  -H 'Accept: application/json' \
  -H 'Authorization: token 3959a0c5-3e37-4900-8c45-7046fec1e659' \
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
|id| Integer | Unique numeric code for image |
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
      "altText": "string"
    }
  ]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
