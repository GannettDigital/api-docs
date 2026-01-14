## RentCafe Property Amenities
<a name="RentCafe Property Amenities"></a>

Returns default and custom amenity details.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /property/amenities|

### Usage
Use GET to retrieve the property amenities.

### Examples:

### GET (index)

```
curl -L -g -X GET '/property/amenities' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|---|---|
|errorCode| Integer |
|errorMessage| String |
|amenities| Array of amenities |

**Amenities**

|amenityName| String |
|description1| String |
|amenityId| Integer |
|amenityMasterId| Integer |
|customAmenityName| String |
|iorder| Integer |
|floorPlanAmenityFlag| String |
|propertyAmenityFlag| String |
|link| String |
|customAmenityType| String |
|imageURL| String |
|caption| String |
|imageAltText| String |
|amenityImageInfo| Array of image data |
|featuredAmenity| Integer |

**Image data**

|imageUrl| String |
|imageAltText| String |
|imageType| String |
|svgCode| String |


#### Example Response

```javascript
{
  "errorCode": 200,
  "errorMessage": "string",
  "amenities": [
    {
      "amenityName": "string",
      "description1": "string",
      "amenityId": 0,
      "amenityMasterId": 0,
      "customAmenityName": "string",
      "iorder": 0,
      "floorPlanAmenityFlag": "string",
      "propertyAmenityFlag": "string",
      "link": "string",
      "customAmenityType": "string",
      "imageURL": "string",
      "imageAltText": "string",
      "amenityImageInfo": [
        {
          "imageUrl": "string",
          "imageAltText": "string",
          "imageType": "string",
          "svgCode": "string"
        }
      ],
      "featuredAmenity": 0
    }
  ]
}

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
