## Lsa breakdowns

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/lsa/[gmaid]?[query_params] |

Use GET to retrieve lsa breakdowns. Data can be returned for a GMAID for a specific date range determined by start_date and end_date. Data is a totals object, that contains several metric breakdowns.

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
https://api.localiqservices.com/client_reports/lsa/TEST_1?start_date=2022-04-01&end_date=2022-04-30
```

> Example Response

```javascript
{
    "report_type": "lsa",
    "report_date": "2022-10-17",
    "start_date": "2022-10-01",
    "end_date": "2022-10-20",
    "time_zone": "America/Los_Angeles",
    "global_master_advertiser_id": "USA_293927",
    "report_data": {
        "totals": {
            "job_types": {
                "none": 6
            },
            "lead_category": {
                "none": 1,
                "electrician": 5
            },
            "zip_code": {
                "none": 5,
                "99301": 1
            },
            "geo": {
                "United States": {
                    "Washington": {
                        "Burbank": 6
                    }
                }
            },
            "lsas_by_time_and_day": {
                "tuesday": {
                    "0": 0,
                    "1": 0,
                    "2": 0,
                    "3": 0,
                    "4": 0,
                    "5": 0,
                    "6": 0,
                    "7": 0,
                    "8": 0,
                    "9": 0,
                    "10": 0,
                    "11": 0,
                    "12": 0,
                    "13": 0,
                    "14": 0,
                    "15": 0,
                    "16": 0,
                    "17": 0,
                    "18": 0,
                    "19": 0,
                    "20": 0,
                    "21": 0,
                    "22": 0,
                    "23": 2
                },
                "wednesday": {
                    "0": 0,
                    "1": 0,
                    "2": 0,
                    "3": 0,
                    "4": 0,
                    "5": 0,
                    "6": 0,
                    "7": 0,
                    "8": 0,
                    "9": 0,
                    "10": 0,
                    "11": 0,
                    "12": 0,
                    "13": 0,
                    "14": 0,
                    "15": 1,
                    "16": 0,
                    "17": 0,
                    "18": 0,
                    "19": 0,
                    "20": 2,
                    "21": 0,
                    "22": 1,
                    "23": 0
                },
                "max": 2
            }
        }
    }
}
```

### Response Data

**Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|job_types|Object| Breakdown of the count of every lsa job type for the given date range|
|lead_category|Object| Breakdown of the count of every lsa lead category for the given date range|
|zip_code|Object| Breakdown of the count of every lsa zip code for the given date range|
|geo|Object| Breakdown of the count of every lsa for every country, state and city, that contains it|
|lsas_by_time_and_day|Object| Breakdown of the count of lsas for every hour of the day of every day, that has an lsa events  |

