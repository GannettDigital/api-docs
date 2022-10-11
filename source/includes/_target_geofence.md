## Target Geofence

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/target_geofence/[gmaid]?[query_params] |

Use GET to retrieve information for target geofences. Data can be returned for a GMAID for a specific date range determined by start_date and end_date.  The requirements for these parameters are described below.

*Note*: Only geofences that more than 1 impression or more than 0 clicks or weighted_actions are included in this API.

For calculated totals see [target_geofence_totals](https://github.com/GannettDigital/api-docs/blob/master/source/includes/_target_geofence_totals.md)
### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`global_master_campaign_id[]`| no |Restrict results to one or more specific campaigns|
|`publisher_plat_zipcode[]`|No|Specifies the zipcode+4 to filter by|
|`page_size`|No|Restrict number of keywords in result <br><b>Default value: 25</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|
|`sort_by`|No|Specifies what column to sort by.  Valid columns are: `publisher_plat_zipcode`, `clicks`, `impressions`, and `ctr` <br><b>Default value: `publisher_plat_zipcode`</b>|
|`sort_dir`|No|Specifies the sort direction.  Can be either `asc` or `desc` <br><b>Default value: `asc`</b>|
|`zip_code`|No|Specifies the zip code of conversion fence (not zip+4).</b>|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/target_geofence/USA_105569?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/target_geofence/USA_105569?start_date=2016-12-01&end_date=2016-12-31&publisher_plat_zipcode[]=5555-0001
```

> Example Response

```javascript
{
    "api_name": "target_geofence",
    "api_run_date": "2020-11-19",
    "start_date": "2020-11-01",
    "end_date": "2020-11-30",
    "earliet_date_availabe": "2020-10-01",
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
        "target_geofences": [
            {
                "name" : "Geofence 1",
                "campaign_name" : "Campaign Name",
                "global_master_campaign_id" : "TEST_12341",
                "publisher_plat_zipcode": "55401",
                "publisher_plat_city": "Minneapolis",
                "publisher_plat_state": "MN",
                "geofence_id": 1234,
                "impressions": 7970,
                "clicks": 56,
                "walk_ins": 34,
                "ctr": 0.5,
                "cpc": 0.6,
                "cpw": 0.7
                "cpm": 0.8, 
                "spend": 0.9
            }
        ]
    }
}
```
*Target Geofence*

| Field Name | Datatype | Description |
|---|---|---|
|name | String | Name of Geofence <b>(will be null for addressable campaigns)</b> |
|publisher_plat_zipcode | String | Zip Code <b>(will be null for regular geofence campaigns)</b> |
|publisher_plat_city | String | City <b>(will be null for regular geofence campaigns)</b> |
|publisher_plat_state | String | State <b>(will be null for regular geofence campaigns)</b> |
|campaign_name | String | Name of the geofence activity associated campaign |
|global_master_campaign_id | String | The global master campaign id|
|impressions | Float | Number of Impressions |
|clicks | Int | Number of Clicks |
|walk_ins | Int | Number of Walk-ins |
|ctr | Float | Click-through Rate |
|cpc | Float | Cost per Click |
|cpw | Float | Cost per Walk-in |
|cpm | Float | Cost per Milli |
|spend | Float | Spend <b>(will only be available for RL campaigns)</b> |
```
