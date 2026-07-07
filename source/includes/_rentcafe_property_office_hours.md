## RentCafe Property Office Hours
<a name="RentCafe Property Office Hours"></a>

Returns property office hour details.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /property/officehours|

### Usage
Use GET to retrieve the property office hour details.

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
curl -L -g -X GET '/property/officehours?propertyId=p1682239' \
  -H 'Accept: application/json' \
  -H 'Authorization: <trusted-authorization-value>' \
  -H 'Content-Type: application/json'

# GUID token (deprecated)
curl -L -g -X GET '/property/officehours' \
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

**Office Hours**

| Field Name | Datatype | Description |
|---|---|---|
|officeHoursId| Integer | Rentcafe office hours id. Example : "officeHoursId": 4885290  |
|officeHoursPropertyId| Integer | Rentcafe property id. Example : "officeHoursPropertyId": 1087796 |
|iday| Integer | Day. Mon - 1,Tue - 2,Wed - 3,Thurs - 4,Fri - 5 ,Sat - 6,Sun - 7,Mon-Fri - 8,Sat-Sun - 9 Example : "iday": 1 |
|dayOrder| Integer | Order in which we can display the days of office hours Example : "dayOrder": 1 |
|startTime| String | Office hours start time ( grab just time part from this) Example "startTime": "06/15/2022 01:00:00" |
|endTime| String | Office hours end time ( grab just time part from this) Example "endTime": "06/15/2022 01:00:00" |


#### Example Response

```javascript
{
  "errorCode": 200,
  "errorMessage": "string",
  "officeHours": [
    {
      "officeHoursId": 0,
      "officeHoursPropertyId": 0,
      "iday": 0,
      "dayOrder": 0,
      "startTime": "string",
      "endTime": "string"
    }
  ]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
