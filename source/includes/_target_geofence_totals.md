## Target Geofence Totals

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/target_geofence_totals/[gmaid]?[query_params] |

Use GET to retrieve information for target geofences totals. Data can be returned for a GMAID for a specific date range determined by start_date and end_date.  The requirements for these parameters are described below.

For paginated breakdown of data see <a name="target_geofences"></a>

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`global_master_campaign_id[]`| no |Restrict results to one or more specific campaigns|
|`publisher_plat_zipcode[]`|No|Specifies the zipcode+4 to filter by|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/target_geofence_totals/USA_105569?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific publisher_plat_zipcode

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/target_geofence_totals/USA_105569?start_date=2016-12-01&end_date=2016-12-31&publisher_plat_zipcode[]=5555-0001
```

> Example Response

```javascript
{
    "api_name": "target_geofence_totals",
    "api_run_date": "2022-11-19",
    "start_date": "2022-05-01",
    "end_date": "2022-05-30",
    "earliet_date_availabe": "2022-04-01",
    "time_zone": "America/Los_Angeles",
    "currency": "USD",
    "global_master_advertiser_id": "TEST_1",
    "advertiser_name": "Advertiser (Demo)",
    "report_data": {
      "impressions": 7970,
      "clicks": 56,
      "walk_ins": 34,
      "ctr": 0.5,
      "cpc": 0.6,
      "cpw": 0.7
      "cpm": 0.8, 
      "spend": 0.9
      "unique_households": 300,
      "household_frequency": 26.6,
      "target_geofences": 24
    }
}
```

*Totals*

| Field Name | Datatype | Description |
|---|---|---|
|clicks | Int | Total clicks |
|impressions | Int | Total impressions |
|ctr | Float | Overall Click-through Rate |
|cpc | Float | Cost Per Click |
|cpw | Float | Cost Per Walk-in |
|cpm | Float | Cost Per 1000 Impressions |
|walk_ins | Int | Total Walk-ins |
|target_geofences | Int | Total count of Target Geofences grouped by plat_zipcode |
| unique_households | Int | Total count of Unique Households |
| household_frequency | Float | Impressions divided by Unique Households |