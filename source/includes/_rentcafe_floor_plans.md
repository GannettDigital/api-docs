## RentCafe Floor Plans
<a name="RentCafe Floor Plans"></a>

Returns RentCafe floorplan data

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /floorplans|

### Usage
Use GET to retrieve the floor plans.

### Examples:

### GET (index)

```
curl -L -g -X GET '/floorplans' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|---|---|
|errorCode| Integer |
|errorMessage| String |
|floorplans| Array of floorplans |

**Floorplans**

|propertyId| Integer |
|floorplanId| Integer |
|floorplanName| String |
|minimumSQFT| Integer |
|maximumSQFT| Integer |
|minimumSQM| Integer |
|maximumSQM| Integer |
|minimumRent| Integer |
|maximumRent| Integer |
|minimumDeposit| Integer |
|maximumDeposit| Integer |
|availableUnitsCount| Integer |
|availabilityURL| String |
|floorplanImageURL| String |
|floorplanImageURLArray| Array of Strings |
|floorplanImageName| String |
|floorplanImageAltText| String |
|propertyShowsSpecials| Integer |
|floorplanHasSpecials| Integer |
|unitTypeMapping| String |
|beds| Integer |
|baths| Integer |
|tour360EmbedCode| String |
|fpVideoEmbedCode| String |
|propertyVideoEmbedCode| String |
|floorplanVirtualTourUrl| String |


#### Example Response

```javascript
{
  "errorCode": 200,
  "errorMessage": "string",
  "floorplans": [
    {
      "propertyId": 0,
      "floorplanId": 0,
      "floorplanName": "string",
      "minimumSQFT": 0,
      "maximumSQFT": 0,
      "minimumSQM": 0,
      "maximumSQM": 0,
      "minimumRent": 0,
      "maximumRent": 0,
      "minimumDeposit": 0,
      "maximumDeposit": 0,
      "availableUnitsCount": 0,
      "availabilityURL": "string",
      "floorplanImageURL": "string",
      "floorplanImageURLArray": [
        "string"
      ],
      "floorplanImageName": "string",
      "floorplanImageAltText": "string",
      "propertyShowsSpecials": 0,
      "floorplanHasSpecials": 0,
      "unitTypeMapping": "string",
      "beds": 0,
      "baths": 0,
      "tour360EmbedCode": "string",
      "fpVideoEmbedCode": "string",
      "propertyVideoEmbedCode": "string",
      "floorplanVirtualTourUrl": "string"
    }
  ]
}

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
