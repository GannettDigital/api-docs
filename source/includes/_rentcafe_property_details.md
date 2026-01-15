## RentCafe Property Details
<a name="RentCafe Property Details"></a>

Returns property listing information.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /property/details|

### Usage
Use GET to retrieve the property details.

### Examples:

### GET (index)

```
curl -L -g -X GET '/property/details' \
  -H 'Accept: application/json' \
  -H 'Authorization: token 3959a0c5-3e37-4900-8c45-7046fec1e659' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|
|errorCode| Integer |
|errorMessage| String |
|details| Array of details |

**Details**

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

**Apartment settings**

| Field Name | Datatype | Description |
|---|---|---|
|revenueManagementEnabled| Bool | Is this property enabled for Revenue Management |
|availabilityDaysFromUserMoveIn| Integer | The number of days past a prospect's preferred move-in date that apartments are available. For a value other than 0, prospects are required to complete the Move-in date field if they want to search for apartments. |
|daysAfterUnitAvailableMoveInPossibleStart| Integer | he number of days after apartments become available applicants may select move-in dates. This is in addition to the number of days needed to make the apartments ready in Voyager. |
|daysAfterUnitAvailableMoveInPossibleEnd| Integer | The number of days after apartments become available applicants must select move-in dates before. This is effectively the maximum number of days that available apartments remain vacant for. |
|daysFromCurrentDateMoveInRestrictedForAvailableUnits| Integer | The number of days from the current date move-in day selection for units will be available. If unit is available after this number of days from current date, prospect must move in on available date. |
|monthsAvailabilityRestrictedTo| Integer | Number of months before which apartments must be available in order to be displayed on the property marketing website and Prospect Portal. |
|percentRentOverMaxToIncludeApartmentSearch| Integer | The percentage by which the maximum rent amount is extended from prospect search maximum rent. This setting displays more apartments to prospects without requiring them to change their maximum rent amount. |
|maxApartmentsDisplayed| Integer | The max number of apartments displayed to prospects. Value not applicable and thus Null for Single Family Homes. |


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
      "propertyVirtualTourUrl": "string",
      "apartmentSettings": {
        "revenueManagementEnabled": true,
        "availabilityDaysFromUserMoveIn": 0,
        "daysAfterUnitAvailableMoveInPossibleStart": 0,
        "daysAfterUnitAvailableMoveInPossibleEnd": 0,
        "daysFromCurrentDateMoveInRestrictedForAvailableUnits": 0,
        "monthsAvailabilityRestrictedTo": 0,
        "percentRentOverMaxToIncludeApartmentSearch": 0,
        "maxApartmentsDisplayed": 0
      }
    }
  ]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
