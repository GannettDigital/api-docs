## RentCafe Property Amenities
<a name="RentCafe Property Amenities"></a>

Returns default and custom amenity details.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /property/amenities|

### Usage
Use GET to retrieve the property amenities.

### Authorization

These endpoints accept two authorization mechanisms, supplied through the `Authorization` request header:

* **Trusted header (recommended):** send the trusted value provided by LocaliQ in the `Authorization` header and identify the property with the required `propertyId` request parameter.
* **GUID token (deprecated):** send `Authorization: token <guid>`, where the GUID is mapped to a single property. This mechanism is retained for backward compatibility only; new integrations should use the trusted header. When a GUID is provided, the `propertyId` parameter is ignored.

| Parameter | Required | Description |
|---|---|---|
|`propertyId`| Yes, with the trusted header | RentCafe property code identifying the target property. Alphanumeric, 1–32 characters. Example: `p1682239`. Ignored when the deprecated GUID token is used. |

### Examples:

### GET (index)

```
# Trusted header (recommended)
curl -L -g -X GET '/property/amenities?propertyId=p1682239' \
  -H 'Accept: application/json' \
  -H 'Authorization: <trusted-authorization-value>' \
  -H 'Content-Type: application/json'

# GUID token (deprecated)
curl -L -g -X GET '/property/amenities' \
  -H 'Accept: application/json' \
  -H 'Authorization: token 3959a0c5-3e37-4900-8c45-7046fec1e659' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|
|errorCode| Integer |
|errorMessage| String |
|amenities| Array of amenities |

  **Amenities**

  | Field Name | Datatype | Description |
  |---|---|---|
  |amenityName| String | Amenity name. Example :"Second Floor" |
  |description1| String | Amenity description |
  |amenityId| Integer | Amenity Id. Example :51641396 |
  |amenityMasterId| Integer | Amenity category id. Example :131 |
  |customAmenityName| String | Customized name for amenity. |
  |iorder| Integer | Order in which you want to amenity to be displayed. |
  |floorPlanAmenityFlag| String | this is set if that amenity is floorplan amenity. |
  |propertyAmenityFlag| String | This is set if that amenity is property amenity. |
  |link| String | The link mapped for this amenity. |
  |customAmenityType| String | The amenity type |
  |imageURL| String | Amenity image url.|
  |imageAltText| String | Amenity image alt text. |
  |amenityImageInfo| Array of image data | A list of images associated to the amenity |
  |featuredAmenity| Integer | 1 if its featured amenity and 0 if its not featured amenity. |

**Image data**
  | Field Name | Datatype |
  |---|---|
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
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
