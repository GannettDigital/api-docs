## RentCafe Apartment Availability
<a name="RentCafe Apartment Availability"></a>

Returns property apartment availability.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /apartmentavailability|

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
|`sortOrder`|No|Fields by which apartments are sorted. Options are: floorPlanName, apartmentName, beds, baths, maximumRent, and minimumRent. Type ASC or DESC to denote ascending or descending sort order. Apartments are sorted by the first field, then the second field, and so on. Separate fields with a comma and no space. For example, sortOrder=floorplanName ASC,beds DESC results in the following: Alpha floor plan: 3-bedroom apartment, Alpha floor plan: 2-bedroom apartment, Beta floor plan: 3-bedroom apartment |
|`floorPlanID`|No|RentCafe floor plan identifier number. For example: 431187|
|`availableDate`|No|Latest available date. US Date Format: MM/DD/YYYY|
|`showAllUnit`|No|If true, returns all units irrespective of the unit status. If false, returns available units.|
|`showPublishOnCorpSite`|No|Property's listing status on the Corporate Apartment Search (CAS) site: -1: Property listed on CAS. 0: Property not listed on CAS.|
|`city`|No|City, state zip city name and 2-character state code separated by a comma with no space and 5-digit ZIP code. For example: Goleta, CA 93117|

### Examples:

### GET (index)

```
curl -L -g -X GET '/apartmentavailability' \
  -H 'Accept: application/json' \
  -H 'Authorization: token 3959a0c5-3e37-4900-8c45-7046fec1e659' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|
|errorCode| Integer |
|errorMessage| String |
|apartmentAvailabilities| Array of apartment availability details |

**Apartment availability**
| Field Name | Datatype | Description |
|---|---|---|
|propertyId| Integer | RentCafe property identifier number. Example : "PropertyId":"20006" |
|voyagerPropertyId| Integer | Voyager property identifier number. Example : "VoyagerPropertyId":"30" |
|voyagerPropertyCode| String | Voyager property code. Example : "VoyagerPropertyCode":"resnv02" |
|floorplanId| Integer | RentCafe floor plan identifier number. Example : "FloorPlanId":"431183" | 
|floorplanName| String | RentCafe floor plan name. Example : "FloorPlanName":"Birch" |
|apartmentId| Integer | RentCafe apartment identifier number. Example : "ApartmentId":"90915" |
|apartmentName| String | Apartment name. Example : "ApartmentName":"1107" |
|beds| Integer | Number of bedrooms in the apartment. Example : "Beds":1 |
|baths| Float | Number of bathrooms in the apartment. Example : "Baths":1.5 |
|sqft| Integer | Apartment area in square feet. Example : "SqFt":"950" |
|sqM| Integer | Apartment area in square meter. Example : "SqM":"95" |
|minimumRent| Integer | 1: Appears when the "For Fully Occupied Floor Plans display" property setting is set to "Call for Details." Example : "MinimumRent":"1200" |
|maximumRent| Integer | -1: Appears when the "For Fully Occupied Floor Plans display" property setting is set to "Call for Details.". Example : "MaximumRent":"1700" |
|deposit| Integer | partment deposit. Example : "Deposit":"500" |
|applyOnlineURL| String | Apply online url |
|unitImageURLs| String | Apartment image URLs separated with commas |
|unitImageURLsArray| Array of url strings| Apartment image URLs presented as an array of strings |
|unitImageAltText| String | Unit image alt text. Example : "UnitImageAltText":"One Bed One Bath Unit" |
|specials| String | Specials separated by carets (^). Example : "Specials":"Free Rent Offer for 2022 - 3 Months^Free Rent Offer for 2022 - 6 Months" |
|amenities| String | Amenities separated by carets (^). "Amenities":"Pool View^Fireplace" |
|availableDate| String | If apartment is available before current date, current date is displayed. Example : "AvailableDate":"3/15/2022" |
|publishDate| String | The date in which the apartment is to be published for marketing. If there is no date, then the apartment can be immediately published. Example : "PublishDate": "07/22/2024" |
|delayApplicationInHours| String | The number of hours to delay an apartment from receiving applications after it has been published. In the scenarios that there is no publish date or the parameter value is empty/zero, then there is no need to delay applications for the unit. Example : "DelayApplicationInHours": "36" |
|unitStatus| String | Unit Status. Example : "Vacant Unrented Not Ready" |
|unitEmbedVideo| String | Unit Embed Video code. Example: "UnitEmbedVideo" |
|unitVirtualTourUrl| String | Unit virtual tour URL. |
|minimumRentLeaseTerm| Integer | The minimum lease term that applies to the minimum rent. Example: "minimumRentLeaseTerm": 3 |
|maximumRentLeaseTerm| Integer | The maximum lease term that applies to the maximum rent. Example: "maximumRentLeaseTerm": 18 |



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
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
