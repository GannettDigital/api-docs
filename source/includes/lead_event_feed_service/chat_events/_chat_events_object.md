### Chat Events
**`Chat Events`** object returns chat data for potential customers using chat to inquire about offerings related to a particular campaign. The API allows you to retrieve call events individually or as list. You can also create, update and delete call events.

**The Chat Events Object**

> Example Response:

```json
{
    "counts": {
        "unread": {
            "calls": 541,
            "chats": 558,
            "emails": 622,
            "web_events": 599,
            "total": 2320,
            "user_total": 0
        }
    },
    "lead_events": [
        {
            "id": 580,
            "event_id": "3182",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "",
            "classification": "unclassified",
            "platform": "USA",
            "campaign_id": "1232",
            "read": false,
            "flagged": false,
            "campaign_name": "Premium promos",
            "event_uri": "https://api.localiqservices.com/leads/chat_events/580",
            "source": "Organic Traffic",
            "event_time": "2018-06-15T16:26:50.000Z",
            "lead_type": "",
            "lead_phone_number": "740-329-3026",
            "lead_email_address": "kiana_jenkins@abbott.co",
            "lead_name": "Ms. Norberto Hammes",
            "transcript": "Ipsum incidunt laboriosam quisquam vel molestiae. Accusantium consectetur quos. Aut voluptatem cupiditate. Rerum ipsa ipsam."
        },
        {
            "id": 575,
            "event_id": "3177",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "",
            "classification": "unclassified",
            "platform": "USA",
            "campaign_id": "1232",
            "read": false,
            "flagged": false,
            "campaign_name": "Premium promos",
            "event_uri": "https://api.localiqservices.com/leads/chat_events/575",
            "source": "Organic Traffic",
            "event_time": "2018-06-15T15:30:46.000Z",
            "lead_type": "",
            "lead_phone_number": "1-337-472-2312 x56916",
            "lead_email_address": "kyleigh.marks@romaguera.biz",
            "lead_name": "Royal Hickle Jr.",
            "transcript": "Laudantium omnis aut rem recusandae ab. Quasi culpa aspernatur itaque ut quisquam quidem placeat. Suscipit et facere minus vel. Cumque libero ut. Ut rem et beatae perspiciatis omnis."
        }
    ],
    "next_page": "https://api.localiqservices.com/leads/chat_events?global_master_advertiser_id=TEST_1&per_page=50&last_event_seen=2018-06-13 02:19:5122&show_deleted=false"
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
event_time                  | String   | no | Date and time of the event.
lead_type                   | String   | no | Lead type.
lead_phone_number           | String   | no | Lead phone number.
lead_phone_number           | String   | no | Lead phone number.
lead_name                   | String   | no | Name of the lead.
transcript                  | String   | no | URL of the recorded call.
