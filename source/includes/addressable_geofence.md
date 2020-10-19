## Addressable Geofence

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/addressable_geofence/[gmaid]?[query_params] |
#### API Name: addressable_geofence
### Usage
Use GET to retrieve information for addressable geofences. Data can be returned for a GMAID for a specific date range determined by start_date and end_date.  The requirements for these parameters are described below.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Default | Description |
|---|---|---|---|
|`start_date`|Yes|--|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|--|Restricts the results to those occurring on or before this date.|
|`publisher_plat_zipcode[]`|No|--|Specifies the zipcode+4 to filter by|
|`conversion_fence[]`|No|--|Specifies the conversion_fence to filter by|
|`page_size`|No|25|Restrict number of keywords in result |
|`page`|No|1|Specifies which page of results to return |
|`sort_by`|No|`publisher_plat_zipcode`|Specifies what column to sort by.  Valid columns are: `publisher_plat_zipcode`, `clicks`, `impressions`, and `ctr`|
|`sort_dir`|No|`asc`|Specifies the sort direction.  Can be either `asc` or `desc`|

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/addressable_geofence/USA_105569?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/publisher_plat_zipcode/USA_105569?start_date=2016-12-01&end_date=2016-12-31&publisher_plat_zipcode[]=5555-0001
```

> Response Description

### Totals

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|clicks | Int | no | Total clicks |
|impressions | Int | no | Total impressions |
|ctr | Float | no | Overall Click-through Rate |
|walk_ins | Float | Int | Total Walk-ins |
|addressable_geofences | Int | yes | Total count of Addressable Geofences |

### Addressable Geofence

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|line_item_id | Int | no | Identifier for Line Item |
|line_item_name | String | no | name of Line Item |
|publisher_plat_zipcode | String | no | Zip Code |
|publisher_plat_city | String | no | City |
|publisher_plat_state | String | no | State |
|impressions | Float | no | Number of Impressions |
|clicks | Int | no | Number of Clicks |
|walk_ins | Int | no | Number of Walk-ins |
|ctr | Float | no | Click-through Rate |
|conversion_fences | Array | no | Array of Conversion Fences |

### Conversion Fence

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|name | Int | no | Name |
|conversion_fence_id | String | no | Identifier for Conversion Fence |
|walk_ins | String | no | Number of Walk-ins |

### Available Addressable Geofence
All available addressable geofences for GMAID identified by publisher_plat_zipcode
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|publisher_plat_zipcode | Int | no | Zip of Addressable Geofence |

### Available Conversion Fences
All available conversion fences for GMAID
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|conversion_fence_id | Int | no | Identifier for Conversion Fence |
|name | Int | no | Name |

### Paging
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|page | Int | no | Which Page is Returned |
|page_size | Int | no | How Many Addressable Geofences Per Page |
|total_count | Int | no | Overall Total of Geofences for All Pages |
|total_pages | Int | no | Number of Pages |

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
