## Lead Paths

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/lead_paths/[gmaid]?[query_params] |

Use GET to retrieve information for the Lead Paths API.  Data can be returned for a GMAID for a specific date range determined by start_date and end_date. The requirements for these parameters are described below.

Given a GMAID and a date range, the API will return the lead paths, path_ids, number of path occurrences, and how many unique visitors per lead path.

When passed lead_event_ids, the API will return the lead paths, lead_event_id, lead_occurrence_time, and path_id of the lead_event_ids passed in.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`lead_event_ids[]`|No|Restrict results to the specified lead_event_ids|


### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/lead_paths/USA_1234?start_date=2020-09-11&end_date=2023-09-11
```

> Response Description

The paths array contains can contain many paths objects. Below are definitions for the properties of a paths object.

> Example Response

##### Example Response without lead_event_ids

```javascript
{
    "report_type": "lead_paths",
    "report_date": "2022-11-04",
    "earliest_date_available": null,
    "start_date": "2020-09-11",
    "end_date": "2023-09-11",
    "time_zone": "America/Los_Angeles",
    "global_master_advertiser_id": "USA_1234",
    "lead_event_id": [],
    "report_data": {
        "paths": [
            {
                "count": 15,
                "visits": null,
                "unique_visitor_count": 0
            },
            {
                "count": 1,
                "visits": [
                    {
                        "event_count": 1,
                        "referrer_source": "Organic",
                        "referrer_type": "Other",
                        "web_publisher_campaign_id": null
                    }
                ],
                "unique_visitor_count": 1
            },
            {
                "count": 3,
                "visits": [
                    {
                        "event_count": 1,
                        "referrer_source": "Paid",
                        "referrer_type": null,
                        "web_publisher_campaign_id": "USA_1234"
                    }
                ],
                "unique_visitor_count": 2
            }
        ]
    }
}
```

##### Example Response with lead_event_ids

> Retrieve data for a specific lead_event_ids

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/lead_paths/USA_123?lead_event_ids[]=ea32cd1s-4d19-12aa-bb12-3d1234567ab0&lead_event_ids[]=ab12cd3d-4b24-45aa-cc67-8d1234567ab0
```

> Response Description

```javascript
{
    "report_type": "lead_paths",
    "report_date": "2022-11-04",
    "earliest_date_available": null,
    "start_date": "2020-09-11",
    "end_date": "2023-09-11",
    "time_zone": "America/Los_Angeles",
    "global_master_advertiser_id": "USA_2246",
    "lead_event_id": [
        "ea32cd1s-4d19-12aa-bb12-3d1234567ab0",
        "ab12cd3d-4b24-45aa-cc67-8d1234567ab0"
    ],
    "report_data": {
        "paths": [
            {
                "visits": [
                    {
                        "event_count": 1,
                        "referrer_source": "Paid",
                        "referrer_type": null,
                        "web_publisher_campaign_id": "USA_611439"
                    }
                ],
                "lead_occurrence_time": "2022-07-12T00:08:57.000Z",
                "lead_event_id": "ea32cd1s-4d19-12aa-bb12-3d1234567ab0"
            },
            {
                "visits": [
                    {
                        "event_count": 1,
                        "referrer_source": "Organic",
                        "referrer_type": "Other",
                        "web_publisher_campaign_id": null
                    }
                ],
                "lead_occurrence_time": "2022-09-15T12:05:20.000Z",
                "lead_event_id": "ab12cd3d-4b24-45aa-cc67-8d1234567ab0"
            }
        ]
    }
}
```

### Paths
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|count | Int | no | Number of occurrences of path|
|path | String | no | A concatenation of the events of a path.|
|unique_visitor_count | Int | no | Number of unique visitors for the lead path.|
|lead_event_id | String | no | The lead_event_id of the path.|

### Events
A path consists of a collection of events.  An event contains the number of times it occurred in succession, the Referrer Source and the Referrer Type. Below are definitions for the properties of an event object.
_**Note**: If an event object is empty, there was no lead path/tracking for the lead_event_id_

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|event_count | Int | no | Number of occurrences of the event in a row|
|referrer_source | String | yes | Referrering source of the Event.|
|referrer_type | Int | yes | Referrer Type of Event.|

##### Referrer Sources
| Description |
|---|
|Organic|
|Paid|
|NonRLPaid|
|Unavailable|

##### Referrer Types
| Description |
|---|
|Display|
|Search|
|Social|
|Directory|
|Other|
|Direct|
|Unavailable|
