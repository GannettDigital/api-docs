## RentCafe Property Office Hours
<a name="RentCafe Property Office Hours"></a>

Returns property office hour details.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /property/officehours|

### Usage
Use GET to retrieve the property office hour details.

### Examples:

### GET (index)

```
curl -L -g -X GET '/property/officehours' \
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

**Office Hours**

|officeHoursId| Integer |
|officeHoursPropertyId| Integer |
|iday| Integer |
|dayOrder| Integer |
|startTime| String |
|endTime| String |


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

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
