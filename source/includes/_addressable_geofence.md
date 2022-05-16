## Addressable Geofence

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/addressable_geofence/[gmaid]?[query_params] |

Use GET to retrieve information for addressable geofences. Data can be returned for a GMAID for a specific date range determined by start_date and end_date.  The requirements for these parameters are described below.

*Note*: Only geofences that more than 1 impression or more than 0 clicks or weighted_actions are included in this API.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`global_master_campaign_id[]`| no |Restrict results to one or more specific campaigns|
|`publisher_plat_zipcode[]`|No|Specifies the zipcode+4 to filter by|
|`conversion_fence[]`|No|Specifies the conversion_fence to filter by|
|`page_size`|No|Restrict number of keywords in result <br><b>Default value: 25</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|
|`sort_by`|No|Specifies what column to sort by.  Valid columns are: `publisher_plat_zipcode`, `clicks`, `impressions`, and `ctr` <br><b>Default value: `publisher_plat_zipcode`</b>|
|`sort_dir`|No|Specifies the sort direction.  Can be either `asc` or `desc` <br><b>Default value: `asc`</b>|

*Note*: Maximum date range for this API is 31 days.

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/addressable_geofence/USA_105569?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/addressable_geofence/USA_105569?start_date=2016-12-01&end_date=2016-12-31&publisher_plat_zipcode[]=5555-0001
```

> Example Response

```javascript
{
    "api_name": "addressable_geofence",
    "api_run_date": "2020-11-19",
    "start_date": "2020-11-01",
    "end_date": "2020-11-30",
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
                "impressions": 7970,
                "clicks": 56,
                "walk_ins": 34,
                "ctr": 0.7,
                "addressable_geofences": 1
            }
        ],
        "addressable_geofences": [
            {
                "line_item_id": 1,
                "line_item_name": "Line Item (Demo) 1",
                "publisher_plat_zipcode": "55401",
                "publisher_plat_city": "Minneapolis",
                "publisher_plat_state": "MN",
                "impressions": 7970,
                "clicks": 56,
                "walk_ins": 34,
                "ctr": 0.7,
                "conversion_fences": [
                    {
                        "name": "Conversion Fence (Demo) 1",
                        "conversion_fence_id": 1,
                        "walk_ins": 17
                    },
                    {
                        "name": "Conversion Fence (Demo) 2",
                        "conversion_fence_id": 2,
                        "walk_ins": 17
                    }
                ]
            }
        ]
    }
}
```

*Totals*

| Field Name | Datatype | Description |
|---|---|---|
|clicks | Int | Total clicks |
|impressions | Int | Total impressions |
|ctr | Float | Overall Click-through Rate |
|walk_ins | Float | Total Walk-ins |
|addressable_geofences | Int | yes | <b>NOTE: The field is Nullable!</b> Total count of Addressable Geofences |

*Addressable Geofence*

| Field Name | Datatype | Description |
|---|---|---
|line_item_id | Int | Identifier for Line Item |
|line_item_name | String | name of Line Item |
|publisher_plat_zipcode | String | Zip Code |
|publisher_plat_city | String | City |
|publisher_plat_state | String | State |
|impressions | Float | Number of Impressions |
|clicks | Int | Number of Clicks |
|walk_ins | Int | Number of Walk-ins |
|ctr | Float | Click-through Rate |
|conversion_fences | Array | Array of Conversion Fences |

*Conversion Fence*

| Field Name | Datatype | Description |
|---|---|---
|name | Int | Name |
|conversion_fence_id | String | Identifier for Conversion Fence |
|walk_ins | String | Number of Walk-ins |

### Available Addressable Geofence
All available addressable geofences for GMAID identified by publisher_plat_zipcode
| Field Name | Datatype | Description |
|---|---|---|
|publisher_plat_zipcode | Int | Zip of Addressable Geofence |

### Available Conversion Fences
All available conversion fences for GMAID
| Field Name | Datatype | Description |
|---|---|---|
|conversion_fence_id | Int | Identifier for Conversion Fence |
|name | Int | Name |

### Paging
| Field Name | Datatype | Description |
|---|---|---|
|page | Int | Which Page is Returned |
|page_size | Int | How Many Addressable Geofences Per Page |
|total_count | Int | Overall Total of Geofences for All Pages |
|total_pages | Int | Number of Pages |

##### Example Response

```javascript
{
    "api_name": "addressable_geofence",
    "api_run_date": "2020-07-24",
    "earliest_date_available": "2020-07-10",
    "start_date": "2020-07-01",
    "end_date": "2020-07-31",
    "time_zone": "America/Los_Angeles",
    "currency": "USD",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "page": 1,
    "page_size": 25,
    "total_count": 2,
    "total_pages": 1,
    "sort_by": "publisher_plat_zipcode",
    "sort_dir": "asc",
    "report_data": {
        "totals": [
            {
                "impressions": 8539,
                "clicks": 92,
                "walk_ins": 45,
                "ctr": 1.08,
                "addressable_geofences": 2
            }
        ],
        "addressable_geofences": [
            {
                "line_item_id": 1,
                "line_item_name": "Line Item (Demo) 1",
                "publisher_plat_zipcode": "55101",
                "publisher_plat_city": "St. Paul",
                "publisher_plat_state": "MN",
                "impressions": 5542,
                "clicks": 70,
                "walk_ins": 30,
                "ctr": 1.26,
                "conversion_fences": [
                    {
                        "name": "Conversion Fense (Demo) 1",
                        "conversion_fence_id": 1,
                        "walk_ins": 30
                    }
                ]
            },
            {
                "line_item_id": 1,
                "line_item_name": "Line Item (Demo) 1",
                "publisher_plat_zipcode": "55401",
                "publisher_plat_city": "Minneapolis",
                "publisher_plat_state": "MN",
                "impressions": 2997,
                "clicks": 22,
                "walk_ins": 15,
                "ctr": 0.73,
                "conversion_fences": [
                    {
                        "name": "Conversion Fense (Demo) 1",
                        "conversion_fence_id": 1,
                        "walk_ins": 15
                    }
                ]
            }
        ],
        "available_addressable_geofences": [
            {
                "publisher_plat_zipcode": "55101"
            },
            {
                "publisher_plat_zipcode": "55401"
            }
        ],
        "available_conversion_fences": [
            {
                "conversion_fence_id": 1,
                "name": "Conversion Fense (Demo) 1"
            }
        ]
    }
}
```
