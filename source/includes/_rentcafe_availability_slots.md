## RentCafe Available Slots
<a name="RentCafe Available Slots"></a>

Returns RentCafe available slots.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /appointments/availableslots|

### Usage
Use GET to retrieve the available slots.

### Examples:

### GET (index)

```
curl -L -g -X GET '/appointments/availableslots' \
  -H 'Accept: */*' \
  -H 'Authorization: token 3959a0c5-3e37-4900-8c45-7046fec1e659' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|
|errorCode| Integer |
|errorMessage| String |
|availableSlots| Array of available slots |

**availableSlots**

| Field Name | Datatype | Description |
|---|---|---|
|propertyId| Integer | RentCafe property identifier number |
|startTime| String | Available slot Start time. Example : "StartTime": "8/1/2022 10:00:00 AM" |
|endTime| String | Available slot End time. Example : "endTime": "8/1/2022 10:30:00 AM" |
|slotType| String | Tour Type of each timeslot|
|tourType| Array of String | Indicates the specific tour types that apply to the timeslot. Example : "TourType":["Guided Tour", "Live Video Tour"] |


#### Example Response

```javascript
{
  "errorCode": 200,
  "errorMessage": "string",
  "availableSlots": [
    {
      "propertyId": 0,
      "startTime": "string",
      "endTime": "string",
      "slotType": "string",
      "tourType": [
        "string"
      ]
    }
  ]
}

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
