## RentCafe Property Marketing Details
<a name="RentCafe Property Marketing Details"></a>

Returns property office marketing details.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /property/marketingdetails|

### Usage
Use GET to retrieve the property marketing details.

### Examples:

### GET (index)

```
curl -L -g -X GET '/property/marketingdetails' \
  -H 'Accept: application/json' \
  -H 'Authorization: token 3959a0c5-3e37-4900-8c45-7046fec1e659' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|
|errorCode| Integer |
|errorMessage| String |
|properties| Array of properties |
|amenities| Array of amenities |
|officeHours| Array of officeHours |
|petPolicies| Array of pet policies |


**Properties**

| Field Name | Datatype | Description |
|---|---|---|
|name| String | Rentcafe property name. Example : "name": "Cityview Towers" |
|address| String | Property address. Example : "address": "10135 100 St NW" |
|city| String | Property city. Example : "city": "goleta" |
|state| String | Property state. Example : "state": "CA" |
|zipcode| String | Property zipcode |
|url| String | Property site url |
|description| String | Property description. Example : "description": "The Cityview Towers is a landmark in residential living." |
|email| String | Property email |
|phone| String | Property phone. Example : "phone": "(800) 866-8880" |
|latitude| Integer | Property latitude. Example : "latitude": 53.542018 |
|longitude| Integer | Property longitude. Example : "latitude": -113.489784 |
|propertyCode| String | Rentcafe property code. Example : "propertyCode": "p1062918" |
|voyagerPropertyCode| String | Voyager property code. Example : "voyagerPropertyCode": "saphire" |
|propertyId| Integer | Rentcafe property id. Example : "propertyId": 1087796 |
|propertyVideoEmbedCode| String | Property video embed code. Example : "PropertyVideoEmbedCode" |
|propertyVirtualTourUrl| String | Property virtual tour URL. Example : "PropertyVirtualTourUrl":"https://www.rentcafe.com/virtualtour/12345" |
|apartmentSettings| Array | Array of apartment settings |

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

**Office Hours**

| Field Name | Datatype | Description |
|---|---|---|
|officeHoursId| Integer | Rentcafe office hours id. Example : "officeHoursId": 4885290  |
|officeHoursPropertyId| Integer | Rentcafe property id. Example : "officeHoursPropertyId": 1087796 |
|iday| Integer | Day. Mon - 1,Tue - 2,Wed - 3,Thurs - 4,Fri - 5 ,Sat - 6,Sun - 7,Mon-Fri - 8,Sat-Sun - 9 Example : "iday": 1 |
|dayOrder| Integer | Order in which we can display the days of office hours Example : "dayOrder": 1 |
|startTime| String | Office hours start time ( grab just time part from this) Example "startTime": "06/15/2022 01:00:00" |
|endTime| String | Office hours end time ( grab just time part from this) Example "endTime": "06/15/2022 01:00:00" |

**Pet Policy**

| Field Name | Datatype | Description |
|---|---|---|
|petId| Integer | Rentcafe Pet Policy Id. Example : "petId": 1467115 |
|petPropertyId| Integer | Rentcafe property id. Example :"petPropertyId": 1087796 |
|petType| String | Cats allowed - 1,Dogs allowed - 2,PetFriendly - 3,NotAllowed - 4. Example : "petType": "2 |
|petTypeorder| Integer | Pet type order. Example : "petTypeorder": 2 |
|sComment| String | Pet policy related comment. Example : "sComment": "Big dogs only." |
|iMaxAllowed| String | Max pets allowed. Example : "iMaxAllowed": "1" |
|dDeposit| Integer | Pet deposit. Example : "dDeposit": 20 |
|dFee| Integer | Pet fee. Example "dFee": 10 |
|dRent| Integer | Pet rent. Example : "dRent": 15 |
|dWeight| Integer | Pet weight. Example : "dWeight": 150 |
|dFeeMax| Integer | Maximum pet fee. Example : "dFeeMax": 30 |
|dFeeMin| Integer | Minimum pet fee. Example : "dFeeMin": 30 |
|bPetCare| String | 0 - Pet care is not available , 1- Pet care is available. Example : "bPetCare": "0" |
|restrictions| String | Pet restrictions if any. Example "restrictions": "No breed restrictions!" |


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
  ],
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
  ],
  "officeHours": [
    {
      "officeHoursId": 0,
      "officeHoursPropertyId": 0,
      "iday": 0,
      "dayOrder": 0,
      "startTime": "string",
      "endTime": "string"
    }
  ],
  "petPolicies": [
    {
      "petId": 0,
      "petPropertyId": 0,
      "petType": "string",
      "petTypeorder": 0,
      "sComment": "string",
      "iMaxAllowed": "string",
      "dDeposit": 0,
      "dFee": 0,
      "dRent": 0,
      "dWeight": 0,
      "dFeeMax": 0,
      "dFeeMin": 0,
      "bPetCare": "string",
      "restrictions": "string"
    }
  ]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
