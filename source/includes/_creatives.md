## Creatives

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/creatives/[gmaid]?[query_params] |

Use GET to retrieve creative information for a specified GMAID.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Default | Description |
|---|---|---|---|
|`campaign_status[]`|No|all|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`.|
|`global_master_campaign_id[]`|No|--|Restrict results to one or more specific campaigns.|

### Response Data Details

> Retrieve data for creatives

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/creatives/TEST_1?start_date=2020-01-01&end_date=2020-01-10
```

> Retrieve data for a specific campaign

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/creatives/TEST_1?start_date=2020-01-01&end_date=2020-01-10&global_master_campaign_id[]=TEST_1
```
> Example Response

```json
{
    "report_type": "creatives",
    "report_date": "2020-09-08",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "global_master_advertiser_id": "TEST_1",
    "report_data": {
        "campaigns": [
            {
                "global_master_campaign_id": "TEST_-1038968",
                "name": "Gannett Display Campaign (Demo)",
                "creatives": [
                    {
                        "creative_id": 1,
                        "organization": "gannett",
                        "publisher_id": 1777,
                        "creative_name": "Creative (Demo) 1",
                        "url": "www.demo-rl-data.com/creative_1",
                        "width": 300,
                        "height": 250,
                        "updated_at": "2020-09-08T02:02:07.000Z",
                        "created_at": "2020-09-08T02:02:07.000Z"
                    },
                    {
                        "creative_id": 2,
                        "organization": "gannett",
                        "publisher_id": 1777,
                        "creative_name": "Creative (Demo) 2",
                        "url": "www.demo-rl-data.com/creative_2",
                        "width": 300,
                        "height": 250,
                        "updated_at": "2020-09-08T02:02:07.000Z",
                        "created_at": "2020-09-08T02:02:07.000Z"
                    }
                ]
            },
            {
                "global_master_campaign_id": "TEST_1038943",
                "name": "Display Campaign (Demo)",
                "creatives": [
                    {
                        "creative_id": 1,
                        "organization": "reachlocal",
                        "publisher_id": 9,
                        "creative_name": "Creative (Demo) 1",
                        "url": "www.demo-rl-data.com/creative_1",
                        "width": 300,
                        "height": 250,
                        "updated_at": "2020-09-08T02:00:42.000Z",
                        "created_at": "2020-09-08T02:00:42.000Z"
                    },
                    {
                        "creative_id": 2,
                        "organization": "reachlocal",
                        "publisher_id": 9,
                        "creative_name": "Creative (Demo) 2",
                        "url": "www.demo-rl-data.com/creative_2",
                        "width": 300,
                        "height": 250,
                        "updated_at": "2020-09-08T02:01:21.000Z",
                        "created_at": "2020-09-08T02:01:21.000Z"
                    }
                ]
            },
            {
                "global_master_campaign_id": "TEST_1038965",
                "name": "Facebook Campaign (Demo)",
                "creatives": []
            },
            {
                "global_master_campaign_id": "TEST_1038971",
                "name": "Geofence Campaign (Demo)",
                "creatives": []
            },
            {
                "global_master_campaign_id": "TEST_1038974",
                "name": "Youtube Campaign (Demo)",
                "creatives": []
            }
        ]
    }
}
```

**Campaigns**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|global_master_campaign_id | String | no | Identifier for campaign |
|name | String | no | Campaign name |
|creatives | Creative[] | no | List of Creatives |

**Creatives**

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|creative_id | Int | no | Identifier for creative |
|organization | String | no | Organization |
|publisher_id | Int | no | Identifier for publisher_id |
|creative_name | String | yes | Name of creative |
|url | String | yes | URL for creative preview |
|width | Int | yes | Width of creative (pixels) |
|height | Int | yes | Height of creative (pixels) |
|updated_at | Date | no | Updated at time |
|created_at | Date | no | Created at time |

**Urls for Previews**

**Facebook**

When a publisher_id is 38, the creative is for Facebook.  The URL when called will return results with an `iframe src` field that contains the URL to the creative preview.  Facebook Ad Previews only last for 24 hours before they must be regenerated.

**Gannett Creatives**

When a publisher_id is 1777, 2117, 2118, the URL provided will return the creative preview link.

**Other Creatives**

If the URL is file location, it's where the file is located on the NFS.  This currently isn't available.
