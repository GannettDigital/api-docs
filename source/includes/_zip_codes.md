## Zip Codes

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/zip_codes/[gmaid]?[query_params] |

Use GET to retrieve zip code. Data can be returned for a GMAID for a specific date range determined by start_date and end_date. Data is an array with all zip codes for, which have at least one walk in. This is a 5-digit zipcode that can be used in a zipcode filters in the target_geofence and conversion_zone_geofence report requests.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`global_master_campaign_id[]`| no |Restrict results to one or more specific campaigns|


### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/zip_codes/TEST_1?start_date=2022-04-01&end_date=2022-04-30
```

> Example Response

```javascript
{
    "report_type": "zip_codes",
    "report_date": "2022-10-06",
    "earliest_date_available": null,
    "start_date": "2022-10-01",
    "end_date": "2022-10-11",
    "time_zone": "America/Los_Angeles",
    "global_master_advertiser_id": "USA_258209",
    "report_data": {
        "zip_codes": [
            54194,
            54195
        ]
    }
}
```

### Zip codes

| Field Name | Datatype | Description |
|---|---|---|
|zip_codes | Array of Strings | zip code for based on the filter params |
