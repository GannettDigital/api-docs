# Capture External Event API

Capture External Event API is a public ReachLocal external interface for vendors to use.

## Authorization - Capture External Event API

All requests must include an [Authorization](#authentication) header.

The email address used to obtain the OAuth access token must be associated with the GMAID of the requested advertiser.  If it is not, the API will return an HTTP response with status code 403 and the following body:

`{ "message": "Forbidden" }`

## Create Chat Event

This endpoint is used to create a chat event.

### HTTP Request

| Method | URI Format |
|---|---|
| POST | https://externalapi.reachlocal.com/api/chats |

### Post Body Parameters

Parameter | Required | Datatype | Nullable | Description
--------- | -------- | -------- | -------- | -----------
eventTime | yes  | string | no | The date/time in UTC that the chat started.
advertiserId | yes*  | string | no | The global master advertiser id (for example, USA_142687).
scopeId | yes*  | string | no | Legacy use only. The global master advertiser id (for example, USA_142687).
data | yes | string | no | A JSON hash representing the attributes for the chat. See the following section for detail.

\* Either advertiserId or scopeId must be present. 


This section defines the data parameter JSON hash.

Data Field | Required | Datatype | Nullable | Description
--------- | -------- | -------- | -------- | -----------
provider | yes | string | no | The name of the service provider i.e. Nanorep.
visitId | yes | string | no | The Reach Local visitId of the chat user.
chatDuration | yes | number | yes | The duration of the chat in seconds.
chatSummary | yes | string | no | A summary of the chat.
chatTextFull | yes | string | no | The full text of the chat.
chatVisitorEmail |yes | string | no | The email address of the visitor.
chatVisitorName | yes | string | no | The name of the chat visitor.
chatVisitorPhone | yes | string | no | The phone number for this chat visitor.

### Examples:

> Sample json payload for the POST request:

```json

{
  "eventTime": "2017-03-10T01:19:23Z",
  "advertiserId": "USA_523846",
  "scopeId": null,
  "data":  
    {
	    "provider": "NanoRep",
	    "visitId": "a3cad1a7-b61b-4eb4-b026-d3fd3e5ebf25",          
	    "chatDuration": 749.313,
	    "chatSummary": "Do you have any specials going on?",
	    "chatTextFull": "u000a[2/13/2017 10:55:24 AM] elaine: Hello, thanks for contacting St. Louis Car Dealership. My name is elaine, may I have your name?u000a  [3/9/2017 8:17:50 PM] System: All users have left the chat.",
	    "chatVisitorEmail": "minneapple@gmail.com",
	    "chatVisitorName": "Bob",
	    "chatVisitorPhone": "6592009999"
    }
  	    
}

```
