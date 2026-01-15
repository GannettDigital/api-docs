## RentCafe Floor Plans
<a name="RentCafe Floor Plans"></a>

Returns RentCafe floorplan data

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /floorplans|

### Usage
Use GET to retrieve the floor plans.

### Examples:

### GET (index)

```
curl -L -g -X GET '/floorplans' \
  -H 'Accept: application/json' \
  -H 'Authorization: token 3959a0c5-3e37-4900-8c45-7046fec1e659' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|
|errorCode| Integer |
|errorMessage| String |
|floorplans| Array of floorplans |

**Floorplans**

| Field Name | Datatype | Description |
|---|---|---|
|propertyId| Integer | RentCafe property identifier number |
|floorplanId| Integer | RentCafe floor plan identifier number |
|floorplanName| String | Rentcafe floor plan name. Example : "A9X16" | 
|minimumSQFT| Integer | Floor plan minimum area in sqft. Example : 144 |
|maximumSQFT| Integer | Floor plan maximum area in sqft. Example : 144 |
|minimumSQM| Integer | Floor plan minimum area in sqm. Example : 144 |
|maximumSQM| Integer | Floor plan maximum area in sqm. Example : 144 |
|minimumRent| Integer | Floor plan minimum rent.-1: Appears when the "For Fully Occupied Floor Plans display" property setting is set to "Call for Details." Example : 76 |
|maximumRent| Integer | Floor plan maximum rent.-1: Appears when the "For Fully Occupied Floor Plans display" property setting is set to "Call for Details." Example : 76 |
|minimumDeposit| Integer | Floor plan minimum deposit. Example : 15 |
|maximumDeposit| Integer | Floor plan maximum deposit. Example : 15 |
|availableUnitsCount| Integer | The number of units available to rent for the floor plan Example : 20 |
|availabilityURL| String | Availability Url |
|floorplanImageURL| String | Floor plan image url |
|floorplanImageURLArray| Array of Strings | Floorplan image URLs presented as an array of strings |
|floorplanImageName| String | Floor plan image name. Example :"A9X1600.JPG" |
|floorplanImageAltText| String | Floor plan image alt text. Example :"" |
|propertyShowsSpecials| Integer | -1: Leasing specials do not appear on apartment availability page, 0: Leasing specials appear on apartment availability page. Example :0 |
|floorplanHasSpecials| Integer | -1: Floor plan is associated with specials, 0: Floor plan is not associated with specials. Example :0 |
|unitTypeMapping| String | Unit types mapped to the floor plan. Example : "ut000003" |
|beds| Integer | Floorplan bedrooms |
|baths| Integer | Floorplan bathrooms |
|tour360EmbedCode| String | 360 Tour Embed Code. |
|fpVideoEmbedCode| String | Floor Plan Video Embed Code. |
|propertyVideoEmbedCode| String | Property Video Embed Code. |
|floorplanVirtualTourUrl| String | Floorplan virtual tour URL. |


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
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
