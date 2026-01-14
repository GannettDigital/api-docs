## RentCafe Property Appointment Settings
<a name="RentCafe Property Appointment Settings"></a>

Returns all appointment/tour settings for a property. Will return appointment types that are enabled at the property, including Guided, Self-Guided, Live Video, and Virtual Tours.
This will also let vendors know if the "Use Advanced Timeslot Scheduling" setting is flagged. This setting is required for CRM clients, for the tour scheduling functionality to work as expected.
This endpoint will also export general tour settings, guided tour settings, and self-guided tour settings for the specified property.
NOTES:
SGT Hours and SGT Blackouts are not included in this API as this data is already returned in the form of available slots in the marketing API: appointments/getavailableslots
propertyConcurrentEventNumber is included in this API and is an important setting and shows up in the case that the allowPropertyLevelConcurrentEvent parameter is set to true.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /property/appointmentsettings|

### Usage
Use GET to retrieve the property appointment settings.

### Examples:

### GET (index)

```
curl -L -g -X GET '/property/appointmentsettings' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|---|---|
|errorCode| Integer |
|errorMessage| String |
|appointmentTypes| Appointment types object |
|generalSettings| General settings object |
|guidedTourSettings| Guided tour settings object |
|selfGuidedTourSettings| Self guided tour settings object |

**Appointment types**

|guidedTourEnabled| Bool |
|selfGuidedTourEnabled| Bool |
|liveVideoTourEnabled| Bool |
|virtualTourEnabled| Bool |
|useAdvancedTimeslotScheduling| Bool |

**General settings**

|allowPropertyLevelConcurrentEvent| Bool |
|propertyConcurrentEventNumber| Integer |
|scheduleFromDays| Integer |
|scheduleToDays| Integer |
|consecutiveAppointmentBuffer| Integer |
|minimumScheduleNotice| Integer |
|maxMarketingSiteAppointmentsPerUser| Integer |
|displayMoveInDateField| Bool |
|moveInDateRequired| Bool |
|appointmentAvailabilityAPIEnabled| Bool |
|sendNewGuestEmailsThroughAPI| Bool |
|useCRMBlackouts| Bool |

**Guided tour settings**

|appointmentLength| Integer |
|restrictToOfficeHours| Bool |
|concurrentEvents| Integer |
|displayBedroomsField| Bool |
|bedroomsFieldRequired| Bool |

**Self Guided tour settings**

|appointmentLength| Integer |
|hideFloorPlanAndUnitSelection| Bool |


#### Example Response

```javascript
{
  "errorCode": 200,
  "errorMessage": "string",
  "appointmentTypes": {
    "guidedTourEnabled": true,
    "selfGuidedTourEnabled": true,
    "liveVideoTourEnabled": true,
    "virtualTourEnabled": true,
    "useAdvancedTimeslotScheduling": true
  },
  "generalSettings": {
    "allowPropertyLevelConcurrentEvent": true,
    "propertyConcurrentEventNumber": 0,
    "scheduleFromDays": 0,
    "scheduleToDays": 0,
    "consecutiveAppointmentBuffer": 0,
    "minimumScheduleNotice": 0,
    "maxMarketingSiteAppointmentsPerUser": 0,
    "displayMoveInDateField": true,
    "moveInDateRequired": true,
    "appointmentAvailabilityAPIEnabled": true,
    "sendNewGuestEmailsThroughAPI": true,
    "useCRMBlackouts": true
  },
  "guidedTourSettings": {
    "appointmentLength": 0,
    "restrictToOfficeHours": true,
    "concurrentEvents": 0,
    "displayBedroomsField": true,
    "bedroomsFieldRequired": true
  },
  "selfGuidedTourSettings": {
    "appointmentLength": 0,
    "hideFloorPlanAndUnitSelection": true
  }
}

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
