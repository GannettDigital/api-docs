### Email Events
**`Email Events`** object returns call data for potential customers using email to inquire about offerings related to a particular campaign. The API allows you to retrieve call events individually or as list. You can also create, update and delete call events.

**The Email Events Object**

> Example Response:

```json
{
    "counts": {
        "unread": {
            "calls": 0,
            "chats": 0,
            "emails": 0,
            "web_events": 0,
            "total": 0,
            "user_total": 0
        }
    },
    "lead_events": [
        {
            "id": 265,
            "event_id": "1196",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "Kill my boss? Do I dare live out the American dream?",
            "classification": "unclassified",
            "platform": "USA",
            "campaign_id": "1231",
            "read": false,
            "flagged": false,
            "campaign_name": "Premium prices",
            "event_uri": "https://api.reachlocalservices.com/leads/email_events/265",
            "source": "Organic Traffic",
            "sender_name": "Ettie McLaughlin",
            "sender_email": "oda@shanahan.io",
            "address": "Kozeyport, NH",
            "event_time": "2018-05-08T17:17:55.000Z"
        },
        {
            "id": 555,
            "event_id": "2410",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "",
            "classification": "unclassified",
            "platform": "USA",
            "campaign_id": "1232",
            "read": false,
            "flagged": false,
            "campaign_name": "Special savings",
            "event_uri": "https://api.reachlocalservices.com/leads/email_events/555",
            "source": "Organic Traffic",
            "sender_name": "Ms. Beth Waelchi",
            "sender_email": "felipe_padberg@rice.info",
            "address": "New Julio, OR",
            "event_time": "2018-05-08T15:14:41.000Z"
        }
    ],
    "next_page": "https://api.reachlocalservices.com/leads/email_events?global_master_advertiser_id=TEST_1&per_page=50&last_event_seen=2018-05-06 04:30:33584&show_deleted=false"
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
sender_name                 | String   | no | Name of the sender.
sender_email                | String   | no | Email address of the sender.
address                     | String   | no | Address associated with web site.
event_time                  | String   | no | Date and time of the event.
