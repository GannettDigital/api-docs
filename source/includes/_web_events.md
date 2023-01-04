### Web Events

**DISCLAIMER** - This API is no longer supported

**`Web Events`** object returns web data for potential customers using the web to inquire about offerings related to a particular campaign. The API allows you to retrieve call events individually or as list. You can also create, update and delete call events.

**The Web Events Object**

> Example Response:

```json
{
    "counts": {},
    "lead_events": [
        {
            "id": 4,
            "event_id": "135",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "",
            "classification": "sale",
            "platform": "USA",
            "campaign_id": "1230",
            "read": false,
            "flagged": false,
            "campaign_name": "Killer sales",
            "event_uri": "https://api.localiqservices.com/leads/web_events/4",
            "source": "Organic Traffic",
            "name": "Ward-Gaylord",
            "referring_url": "http://champlin.biz/pickled",
            "address": "",
            "event_time": "2018-05-08T15:40:05.000Z"
        },
        {
            "id": 562,
            "event_id": "2423",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "Soong peetch alay. (It's too late.)",
            "classification": "unclassified",
            "platform": "USA",
            "campaign_id": "1232",
            "read": false,
            "flagged": false,
            "campaign_name": "Special savings",
            "event_uri": "https://api.localiqservices.com/leads/web_events/562",
            "source": "Organic Traffic",
            "name": "Brown Group",
            "referring_url": "http://rutherford.co/vice",
            "address": "",
            "event_time": "2018-05-08T13:49:44.000Z"
        }
    ],
    "next_page": "https://api.localiqservices.com/leads/web_events?global_master_advertiser_id=TEST_1&per_page=50&last_event_seen=2018-05-06 19:51:02584&show_deleted=false"
}
```

An object consisting of the following properties:

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
counts | Object | no | An object containing unread lead event counts.
lead_events | Array | no | An array of lead event objects.
next_page | String | no | A link to the next page of results.


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
name                        | String   | no | Web event name.
referring_url               | String   | no | Referring url.
address                     | String   | no | Address associated with web site.
event_time                  | String   | no | Date and time of the event.
