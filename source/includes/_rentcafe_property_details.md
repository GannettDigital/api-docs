## RentCafe Property Details
<a name="RentCafe Property Details"></a>

Returns property listing information.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /property/details|

### Usage
Use GET to retrieve the property details.

### Examples:

### GET (index)

```
curl -L -g -X GET '/property/details' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|---|---|
|errorCode| Integer |
|errorMessage| String |
|details| Array of details |

**Details**

|name| String |
|address| String |
|city| String |
|state| InteStringger |
|zipcode| String |
|url| String |
|description| String |
|email| String |
|phone| String |
|latitude| Integer |
|longitude| Integer |
|propertyCode| String |
|voyagerPropertyCode| String |
|propertyId| Integer |
|propertyVideoEmbedCode| String |
|propertyVirtualTourUrl| String |
|apartmentSettings| Array of apartment settings |

**Apartment settings**

|revenueManagementEnabled| Bool |
|availabilityDaysFromUserMoveIn| Integer |
|daysAfterUnitAvailableMoveInPossibleStart| Integer |
|daysAfterUnitAvailableMoveInPossibleEnd| Integer |
|daysFromCurrentDateMoveInRestrictedForAvailableUnits| Integer |
|monthsAvailabilityRestrictedTo| Integer |
|percentRentOverMaxToIncludeApartmentSearch| Integer |
|maxApartmentsDisplayed| Integer |


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

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
