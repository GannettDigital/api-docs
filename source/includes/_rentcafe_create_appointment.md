## RentCafe Create Appointment
<a name="RentCafe Create Appointment"></a>

Creates an appointment on the property’s calendar and either adds a new Guest Card or matches and updates an existing Guest Card.
Endpoint returns only those properties which are flagged by the client for either RentCafe.com ILS or Corporate Listing in RentCafe Site Manager (returns a 204- Undocumented error if neither are selected for a property).
When empty or null values are returned in the response for voyProspectId and voyProspectCode it is due to the “Send Guest Card real-time” setting not being selected in Site Manager.
A validation check is performed to ensure that the indicated tour type is enabled for the property. If it is, the endpoint will continue processing the request. If it is not, a 406 error will be thrown with a message indicating that the indicated tour type is not enabled at the property.
Note that source validation is enabled for this endpoint. The activation of source validation depends on whether the client has enabled this feature within Site Manager. When enabled, the API verifies that the source provided in the request is an active and valid source associated with the property in RentCafe.

### Resource Overview

| Method | URI Format |
|---|---|
| POST | /appointments|

### Usage
Use POST to create an appointment

### Parameters
When using the POST create method, you will be using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`firstName`|Yes|First name of prospect. Max=40 characters|
|`middleName`|No|Middle name of prospect. Max=40 characters|
|`lastName`|Yes|Last name of prospect. Max=40 characters|
|`email`|Yes|Email address of prospect. Max=80 characters|
|`phone`|No|The phone number collected from the prospect. RentCafe inserts this phone number into either a home phone, cellphone, or office phone field in the client’s database, based on the client’s RentCafe setup. Phone number can be up to 17 digits long.|
|`apptDate`|Yes|Date for the prospect’s scheduled appointment.  Dates use the format: mm/dd/yyyy (for example, 01/31/2024)|
|`apptTime`|Yes|Time of the prospect’s schedule appointment. Times use the format: hh:mmAM/PM (For example, “01:30PM”)|
|`apartmentName`|No|The apartment to have linked to the appointment. If the apartmentName provided is valid for that tour type, then the Appointment record will indicate which unit was shown.  If the apartmentName provided is not a valid unit for that tour type, a 406 error will be returned.  The getpropertyconfiguration endpoint can be used to get the list of valid sgtUnits to use in the apartmentName field for noting the unit associated with self-guided tours.|
|`agent`|No|The leasing agent assigned to the prospect. If not provided, the default agent assigned to the property will be used. If no default agent exists, the agent will be “Property Website”|
|`message`|No|Additional details provided by the prospect when scheduling the appointment. Max=255 characters for all non-Voyager 7S properties Max=2000 characters if property is on Voyager 7S|
|`source`|No|Primary marketing source that you want to credit on the prospect's record. This should match the client's marketing source for the property. If not supplied, the default property website source will be used. If no default property website source exists, the source will be 'Property Website'. Max characters=50|
|`result`|No|The contact result to have linked to the creation of the prospect|
|`desiredMoveinDate`|No|Date when the prospect wants to move in. Dates use the format: mm/dd/yyyy|
|`desiredBedrooms`|No|The number of bedrooms that the prospect wants in their unit.|
|`tourTypes`|No|Type of tour which the prospect scheduled. If you exclude this parameter, the tour type will show as a guided tour. 0=Guided Tour. This is an in-person tour of the property with a leasing agent from the property. 1=Self-Guided Tour. This is a self- directed in-person tour of a specific unit at the property. 2=Live Video Tour. This is a virtual tour of the property with a leasing agent from the property. 3=Virtual Tour. This is a virtual 360 or video tour of the property.|
|`preferredMoC`|No|Preferred method of contact. 0=None, 1=Call, 2=Text and 3=Email|
|`addr1`|No|First line of address. Max=40 characters|
|`addr2`|No|Second line of address. Max=40 characters|
|`state`|No|State. Max= 4 characters (2 characters for the state abbreviation and 2 optional characters).|
|`city`|No|City. Max=30 characters|
|`zipCode`|No|ZIP code. Max=12 characters|
|`country`|No|Country code. Max=2 characters|

### Examples:

### POST (create)

```
curl -L -g -X POST '/appointments' \
  -H 'Authorization: token 3959a0c5-3e37-4900-8c45-7046fec1e659' \
  -H 'Content-Type: application/json'
--data '{
    ...
}'
```

**Response**

| Field Name | Datatype |
|---|---|
|errorCode| Integer |
|errorMessage| String |
|prospectInfo| Prospect info object|

**Prospect Info**

| Field Name | Datatype | Description|
|---|---|---|
|rentcafeProspectId| Integer | RentCafe prospect identifier number. Example : "RentcafeProspectId":"67895345" |
|voyProspectId| Integer |Voyager prospect identifier number. Example : "voyProspectId":"45786" |
|voyProspectCode| String | Voyager prospect code. Example : "voyProspectCode":"p0064678" |
|isProspectMatch| Bool | Indicates if the prospect was matched with an existing record. If true, then no new prospect record will be created as they already exist, per design. In addition, the details presented above would be of the existing prospect. If false, then a new prospect record will be created. Example : "isProspectMatch":true |
|prospectMatchNotes| String | If a prospect match occurred, provides the criteria used to perform the match. Example : "prospectMatchNotes":"Unique Last Name and Email" |
|voyProspectApptId| Integer | Voyager appointment identifier number. Example : "voyProspectApptId":"7864589" |
|apartmentName| String | Apartment name that the appointment is associated with. Only self-guided tours are assigned a unit. All other tour types are not assigned a unit. Example : "apartmentName":"101-C" |



#### Example Response

```javascript
{
  "errorCode": 200,
  "errorMessage": "string",
  "prospectInfo": {
    "rentcafeProspectId": 0,
    "voyProspectId": 0,
    "voyProspectCode": "string",
    "isProspectMatch": true,
    "prospectMatchNotes": "string",
    "voyProspectApptId": 0,
    "apartmentName": "string"
  }
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
