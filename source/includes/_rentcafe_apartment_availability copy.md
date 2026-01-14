## RentCafe Apartment Availability
<a name="RentCafe Apartment Availability"></a>

Returns property office pet policy.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /apartmentavailability|

### Usage
Use GET to retrieve the apartment availability

### Parameters
When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`rentRange`|No|Monthly rent amount range. Separate values with a dash (-). For example: 1000-2000..|
|`numberOfBeds`|No|Number of bedrooms|
|`numberOfBaths`|No|Number of bathrooms (append .50 for half baths)|
|`apartmentName`|No|Voyager unit code. For example: 1101|
|`sortOrder`|No|Fields by which apartments are sorted. Options are: floorPlanName, apartmentName, beds, baths, maximumRent, and
minimumRent. Type ASC or DESC to denote ascending or descending sort order. Apartments are sorted by the first field, then the second field, and so on. Separate fields with a comma
and no space.
For example, sortOrder=floorplanName ASC,beds DESC results in the following: Alpha floor plan: 3-bedroom apartment, Alpha floor plan: 2-bedroom apartment, Beta floor plan: 3-bedroom apartment|
|`floorPlanID`|No|RentCafe floor plan identifier number. For example: 431187|
|`availableDate`|No|Latest available date. US Date Format: MM/DD/YYYY|
|`showAllUnit`|No|If true, returns all units irrespective of the unit status. If false, returns available units.|
|`showPublishOnCorpSite`|No|Property's listing status on the Corporate Apartment Search (CAS) site: -1: Property listed on CAS. 0: Property not listed on CAS.|
|`city`|No|City, state zip city name and 2-character state code separated by a comma with no space and 5-digit ZIP code. For example: Goleta, CA 93117|

### Examples:

### GET (index)

```
curl -L -g -X GET '/apartmentavailability' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|---|---|
|errorCode| Integer |
|errorMessage| String |
|apartmentAvailabilities| Array of apartment availability details |

**Apartment availability**

|propertyId| Integer |
|voyagerPropertyId| Integer |
|voyagerPropertyCode| String |
|floorplanId| Integer |
|floorplanName| String |
|apartmentId| Integer |
|apartmentName| String |
|beds| Integer |
|baths| Integer |
|sqft| Integer |
|sqM| Integer |
|minimumRent| Integer |
|maximumRent| Integer |
|deposit| Integer |
|applyOnlineURL| String |
|unitImageURLs| String |
|unitImageURLsArray| Array of url strings|
|unitImageAltText| String |
|specials| String |
|amenities| String |
|availableDate| String |
|publishDate| String |
|delayApplicationInHours| String |
|unitStatus| String |
|unitEmbedVideo| String |
|unitVirtualTourUrl| String |
|minimumRentLeaseTerm| Integer |
|maximumRentLeaseTerm| Integer |



#### Example Response

```javascript
{
  "errorCode": 200,
  "errorMessage": "string",
  "apartmentAvailabilities": [
    {
      "propertyId": 0,
      "voyagerPropertyId": 0,
      "voyagerPropertyCode": "string",
      "floorplanId": 0,
      "floorplanName": "string",
      "apartmentId": 0,
      "apartmentName": "string",
      "beds": 0,
      "baths": 0,
      "sqft": 0,
      "sqM": 0,
      "minimumRent": 0,
      "maximumRent": 0,
      "deposit": 0,
      "applyOnlineURL": "string",
      "unitImageURLs": "string",
      "unitImageURLsArray": [
        "string"
      ],
      "unitImageAltText": "string",
      "specials": "string",
      "amenities": "string",
      "availableDate": "string",
      "publishDate": "string",
      "delayApplicationInHours": "string",
      "unitStatus": "string",
      "unitEmbedVideo": "string",
      "unitVirtualTourUrl": "string",
      "minimumRentLeaseTerm": 0,
      "maximumRentLeaseTerm": 0
    }
  ]
}

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
