### Call Events
**`Call Events`** object returns call data for potential customers placing calls to inquire about offerings related to a particular campaign. The API allows you to retrieve call events individually or as list. You can also create, update and delete call events.

**DISCLAIMER** - The update and delete methods of the API are no longer supported

**The Call Events Object**

> Example Response

```json
{
    "counts": {
        "unread": {
            "calls": 543,
            "chats": 556,
            "emails": 619,
            "web_events": 581,
            "total": 2299,
            "user_total": 0
        }
    },
    "lead_events": [
        {
            "id": 5288,
            "event_id": "1589",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "",
            "classification": "other",
            "platform": "USA",
            "campaign_id": "1231",
            "read": false,
            "flagged": false,
            "campaign_name": "Killer prices",
            "event_uri": "https://api.localiqservices.com/leads/call_events/5288",
            "source": "Organic Traffic",
            "caller_phone_number": "562.861.5742 x73119",
            "call_recording_url": "http://www.rl_record.com/1590",
            "event_time": "2018-06-15T17:16:20.000Z",
            "call_duration": 2514,
            "caller_name": "Loyal Murray DVM"
        },
        {
            "id": 5283,
            "event_id": "1579",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "",
            "classification": "unclassified",
            "platform": "USA",
            "campaign_id": "1231",
            "read": false,
            "flagged": false,
            "campaign_name": "Killer prices",
            "event_uri": "https://api.localiqservices.com/leads/call_events/5283",
            "source": "Organic Traffic",
            "caller_phone_number": "430.269.2225 x6481",
            "call_recording_url": "http://www.rl_record.com/1580",
            "event_time": "2018-06-15T16:29:30.000Z",
            "call_duration": 3274,
            "caller_name": "Clovis Casper"
        }
    ],
    "next_page": "https://api.localiqservices.com/leads/call_events?global_master_advertiser_id=TEST_1&per_page=50&last_event_seen=2018-06-13 12:52:385023&show_deleted=false"
}
```

An object consisting of the following properties:

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
counts | Object | no | An object containing unread lead event counts.
lead_events | Array | no | An array of lead event objects.
next_page | String | no | A link to the next page of results.

The **`counts`** object contains an unread object which contains unread counts for each of the lead event types. Below are definitions for each of the properties.

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
calls      | Integer  | no | Unread call count occurring within the last 30 days.
chats      | Integer  | no | Unread chat count occurring within the last 30 days.
emails     | Integer  | no | Unread email count occurring within the last 30 days.
web_events | Integer  | no | Count of unread web events occurring within the last 30 days.
total      | Integer  | no | Total number of leads for the requested GMAID (sum of calls, chats, emails, and web_events).
user_total | Integer  | no | Total unread leads count for the requested email across all GMAIDs.

The **`lead_events`** object contains data pertaining to a lead. Below are definitions for each of the properties.

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
id                          | Integer  | no | Unique identifier.
event_id                    | String   | no | Event Id.
deleted                     | Boolean  | no | Indicates wether or not a lead has been marked as deleted.
global_master_advertiser_id | String   | no | Global Master Advertiser Id.
global_master_campaign_id   | String   | no | Global Master Campaign Id.
note                        | String   | no | Event note.
classification              | Integer  | no | Event classification: unclassified, sale, lead, inquiry, or other.
platform                    | String   | no | Reach Local platform.
campaign_id                 | String   | no | Campaign Id.
read                        | Boolean  | no | Indicates if the event has been read.
flagged                     | Boolean  | no | Allows user to flag an event.
campaign_name               | String   | no | Campaign name.
event_uri                   | String   | no | URI for event.
source                      | String   | no | Campaign source.
caller_phone_number         | String   | no | Caller phone number.
call_recording_url          | String   | no | URL of the recorded call.
event_time                  | String   | no | Date and time of the event.
call_duration               | Integer  | no | Length of the call in seconds.
caller_name                 | String   | no | Name of the caller.
