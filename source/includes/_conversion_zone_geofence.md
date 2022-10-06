## Conversion Zone Geofence

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/conversion_zone_geofence/[gmaid]?[query_params] |

Use GET to retrieve information for conversion zone geofences. Data can be returned for a GMAID for a specific date range determined by start_date and end_date. Data is a roll-up of metrics for each conversion fence (grouped by campaign) across the given date range.

*Note*: Only geofences with 1 or more walkins are included in this API.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`global_master_campaign_id[]`| no |Restrict results to one or more specific campaigns|
|`page_size`|No|Restrict number of keywords in result <br><b>Default value: 25</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|
|`sort_by`|No|Specifies what column to sort by.  Valid columns are: `walk_ins`, `name`, `cpw`, `spend` <br><b>Default value: `walk_ins`</b>|
|`sort_dir`|No|Specifies the sort direction.  Can be either `asc` or `desc` <br><b>Default value: `desc`</b>|
|`zip_code`|No|Specifies the zip code of conversion fence.</b>|


### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/conversion_zone_geofence/TEST_1?start_date=2022-04-01&end_date=2022-04-30
```

> Example Response

```javascript
{
    "api_name": "conversion_zone_geofence",
    "api_run_date": "2022-11-19",
    "start_date": "2022-04-01",
    "end_date": "2022-04-30",
    "earliet_date_availabe": "2022-10-01",
    "time_zone": "America/Los_Angeles",
    "currency": "USD",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "page": 1,
    "page_size": 100,
    "total_count": 1,
    "total_pages": 1,
    "sort_by": "clicks",
    "sort_dir": "desc",
    "report_data": {
        "totals": [
            {
                "walk_ins": 34,
                "cpw": 2.94,
                "spend": 100.00
            }
        ],
         "conversion_fences": [
             {
                "name": "Conversion Fence (Demo) 1",
                "conversion_fence_id": 1,
                "global_master_campaign_id": -91190,
                "cycle_id": -91191,
                "campaign_name": "Gannett Display Campaign (Demo)",
                "walk_ins": 17,
                "cpw": 2.94,
                "spend": 50.00
             },
             {
                "name": "Conversion Fence (Demo) 2",
                "conversion_fence_id": 2,
                "global_master_campaign_id": 91166,
                "cycle_id": 91167,
                "campaign_name": "Display Campaign (Demo)",
                "geofence_name": "Geofence 1",
                "walk_ins": 17,
                "cpw": 2.94,
                "spend": 50.00
             }
        ]
    }
}
```

### Totals

| Field Name | Datatype | Description |
|---|---|---|
|walk_ins | Int | Total Walk-ins across date range |
|cpw | Float | <b>NOTE: The field is Nullable!</b> Cost per walk-in |
|spend | Float | <b>NOTE: The field is Nullable!</b> Spend |

### Conversion Fences

| Field Name | Datatype | Description |
|---|---|---
|name | String | Name |
|conversion_fence_id | Int | Identifier for Conversion Fence |
|global_master_campaign_id | Int | MCID for Conversion Fence |
|cycle_id | Int | Cycle id for Conversion Fence |
|campaign_name | String | Campaign name for Conversion Fence |
|geofence_name | String | Geofence name for Conversion Fence (non-Gannett campaigns only)|
|walk_ins | Int | Number of Walk-ins |
|cpw | Float | Cost per walk-in |
|spend | Float | Spend |

### Paging

| Field Name | Datatype | Description |
|---|---|---|
|page | Int | Which page is returned |
|page_size | Int | Conversion Zones Per Page |
|total_count | Int | Total of conversion zones (by campaign) across all pages |
|total_pages | Int | Number of pages |
