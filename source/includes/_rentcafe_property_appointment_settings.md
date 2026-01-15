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
|---|---|
|errorCode| Integer |
|errorMessage| String |
|appointmentTypes| Appointment types object |
|generalSettings| General settings object |
|guidedTourSettings| Guided tour settings object |
|selfGuidedTourSettings| Self guided tour settings object |

**Appointment types**

| Field Name | Datatype | Description |
|---|---|---|
|guidedTourEnabled| Bool | Indicates if guided tours are enabled. Example: "guidedTourEnabled": true |
|selfGuidedTourEnabled| Bool | Indicates if self-guided tours are enabled. Example: "selfGuidedTourEnabled": true |
|liveVideoTourEnabled| Bool | Indicates if live video tours are enabled. Example: "liveVideoTourEnabled": true |
|virtualTourEnabled| Bool | Indicates if 360/video tours are enabled. Example: "virtualTourEnabled": true |
|useAdvancedTimeslotScheduling| Bool | Indicates if advanced timeslot scheduling is enabled. Example: "useAdvancedTimeslotScheduling": true |

**General settings**

| Field Name | Datatype | Description |
|---|---|---|
|allowPropertyLevelConcurrentEvent| Bool | Indicates if property level concurrent events are allowed. If true, this setting will overwrite the concurrent event setting for each of the tour types. Example: "allowPropertyLevelConcurrentEvent": true |
|propertyConcurrentEventNumber| Integer | If property level concurrent events are allowed, what number are allowed in the same slot. Example: "propertyConcurrentEventNumber": 4 |
|scheduleFromDays| Integer | number of days from current date that appointments can be scheduled. Example: "scheduleFromDays": 0 |
|scheduleToDays| Integer | Maximum number of days from current date that appointments can be scheduled. If both this and ScheduleToDays are blank in the Property's setup, this field will default to 90 days. Example: "scheduleToDays": 30 |
|consecutiveAppointmentBuffer| Integer | Minutes required between consecutive appointments. If 0, we will allow consecutive appointments. Example: "consecutiveAppointmentBuffer": 30 |
|minimumScheduleNotice| Integer | Minimum minutes in advance required for scheduling appointments. If this field is blank in the Property's setup, it defaults to 30. Example: "minimumScheduleNotice": 60 |
|maxMarketingSiteAppointmentsPerUser| Integer | Maximum number of appointments allowed per user from marketing site. If this field is blank in the Property's setup, it defaults to 1. Example: "maxAppointmentsPerUser": 3 |
|displayMoveInDateField| Bool | Indicates if the move-in date field should be displayed. Example: "displayMoveInDateField": true |
|moveInDateRequired| Bool | Indicates if the move-in date field is required. Example: "moveInDateRequired": true |
|appointmentAvailabilityAPIEnabled| Bool | Indicates if the appointment availability API is enabled. Example: "appointmentAvailabilityAPIEnabled": true |
|sendNewGuestEmailsThroughAPI| Bool | Indicates if marketing API should send emails for new guests. Example: "sendNewGuestEmails": true |
|useCRMBlackouts| Bool | Indicates if CRM blackouts should be used. Example: "useCRMBlackouts": true |

**Guided tour settings**

| Field Name | Datatype | Description |
|---|---|---|
|appointmentLength| Integer | Length of guided and live video tour appointments in minutes. If this field is blank in the Property's setup, it defaults to 30. Example: "appointmentLength": 60 |
|restrictToOfficeHours| Bool | Indicates if appointments must be within office hours. Example: "restrictToOfficeHours": true |
|concurrentEvents| Integer | Number of concurrent events allowed. If this field is blank in the Property's setup, it defaults to 1. Example: "concurrentEvents": 2 |
|displayBedroomsField| Bool | Indicates if the number of bedrooms field should be displayed. Example: "displayBedroomsField": true |
|bedroomsFieldRequired| Bool | Indicates if the number of bedrooms field is required. Example: "bedroomsFieldRequired": true |

**Self Guided tour settings**

| Field Name | Datatype | Description |
|---|---|---|
|appointmentLength| Integer | Length of self-guided tour appointments in minutes. If this field is blank in the Property's setup, it defaults to 30. Example: "appointmentLength": 45 |
|hideFloorPlanAndUnitSelection| Bool | Indicates if floor plan and unit selection should be hidden. Example: "hideFloorPlanAndUnitSelection": false |


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
