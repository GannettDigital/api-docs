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

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
