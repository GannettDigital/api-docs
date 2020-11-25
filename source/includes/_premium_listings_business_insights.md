### Insights

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/business/[gmaid]/insights?[query_params]

#### API Name: business_insights
#### Usage
Use GET to retrieve business insights data for a GMAID, that comes from the Uberall API and will be filtered by a specific date range determined by start date and end date.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

This report will show the facebook and google metrics for the particular gmaid for the interval between the start_date and the end_date. Every metric would contain a name property and a data property in which would be shown how many times (count) the metrics has been used for the particular period (interval_size). In the case of the example it would show the usage count of the metrics for a DAY between the start_date and the end_date. 

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`interval_size`|No| How to group the results, one of: HOUR (only for ACTIONS_PHONE), DAY, WEEK, MONTH or YEAR (DEFAULT DAY)|

#### Examples

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/client_reports/premium_listings/business/GMAID/insights' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings_business_insights",
    "report_date": "2020-04-03",
    "global_master_advertiser_id": "TEST_1234",
    "report_data": {
        "facebook":{
            "metrics":[]
        },
       "google":{
            "metrics": [
                {
                    "name": "QUERIES_CHAIN",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 0
                        },
                        {
                            "period": "2020-04-02",
                            "count": 0
                        },
                        {
                            "period": "2020-04-03",
                            "count": 0
                        },
                        {
                            "period": "2020-04-04",
                            "count": 0
                        },
                        {
                            "period": "2020-04-05",
                            "count": 0
                        },
                        {
                            "period": "2020-04-06",
                            "count": 0
                        },
                        {
                            "period": "2020-04-07",
                            "count": 0
                        },
                        {
                            "period": "2020-04-08",
                            "count": 1
                        },
                        {
                            "period": "2020-04-09",
                            "count": 1
                        },
                        {
                            "period": "2020-04-10",
                            "count": 0
                        },
                        {
                            "period": "2020-04-11",
                            "count": 0
                        },
                        {
                            "period": "2020-04-12",
                            "count": 1
                        },
                        {
                            "period": "2020-04-13",
                            "count": 1
                        },
                        {
                            "period": "2020-04-14",
                            "count": 0
                        },
                        {
                            "period": "2020-04-15",
                            "count": 1
                        },
                        {
                            "period": "2020-04-16",
                            "count": 2
                        },
                        {
                            "period": "2020-04-17",
                            "count": 0
                        },
                        {
                            "period": "2020-04-18",
                            "count": 0
                        },
                        {
                            "period": "2020-04-19",
                            "count": 0
                        },
                        {
                            "period": "2020-04-20",
                            "count": 0
                        },
                        {
                            "period": "2020-04-21",
                            "count": 0
                        },
                        {
                            "period": "2020-04-22",
                            "count": 0
                        },
                        {
                            "period": "2020-04-23",
                            "count": 2
                        },
                        {
                            "period": "2020-04-24",
                            "count": 2
                        },
                        {
                            "period": "2020-04-25",
                            "count": 0
                        },
                        {
                            "period": "2020-04-26",
                            "count": 1
                        },
                        {
                            "period": "2020-04-27",
                            "count": 0
                        },
                        {
                            "period": "2020-04-28",
                            "count": 1
                        },
                        {
                            "period": "2020-04-29",
                            "count": 0
                        },
                        {
                            "period": "2020-04-30",
                            "count": 0
                        },
                        {
                            "period": "2020-05-01",
                            "count": 0
                        },
                        {
                            "period": "2020-05-02",
                            "count": 0
                        },
                        {
                            "period": "2020-05-03",
                            "count": 0
                        },
                        {
                            "period": "2020-05-04",
                            "count": 1
                        },
                        {
                            "period": "2020-05-05",
                            "count": 0
                        },
                        {
                            "period": "2020-05-06",
                            "count": 2
                        },
                        {
                            "period": "2020-05-07",
                            "count": 1
                        },
                        {
                            "period": "2020-05-08",
                            "count": 1
                        },
                        {
                            "period": "2020-05-09",
                            "count": 1
                        },
                        {
                            "period": "2020-05-10",
                            "count": 0
                        },
                        {
                            "period": "2020-05-11",
                            "count": 0
                        },
                        {
                            "period": "2020-05-12",
                            "count": 2
                        },
                        {
                            "period": "2020-05-13",
                            "count": 0
                        },
                        {
                            "period": "2020-05-14",
                            "count": 0
                        },
                        {
                            "period": "2020-05-15",
                            "count": 0
                        },
                        {
                            "period": "2020-05-16",
                            "count": 0
                        },
                        {
                            "period": "2020-05-17",
                            "count": 0
                        },
                        {
                            "period": "2020-05-18",
                            "count": 0
                        },
                        {
                            "period": "2020-05-19",
                            "count": 1
                        },
                        {
                            "period": "2020-05-20",
                            "count": 2
                        },
                        {
                            "period": "2020-05-21",
                            "count": 0
                        },
                        {
                            "period": "2020-05-22",
                            "count": 1
                        },
                        {
                            "period": "2020-05-23",
                            "count": 1
                        },
                        {
                            "period": "2020-05-24",
                            "count": 0
                        },
                        {
                            "period": "2020-05-25",
                            "count": 3
                        },
                        {
                            "period": "2020-05-26",
                            "count": 0
                        },
                        {
                            "period": "2020-05-27",
                            "count": 0
                        },
                        {
                            "period": "2020-05-28",
                            "count": 1
                        },
                        {
                            "period": "2020-05-29",
                            "count": 0
                        },
                        {
                            "period": "2020-05-30",
                            "count": 0
                        },
                        {
                            "period": "2020-05-31",
                            "count": 0
                        },
                        {
                            "period": "2020-06-01",
                            "count": 0
                        },
                        {
                            "period": "2020-06-02",
                            "count": 0
                        },
                        {
                            "period": "2020-06-03",
                            "count": 0
                        },
                        {
                            "period": "2020-06-04",
                            "count": 0
                        },
                        {
                            "period": "2020-06-05",
                            "count": 0
                        },
                        {
                            "period": "2020-06-06",
                            "count": 0
                        },
                        {
                            "period": "2020-06-07",
                            "count": 0
                        },
                        {
                            "period": "2020-06-08",
                            "count": 0
                        },
                        {
                            "period": "2020-06-09",
                            "count": 1
                        },
                        {
                            "period": "2020-06-10",
                            "count": 6
                        },
                        {
                            "period": "2020-06-11",
                            "count": 3
                        },
                        {
                            "period": "2020-06-12",
                            "count": 1
                        },
                        {
                            "period": "2020-06-13",
                            "count": 0
                        },
                        {
                            "period": "2020-06-14",
                            "count": 0
                        },
                        {
                            "period": "2020-06-15",
                            "count": 3
                        },
                        {
                            "period": "2020-06-16",
                            "count": 0
                        },
                        {
                            "period": "2020-06-17",
                            "count": 0
                        },
                        {
                            "period": "2020-06-18",
                            "count": 0
                        },
                        {
                            "period": "2020-06-19",
                            "count": 0
                        },
                        {
                            "period": "2020-06-20",
                            "count": 0
                        },
                        {
                            "period": "2020-06-21",
                            "count": 1
                        },
                        {
                            "period": "2020-06-22",
                            "count": 4
                        },
                        {
                            "period": "2020-06-23",
                            "count": 0
                        },
                        {
                            "period": "2020-06-24",
                            "count": 0
                        },
                        {
                            "period": "2020-06-25",
                            "count": 1
                        },
                        {
                            "period": "2020-06-26",
                            "count": 2
                        },
                        {
                            "period": "2020-06-27",
                            "count": 0
                        },
                        {
                            "period": "2020-06-28",
                            "count": 8
                        },
                        {
                            "period": "2020-06-29",
                            "count": 0
                        },
                        {
                            "period": "2020-06-30",
                            "count": 0
                        },
                        {
                            "period": "2020-07-01",
                            "count": 0
                        },
                        {
                            "period": "2020-07-02",
                            "count": 4
                        },
                        {
                            "period": "2020-07-03",
                            "count": 3
                        },
                        {
                            "period": "2020-07-04",
                            "count": 0
                        },
                        {
                            "period": "2020-07-05",
                            "count": 2
                        },
                        {
                            "period": "2020-07-06",
                            "count": 1
                        },
                        {
                            "period": "2020-07-07",
                            "count": 3
                        },
                        {
                            "period": "2020-07-08",
                            "count": 1
                        },
                        {
                            "period": "2020-07-09",
                            "count": 0
                        },
                        {
                            "period": "2020-07-10",
                            "count": 4
                        },
                        {
                            "period": "2020-07-11",
                            "count": 0
                        },
                        {
                            "period": "2020-07-12",
                            "count": 0
                        },
                        {
                            "period": "2020-07-13",
                            "count": 1
                        },
                        {
                            "period": "2020-07-14",
                            "count": 2
                        },
                        {
                            "period": "2020-07-15",
                            "count": 0
                        },
                        {
                            "period": "2020-07-16",
                            "count": 0
                        },
                        {
                            "period": "2020-07-17",
                            "count": 2
                        },
                        {
                            "period": "2020-07-18",
                            "count": 1
                        },
                        {
                            "period": "2020-07-19",
                            "count": 0
                        },
                        {
                            "period": "2020-07-20",
                            "count": 1
                        },
                        {
                            "period": "2020-07-21",
                            "count": 0
                        },
                        {
                            "period": "2020-07-22",
                            "count": 0
                        },
                        {
                            "period": "2020-07-23",
                            "count": 1
                        },
                        {
                            "period": "2020-07-24",
                            "count": 2
                        },
                        {
                            "period": "2020-07-25",
                            "count": 0
                        },
                        {
                            "period": "2020-07-26",
                            "count": 1
                        },
                        {
                            "period": "2020-07-27",
                            "count": 6
                        },
                        {
                            "period": "2020-07-28",
                            "count": 0
                        },
                        {
                            "period": "2020-07-29",
                            "count": 2
                        },
                        {
                            "period": "2020-07-30",
                            "count": 2
                        },
                        {
                            "period": "2020-07-31",
                            "count": 0
                        },
                        {
                            "period": "2020-08-01",
                            "count": 0
                        },
                        {
                            "period": "2020-08-02",
                            "count": 0
                        },
                        {
                            "period": "2020-08-03",
                            "count": 0
                        },
                        {
                            "period": "2020-08-04",
                            "count": 1
                        },
                        {
                            "period": "2020-08-05",
                            "count": 0
                        },
                        {
                            "period": "2020-08-06",
                            "count": 0
                        },
                        {
                            "period": "2020-08-07",
                            "count": 1
                        },
                        {
                            "period": "2020-08-08",
                            "count": 1
                        },
                        {
                            "period": "2020-08-09",
                            "count": 0
                        },
                        {
                            "period": "2020-08-10",
                            "count": 1
                        },
                        {
                            "period": "2020-08-11",
                            "count": 1
                        },
                        {
                            "period": "2020-08-12",
                            "count": 2
                        },
                        {
                            "period": "2020-08-13",
                            "count": 1
                        },
                        {
                            "period": "2020-08-14",
                            "count": 0
                        },
                        {
                            "period": "2020-08-15",
                            "count": 0
                        },
                        {
                            "period": "2020-08-16",
                            "count": 0
                        },
                        {
                            "period": "2020-08-17",
                            "count": 9
                        },
                        {
                            "period": "2020-08-18",
                            "count": 4
                        },
                        {
                            "period": "2020-08-19",
                            "count": 2
                        },
                        {
                            "period": "2020-08-20",
                            "count": 0
                        },
                        {
                            "period": "2020-08-21",
                            "count": 4
                        },
                        {
                            "period": "2020-08-22",
                            "count": 0
                        },
                        {
                            "period": "2020-08-23",
                            "count": 1
                        },
                        {
                            "period": "2020-08-24",
                            "count": 5
                        },
                        {
                            "period": "2020-08-25",
                            "count": 5
                        },
                        {
                            "period": "2020-08-26",
                            "count": 2
                        },
                        {
                            "period": "2020-08-27",
                            "count": 2
                        },
                        {
                            "period": "2020-08-28",
                            "count": 3
                        },
                        {
                            "period": "2020-08-29",
                            "count": 0
                        },
                        {
                            "period": "2020-08-30",
                            "count": 0
                        },
                        {
                            "period": "2020-08-31",
                            "count": 0
                        },
                        {
                            "period": "2020-09-01",
                            "count": 2
                        },
                        {
                            "period": "2020-09-02",
                            "count": 4
                        },
                        {
                            "period": "2020-09-03",
                            "count": 3
                        },
                        {
                            "period": "2020-09-04",
                            "count": 0
                        },
                        {
                            "period": "2020-09-05",
                            "count": 0
                        },
                        {
                            "period": "2020-09-06",
                            "count": 0
                        },
                        {
                            "period": "2020-09-07",
                            "count": 4
                        },
                        {
                            "period": "2020-09-08",
                            "count": 5
                        },
                        {
                            "period": "2020-09-09",
                            "count": 3
                        },
                        {
                            "period": "2020-09-10",
                            "count": 4
                        },
                        {
                            "period": "2020-09-11",
                            "count": 5
                        },
                        {
                            "period": "2020-09-12",
                            "count": 0
                        },
                        {
                            "period": "2020-09-13",
                            "count": 0
                        },
                        {
                            "period": "2020-09-14",
                            "count": 4
                        },
                        {
                            "period": "2020-09-15",
                            "count": 1
                        },
                        {
                            "period": "2020-09-16",
                            "count": 2
                        },
                        {
                            "period": "2020-09-17",
                            "count": 0
                        },
                        {
                            "period": "2020-09-18",
                            "count": 0
                        },
                        {
                            "period": "2020-09-19",
                            "count": 0
                        },
                        {
                            "period": "2020-09-20",
                            "count": 0
                        },
                        {
                            "period": "2020-09-21",
                            "count": 2
                        },
                        {
                            "period": "2020-09-22",
                            "count": 0
                        },
                        {
                            "period": "2020-09-23",
                            "count": 1
                        },
                        {
                            "period": "2020-09-24",
                            "count": 0
                        },
                        {
                            "period": "2020-09-25",
                            "count": 0
                        },
                        {
                            "period": "2020-09-26",
                            "count": 0
                        },
                        {
                            "period": "2020-09-27",
                            "count": 0
                        },
                        {
                            "period": "2020-09-28",
                            "count": 2
                        },
                        {
                            "period": "2020-09-29",
                            "count": 0
                        },
                        {
                            "period": "2020-09-30",
                            "count": 0
                        },
                        {
                            "period": "2020-10-01",
                            "count": 4
                        }
                    ]
                },
                {
                    "name": "QUERIES_DIRECT",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 25
                        },
                        {
                            "period": "2020-04-02",
                            "count": 27
                        },
                        {
                            "period": "2020-04-03",
                            "count": 15
                        },
                        {
                            "period": "2020-04-04",
                            "count": 1
                        },
                        {
                            "period": "2020-04-05",
                            "count": 15
                        },
                        {
                            "period": "2020-04-06",
                            "count": 20
                        },
                        {
                            "period": "2020-04-07",
                            "count": 24
                        },
                        {
                            "period": "2020-04-08",
                            "count": 18
                        },
                        {
                            "period": "2020-04-09",
                            "count": 31
                        },
                        {
                            "period": "2020-04-10",
                            "count": 28
                        },
                        {
                            "period": "2020-04-11",
                            "count": 8
                        },
                        {
                            "period": "2020-04-12",
                            "count": 12
                        },
                        {
                            "period": "2020-04-13",
                            "count": 12
                        },
                        {
                            "period": "2020-04-14",
                            "count": 29
                        },
                        {
                            "period": "2020-04-15",
                            "count": 22
                        },
                        {
                            "period": "2020-04-16",
                            "count": 31
                        },
                        {
                            "period": "2020-04-17",
                            "count": 46
                        },
                        {
                            "period": "2020-04-18",
                            "count": 8
                        },
                        {
                            "period": "2020-04-19",
                            "count": 7
                        },
                        {
                            "period": "2020-04-20",
                            "count": 41
                        },
                        {
                            "period": "2020-04-21",
                            "count": 41
                        },
                        {
                            "period": "2020-04-22",
                            "count": 34
                        },
                        {
                            "period": "2020-04-23",
                            "count": 25
                        },
                        {
                            "period": "2020-04-24",
                            "count": 44
                        },
                        {
                            "period": "2020-04-25",
                            "count": 22
                        },
                        {
                            "period": "2020-04-26",
                            "count": 20
                        },
                        {
                            "period": "2020-04-27",
                            "count": 41
                        },
                        {
                            "period": "2020-04-28",
                            "count": 30
                        },
                        {
                            "period": "2020-04-29",
                            "count": 25
                        },
                        {
                            "period": "2020-04-30",
                            "count": 20
                        },
                        {
                            "period": "2020-05-01",
                            "count": 22
                        },
                        {
                            "period": "2020-05-02",
                            "count": 18
                        },
                        {
                            "period": "2020-05-03",
                            "count": 5
                        },
                        {
                            "period": "2020-05-04",
                            "count": 18
                        },
                        {
                            "period": "2020-05-05",
                            "count": 25
                        },
                        {
                            "period": "2020-05-06",
                            "count": 18
                        },
                        {
                            "period": "2020-05-07",
                            "count": 35
                        },
                        {
                            "period": "2020-05-08",
                            "count": 29
                        },
                        {
                            "period": "2020-05-09",
                            "count": 4
                        },
                        {
                            "period": "2020-05-10",
                            "count": 17
                        },
                        {
                            "period": "2020-05-11",
                            "count": 34
                        },
                        {
                            "period": "2020-05-12",
                            "count": 46
                        },
                        {
                            "period": "2020-05-13",
                            "count": 42
                        },
                        {
                            "period": "2020-05-14",
                            "count": 27
                        },
                        {
                            "period": "2020-05-15",
                            "count": 19
                        },
                        {
                            "period": "2020-05-16",
                            "count": 12
                        },
                        {
                            "period": "2020-05-17",
                            "count": 8
                        },
                        {
                            "period": "2020-05-18",
                            "count": 19
                        },
                        {
                            "period": "2020-05-19",
                            "count": 33
                        },
                        {
                            "period": "2020-05-20",
                            "count": 25
                        },
                        {
                            "period": "2020-05-21",
                            "count": 24
                        },
                        {
                            "period": "2020-05-22",
                            "count": 24
                        },
                        {
                            "period": "2020-05-23",
                            "count": 17
                        },
                        {
                            "period": "2020-05-24",
                            "count": 14
                        },
                        {
                            "period": "2020-05-25",
                            "count": 14
                        },
                        {
                            "period": "2020-05-26",
                            "count": 47
                        },
                        {
                            "period": "2020-05-27",
                            "count": 61
                        },
                        {
                            "period": "2020-05-28",
                            "count": 53
                        },
                        {
                            "period": "2020-05-29",
                            "count": 12
                        },
                        {
                            "period": "2020-05-30",
                            "count": 13
                        },
                        {
                            "period": "2020-05-31",
                            "count": 17
                        },
                        {
                            "period": "2020-06-01",
                            "count": 30
                        },
                        {
                            "period": "2020-06-02",
                            "count": 50
                        },
                        {
                            "period": "2020-06-03",
                            "count": 21
                        },
                        {
                            "period": "2020-06-04",
                            "count": 51
                        },
                        {
                            "period": "2020-06-05",
                            "count": 36
                        },
                        {
                            "period": "2020-06-06",
                            "count": 21
                        },
                        {
                            "period": "2020-06-07",
                            "count": 16
                        },
                        {
                            "period": "2020-06-08",
                            "count": 64
                        },
                        {
                            "period": "2020-06-09",
                            "count": 44
                        },
                        {
                            "period": "2020-06-10",
                            "count": 71
                        },
                        {
                            "period": "2020-06-11",
                            "count": 53
                        },
                        {
                            "period": "2020-06-12",
                            "count": 64
                        },
                        {
                            "period": "2020-06-13",
                            "count": 6
                        },
                        {
                            "period": "2020-06-14",
                            "count": 23
                        },
                        {
                            "period": "2020-06-15",
                            "count": 50
                        },
                        {
                            "period": "2020-06-16",
                            "count": 51
                        },
                        {
                            "period": "2020-06-17",
                            "count": 43
                        },
                        {
                            "period": "2020-06-18",
                            "count": 44
                        },
                        {
                            "period": "2020-06-19",
                            "count": 36
                        },
                        {
                            "period": "2020-06-20",
                            "count": 12
                        },
                        {
                            "period": "2020-06-21",
                            "count": 16
                        },
                        {
                            "period": "2020-06-22",
                            "count": 97
                        },
                        {
                            "period": "2020-06-23",
                            "count": 37
                        },
                        {
                            "period": "2020-06-24",
                            "count": 68
                        },
                        {
                            "period": "2020-06-25",
                            "count": 82
                        },
                        {
                            "period": "2020-06-26",
                            "count": 53
                        },
                        {
                            "period": "2020-06-27",
                            "count": 19
                        },
                        {
                            "period": "2020-06-28",
                            "count": 26
                        },
                        {
                            "period": "2020-06-29",
                            "count": 60
                        },
                        {
                            "period": "2020-06-30",
                            "count": 34
                        },
                        {
                            "period": "2020-07-01",
                            "count": 39
                        },
                        {
                            "period": "2020-07-02",
                            "count": 33
                        },
                        {
                            "period": "2020-07-03",
                            "count": 40
                        },
                        {
                            "period": "2020-07-04",
                            "count": 9
                        },
                        {
                            "period": "2020-07-05",
                            "count": 20
                        },
                        {
                            "period": "2020-07-06",
                            "count": 73
                        },
                        {
                            "period": "2020-07-07",
                            "count": 74
                        },
                        {
                            "period": "2020-07-08",
                            "count": 52
                        },
                        {
                            "period": "2020-07-09",
                            "count": 69
                        },
                        {
                            "period": "2020-07-10",
                            "count": 50
                        },
                        {
                            "period": "2020-07-11",
                            "count": 38
                        },
                        {
                            "period": "2020-07-12",
                            "count": 24
                        },
                        {
                            "period": "2020-07-13",
                            "count": 90
                        },
                        {
                            "period": "2020-07-14",
                            "count": 120
                        },
                        {
                            "period": "2020-07-15",
                            "count": 87
                        },
                        {
                            "period": "2020-07-16",
                            "count": 66
                        },
                        {
                            "period": "2020-07-17",
                            "count": 77
                        },
                        {
                            "period": "2020-07-18",
                            "count": 16
                        },
                        {
                            "period": "2020-07-19",
                            "count": 17
                        },
                        {
                            "period": "2020-07-20",
                            "count": 99
                        },
                        {
                            "period": "2020-07-21",
                            "count": 79
                        },
                        {
                            "period": "2020-07-22",
                            "count": 62
                        },
                        {
                            "period": "2020-07-23",
                            "count": 70
                        },
                        {
                            "period": "2020-07-24",
                            "count": 96
                        },
                        {
                            "period": "2020-07-25",
                            "count": 18
                        },
                        {
                            "period": "2020-07-26",
                            "count": 46
                        },
                        {
                            "period": "2020-07-27",
                            "count": 94
                        },
                        {
                            "period": "2020-07-28",
                            "count": 73
                        },
                        {
                            "period": "2020-07-29",
                            "count": 67
                        },
                        {
                            "period": "2020-07-30",
                            "count": 76
                        },
                        {
                            "period": "2020-07-31",
                            "count": 58
                        },
                        {
                            "period": "2020-08-01",
                            "count": 44
                        },
                        {
                            "period": "2020-08-02",
                            "count": 19
                        },
                        {
                            "period": "2020-08-03",
                            "count": 71
                        },
                        {
                            "period": "2020-08-04",
                            "count": 49
                        },
                        {
                            "period": "2020-08-05",
                            "count": 64
                        },
                        {
                            "period": "2020-08-06",
                            "count": 73
                        },
                        {
                            "period": "2020-08-07",
                            "count": 61
                        },
                        {
                            "period": "2020-08-08",
                            "count": 25
                        },
                        {
                            "period": "2020-08-09",
                            "count": 35
                        },
                        {
                            "period": "2020-08-10",
                            "count": 43
                        },
                        {
                            "period": "2020-08-11",
                            "count": 90
                        },
                        {
                            "period": "2020-08-12",
                            "count": 68
                        },
                        {
                            "period": "2020-08-13",
                            "count": 48
                        },
                        {
                            "period": "2020-08-14",
                            "count": 44
                        },
                        {
                            "period": "2020-08-15",
                            "count": 11
                        },
                        {
                            "period": "2020-08-16",
                            "count": 13
                        },
                        {
                            "period": "2020-08-17",
                            "count": 76
                        },
                        {
                            "period": "2020-08-18",
                            "count": 70
                        },
                        {
                            "period": "2020-08-19",
                            "count": 58
                        },
                        {
                            "period": "2020-08-20",
                            "count": 109
                        },
                        {
                            "period": "2020-08-21",
                            "count": 69
                        },
                        {
                            "period": "2020-08-22",
                            "count": 23
                        },
                        {
                            "period": "2020-08-23",
                            "count": 9
                        },
                        {
                            "period": "2020-08-24",
                            "count": 65
                        },
                        {
                            "period": "2020-08-25",
                            "count": 64
                        },
                        {
                            "period": "2020-08-26",
                            "count": 45
                        },
                        {
                            "period": "2020-08-27",
                            "count": 85
                        },
                        {
                            "period": "2020-08-28",
                            "count": 57
                        },
                        {
                            "period": "2020-08-29",
                            "count": 45
                        },
                        {
                            "period": "2020-08-30",
                            "count": 28
                        },
                        {
                            "period": "2020-08-31",
                            "count": 82
                        },
                        {
                            "period": "2020-09-01",
                            "count": 78
                        },
                        {
                            "period": "2020-09-02",
                            "count": 72
                        },
                        {
                            "period": "2020-09-03",
                            "count": 71
                        },
                        {
                            "period": "2020-09-04",
                            "count": 66
                        },
                        {
                            "period": "2020-09-05",
                            "count": 11
                        },
                        {
                            "period": "2020-09-06",
                            "count": 35
                        },
                        {
                            "period": "2020-09-07",
                            "count": 46
                        },
                        {
                            "period": "2020-09-08",
                            "count": 80
                        },
                        {
                            "period": "2020-09-09",
                            "count": 69
                        },
                        {
                            "period": "2020-09-10",
                            "count": 65
                        },
                        {
                            "period": "2020-09-11",
                            "count": 62
                        },
                        {
                            "period": "2020-09-12",
                            "count": 36
                        },
                        {
                            "period": "2020-09-13",
                            "count": 20
                        },
                        {
                            "period": "2020-09-14",
                            "count": 58
                        },
                        {
                            "period": "2020-09-15",
                            "count": 69
                        },
                        {
                            "period": "2020-09-16",
                            "count": 44
                        },
                        {
                            "period": "2020-09-17",
                            "count": 113
                        },
                        {
                            "period": "2020-09-18",
                            "count": 57
                        },
                        {
                            "period": "2020-09-19",
                            "count": 11
                        },
                        {
                            "period": "2020-09-20",
                            "count": 49
                        },
                        {
                            "period": "2020-09-21",
                            "count": 78
                        },
                        {
                            "period": "2020-09-22",
                            "count": 128
                        },
                        {
                            "period": "2020-09-23",
                            "count": 79
                        },
                        {
                            "period": "2020-09-24",
                            "count": 104
                        },
                        {
                            "period": "2020-09-25",
                            "count": 85
                        },
                        {
                            "period": "2020-09-26",
                            "count": 31
                        },
                        {
                            "period": "2020-09-27",
                            "count": 17
                        },
                        {
                            "period": "2020-09-28",
                            "count": 71
                        },
                        {
                            "period": "2020-09-29",
                            "count": 93
                        },
                        {
                            "period": "2020-09-30",
                            "count": 80
                        },
                        {
                            "period": "2020-10-01",
                            "count": 119
                        }
                    ]
                },
                {
                    "name": "QUERIES_INDIRECT",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 10
                        },
                        {
                            "period": "2020-04-02",
                            "count": 10
                        },
                        {
                            "period": "2020-04-03",
                            "count": 5
                        },
                        {
                            "period": "2020-04-04",
                            "count": 3
                        },
                        {
                            "period": "2020-04-05",
                            "count": 6
                        },
                        {
                            "period": "2020-04-06",
                            "count": 9
                        },
                        {
                            "period": "2020-04-07",
                            "count": 7
                        },
                        {
                            "period": "2020-04-08",
                            "count": 13
                        },
                        {
                            "period": "2020-04-09",
                            "count": 6
                        },
                        {
                            "period": "2020-04-10",
                            "count": 5
                        },
                        {
                            "period": "2020-04-11",
                            "count": 15
                        },
                        {
                            "period": "2020-04-12",
                            "count": 1
                        },
                        {
                            "period": "2020-04-13",
                            "count": 8
                        },
                        {
                            "period": "2020-04-14",
                            "count": 10
                        },
                        {
                            "period": "2020-04-15",
                            "count": 8
                        },
                        {
                            "period": "2020-04-16",
                            "count": 20
                        },
                        {
                            "period": "2020-04-17",
                            "count": 3
                        },
                        {
                            "period": "2020-04-18",
                            "count": 4
                        },
                        {
                            "period": "2020-04-19",
                            "count": 8
                        },
                        {
                            "period": "2020-04-20",
                            "count": 23
                        },
                        {
                            "period": "2020-04-21",
                            "count": 41
                        },
                        {
                            "period": "2020-04-22",
                            "count": 8
                        },
                        {
                            "period": "2020-04-23",
                            "count": 14
                        },
                        {
                            "period": "2020-04-24",
                            "count": 16
                        },
                        {
                            "period": "2020-04-25",
                            "count": 7
                        },
                        {
                            "period": "2020-04-26",
                            "count": 0
                        },
                        {
                            "period": "2020-04-27",
                            "count": 15
                        },
                        {
                            "period": "2020-04-28",
                            "count": 6
                        },
                        {
                            "period": "2020-04-29",
                            "count": 8
                        },
                        {
                            "period": "2020-04-30",
                            "count": 69
                        },
                        {
                            "period": "2020-05-01",
                            "count": 19
                        },
                        {
                            "period": "2020-05-02",
                            "count": 6
                        },
                        {
                            "period": "2020-05-03",
                            "count": 10
                        },
                        {
                            "period": "2020-05-04",
                            "count": 6
                        },
                        {
                            "period": "2020-05-05",
                            "count": 11
                        },
                        {
                            "period": "2020-05-06",
                            "count": 8
                        },
                        {
                            "period": "2020-05-07",
                            "count": 4
                        },
                        {
                            "period": "2020-05-08",
                            "count": 7
                        },
                        {
                            "period": "2020-05-09",
                            "count": 5
                        },
                        {
                            "period": "2020-05-10",
                            "count": 5
                        },
                        {
                            "period": "2020-05-11",
                            "count": 10
                        },
                        {
                            "period": "2020-05-12",
                            "count": 3
                        },
                        {
                            "period": "2020-05-13",
                            "count": 4
                        },
                        {
                            "period": "2020-05-14",
                            "count": 4
                        },
                        {
                            "period": "2020-05-15",
                            "count": 5
                        },
                        {
                            "period": "2020-05-16",
                            "count": 11
                        },
                        {
                            "period": "2020-05-17",
                            "count": 4
                        },
                        {
                            "period": "2020-05-18",
                            "count": 8
                        },
                        {
                            "period": "2020-05-19",
                            "count": 4
                        },
                        {
                            "period": "2020-05-20",
                            "count": 15
                        },
                        {
                            "period": "2020-05-21",
                            "count": 18
                        },
                        {
                            "period": "2020-05-22",
                            "count": 20
                        },
                        {
                            "period": "2020-05-23",
                            "count": 5
                        },
                        {
                            "period": "2020-05-24",
                            "count": 2
                        },
                        {
                            "period": "2020-05-25",
                            "count": 10
                        },
                        {
                            "period": "2020-05-26",
                            "count": 8
                        },
                        {
                            "period": "2020-05-27",
                            "count": 14
                        },
                        {
                            "period": "2020-05-28",
                            "count": 5
                        },
                        {
                            "period": "2020-05-29",
                            "count": 9
                        },
                        {
                            "period": "2020-05-30",
                            "count": 23
                        },
                        {
                            "period": "2020-05-31",
                            "count": 5
                        },
                        {
                            "period": "2020-06-01",
                            "count": 5
                        },
                        {
                            "period": "2020-06-02",
                            "count": 27
                        },
                        {
                            "period": "2020-06-03",
                            "count": 12
                        },
                        {
                            "period": "2020-06-04",
                            "count": 8
                        },
                        {
                            "period": "2020-06-05",
                            "count": 6
                        },
                        {
                            "period": "2020-06-06",
                            "count": 1
                        },
                        {
                            "period": "2020-06-07",
                            "count": 5
                        },
                        {
                            "period": "2020-06-08",
                            "count": 8
                        },
                        {
                            "period": "2020-06-09",
                            "count": 4
                        },
                        {
                            "period": "2020-06-10",
                            "count": 9
                        },
                        {
                            "period": "2020-06-11",
                            "count": 15
                        },
                        {
                            "period": "2020-06-12",
                            "count": 7
                        },
                        {
                            "period": "2020-06-13",
                            "count": 1
                        },
                        {
                            "period": "2020-06-14",
                            "count": 3
                        },
                        {
                            "period": "2020-06-15",
                            "count": 8
                        },
                        {
                            "period": "2020-06-16",
                            "count": 19
                        },
                        {
                            "period": "2020-06-17",
                            "count": 11
                        },
                        {
                            "period": "2020-06-18",
                            "count": 16
                        },
                        {
                            "period": "2020-06-19",
                            "count": 2
                        },
                        {
                            "period": "2020-06-20",
                            "count": 8
                        },
                        {
                            "period": "2020-06-21",
                            "count": 12
                        },
                        {
                            "period": "2020-06-22",
                            "count": 21
                        },
                        {
                            "period": "2020-06-23",
                            "count": 10
                        },
                        {
                            "period": "2020-06-24",
                            "count": 6
                        },
                        {
                            "period": "2020-06-25",
                            "count": 4
                        },
                        {
                            "period": "2020-06-26",
                            "count": 5
                        },
                        {
                            "period": "2020-06-27",
                            "count": 7
                        },
                        {
                            "period": "2020-06-28",
                            "count": 13
                        },
                        {
                            "period": "2020-06-29",
                            "count": 8
                        },
                        {
                            "period": "2020-06-30",
                            "count": 9
                        },
                        {
                            "period": "2020-07-01",
                            "count": 4
                        },
                        {
                            "period": "2020-07-02",
                            "count": 9
                        },
                        {
                            "period": "2020-07-03",
                            "count": 20
                        },
                        {
                            "period": "2020-07-04",
                            "count": 3
                        },
                        {
                            "period": "2020-07-05",
                            "count": 4
                        },
                        {
                            "period": "2020-07-06",
                            "count": 7
                        },
                        {
                            "period": "2020-07-07",
                            "count": 10
                        },
                        {
                            "period": "2020-07-08",
                            "count": 14
                        },
                        {
                            "period": "2020-07-09",
                            "count": 6
                        },
                        {
                            "period": "2020-07-10",
                            "count": 10
                        },
                        {
                            "period": "2020-07-11",
                            "count": 1
                        },
                        {
                            "period": "2020-07-12",
                            "count": 11
                        },
                        {
                            "period": "2020-07-13",
                            "count": 5
                        },
                        {
                            "period": "2020-07-14",
                            "count": 18
                        },
                        {
                            "period": "2020-07-15",
                            "count": 6
                        },
                        {
                            "period": "2020-07-16",
                            "count": 4
                        },
                        {
                            "period": "2020-07-17",
                            "count": 14
                        },
                        {
                            "period": "2020-07-18",
                            "count": 3
                        },
                        {
                            "period": "2020-07-19",
                            "count": 1
                        },
                        {
                            "period": "2020-07-20",
                            "count": 8
                        },
                        {
                            "period": "2020-07-21",
                            "count": 8
                        },
                        {
                            "period": "2020-07-22",
                            "count": 11
                        },
                        {
                            "period": "2020-07-23",
                            "count": 27
                        },
                        {
                            "period": "2020-07-24",
                            "count": 23
                        },
                        {
                            "period": "2020-07-25",
                            "count": 7
                        },
                        {
                            "period": "2020-07-26",
                            "count": 3
                        },
                        {
                            "period": "2020-07-27",
                            "count": 8
                        },
                        {
                            "period": "2020-07-28",
                            "count": 12
                        },
                        {
                            "period": "2020-07-29",
                            "count": 6
                        },
                        {
                            "period": "2020-07-30",
                            "count": 24
                        },
                        {
                            "period": "2020-07-31",
                            "count": 8
                        },
                        {
                            "period": "2020-08-01",
                            "count": 0
                        },
                        {
                            "period": "2020-08-02",
                            "count": 8
                        },
                        {
                            "period": "2020-08-03",
                            "count": 6
                        },
                        {
                            "period": "2020-08-04",
                            "count": 22
                        },
                        {
                            "period": "2020-08-05",
                            "count": 8
                        },
                        {
                            "period": "2020-08-06",
                            "count": 19
                        },
                        {
                            "period": "2020-08-07",
                            "count": 9
                        },
                        {
                            "period": "2020-08-08",
                            "count": 6
                        },
                        {
                            "period": "2020-08-09",
                            "count": 2
                        },
                        {
                            "period": "2020-08-10",
                            "count": 23
                        },
                        {
                            "period": "2020-08-11",
                            "count": 23
                        },
                        {
                            "period": "2020-08-12",
                            "count": 25
                        },
                        {
                            "period": "2020-08-13",
                            "count": 8
                        },
                        {
                            "period": "2020-08-14",
                            "count": 4
                        },
                        {
                            "period": "2020-08-15",
                            "count": 4
                        },
                        {
                            "period": "2020-08-16",
                            "count": 5
                        },
                        {
                            "period": "2020-08-17",
                            "count": 6
                        },
                        {
                            "period": "2020-08-18",
                            "count": 44
                        },
                        {
                            "period": "2020-08-19",
                            "count": 18
                        },
                        {
                            "period": "2020-08-20",
                            "count": 5
                        },
                        {
                            "period": "2020-08-21",
                            "count": 7
                        },
                        {
                            "period": "2020-08-22",
                            "count": 3
                        },
                        {
                            "period": "2020-08-23",
                            "count": 18
                        },
                        {
                            "period": "2020-08-24",
                            "count": 11
                        },
                        {
                            "period": "2020-08-25",
                            "count": 11
                        },
                        {
                            "period": "2020-08-26",
                            "count": 4
                        },
                        {
                            "period": "2020-08-27",
                            "count": 10
                        },
                        {
                            "period": "2020-08-28",
                            "count": 7
                        },
                        {
                            "period": "2020-08-29",
                            "count": 4
                        },
                        {
                            "period": "2020-08-30",
                            "count": 10
                        },
                        {
                            "period": "2020-08-31",
                            "count": 10
                        },
                        {
                            "period": "2020-09-01",
                            "count": 4
                        },
                        {
                            "period": "2020-09-02",
                            "count": 5
                        },
                        {
                            "period": "2020-09-03",
                            "count": 2
                        },
                        {
                            "period": "2020-09-04",
                            "count": 9
                        },
                        {
                            "period": "2020-09-05",
                            "count": 4
                        },
                        {
                            "period": "2020-09-06",
                            "count": 3
                        },
                        {
                            "period": "2020-09-07",
                            "count": 17
                        },
                        {
                            "period": "2020-09-08",
                            "count": 9
                        },
                        {
                            "period": "2020-09-09",
                            "count": 15
                        },
                        {
                            "period": "2020-09-10",
                            "count": 14
                        },
                        {
                            "period": "2020-09-11",
                            "count": 14
                        },
                        {
                            "period": "2020-09-12",
                            "count": 5
                        },
                        {
                            "period": "2020-09-13",
                            "count": 1
                        },
                        {
                            "period": "2020-09-14",
                            "count": 12
                        },
                        {
                            "period": "2020-09-15",
                            "count": 22
                        },
                        {
                            "period": "2020-09-16",
                            "count": 22
                        },
                        {
                            "period": "2020-09-17",
                            "count": 4
                        },
                        {
                            "period": "2020-09-18",
                            "count": 11
                        },
                        {
                            "period": "2020-09-19",
                            "count": 0
                        },
                        {
                            "period": "2020-09-20",
                            "count": 4
                        },
                        {
                            "period": "2020-09-21",
                            "count": 17
                        },
                        {
                            "period": "2020-09-22",
                            "count": 6
                        },
                        {
                            "period": "2020-09-23",
                            "count": 17
                        },
                        {
                            "period": "2020-09-24",
                            "count": 15
                        },
                        {
                            "period": "2020-09-25",
                            "count": 26
                        },
                        {
                            "period": "2020-09-26",
                            "count": 7
                        },
                        {
                            "period": "2020-09-27",
                            "count": 13
                        },
                        {
                            "period": "2020-09-28",
                            "count": 17
                        },
                        {
                            "period": "2020-09-29",
                            "count": 16
                        },
                        {
                            "period": "2020-09-30",
                            "count": 5
                        },
                        {
                            "period": "2020-10-01",
                            "count": 6
                        }
                    ]
                },
                {
                    "name": "VIEWS_MAPS",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 49
                        },
                        {
                            "period": "2020-04-02",
                            "count": 56
                        },
                        {
                            "period": "2020-04-03",
                            "count": 26
                        },
                        {
                            "period": "2020-04-04",
                            "count": 5
                        },
                        {
                            "period": "2020-04-05",
                            "count": 12
                        },
                        {
                            "period": "2020-04-06",
                            "count": 36
                        },
                        {
                            "period": "2020-04-07",
                            "count": 40
                        },
                        {
                            "period": "2020-04-08",
                            "count": 39
                        },
                        {
                            "period": "2020-04-09",
                            "count": 50
                        },
                        {
                            "period": "2020-04-10",
                            "count": 37
                        },
                        {
                            "period": "2020-04-11",
                            "count": 30
                        },
                        {
                            "period": "2020-04-12",
                            "count": 15
                        },
                        {
                            "period": "2020-04-13",
                            "count": 68
                        },
                        {
                            "period": "2020-04-14",
                            "count": 39
                        },
                        {
                            "period": "2020-04-15",
                            "count": 52
                        },
                        {
                            "period": "2020-04-16",
                            "count": 33
                        },
                        {
                            "period": "2020-04-17",
                            "count": 65
                        },
                        {
                            "period": "2020-04-18",
                            "count": 15
                        },
                        {
                            "period": "2020-04-19",
                            "count": 5
                        },
                        {
                            "period": "2020-04-20",
                            "count": 39
                        },
                        {
                            "period": "2020-04-21",
                            "count": 91
                        },
                        {
                            "period": "2020-04-22",
                            "count": 37
                        },
                        {
                            "period": "2020-04-23",
                            "count": 31
                        },
                        {
                            "period": "2020-04-24",
                            "count": 77
                        },
                        {
                            "period": "2020-04-25",
                            "count": 55
                        },
                        {
                            "period": "2020-04-26",
                            "count": 24
                        },
                        {
                            "period": "2020-04-27",
                            "count": 64
                        },
                        {
                            "period": "2020-04-28",
                            "count": 49
                        },
                        {
                            "period": "2020-04-29",
                            "count": 55
                        },
                        {
                            "period": "2020-04-30",
                            "count": 117
                        },
                        {
                            "period": "2020-05-01",
                            "count": 55
                        },
                        {
                            "period": "2020-05-02",
                            "count": 39
                        },
                        {
                            "period": "2020-05-03",
                            "count": 14
                        },
                        {
                            "period": "2020-05-04",
                            "count": 40
                        },
                        {
                            "period": "2020-05-05",
                            "count": 85
                        },
                        {
                            "period": "2020-05-06",
                            "count": 62
                        },
                        {
                            "period": "2020-05-07",
                            "count": 51
                        },
                        {
                            "period": "2020-05-08",
                            "count": 43
                        },
                        {
                            "period": "2020-05-09",
                            "count": 7
                        },
                        {
                            "period": "2020-05-10",
                            "count": 38
                        },
                        {
                            "period": "2020-05-11",
                            "count": 79
                        },
                        {
                            "period": "2020-05-12",
                            "count": 57
                        },
                        {
                            "period": "2020-05-13",
                            "count": 65
                        },
                        {
                            "period": "2020-05-14",
                            "count": 37
                        },
                        {
                            "period": "2020-05-15",
                            "count": 48
                        },
                        {
                            "period": "2020-05-16",
                            "count": 24
                        },
                        {
                            "period": "2020-05-17",
                            "count": 28
                        },
                        {
                            "period": "2020-05-18",
                            "count": 28
                        },
                        {
                            "period": "2020-05-19",
                            "count": 53
                        },
                        {
                            "period": "2020-05-20",
                            "count": 57
                        },
                        {
                            "period": "2020-05-21",
                            "count": 69
                        },
                        {
                            "period": "2020-05-22",
                            "count": 81
                        },
                        {
                            "period": "2020-05-23",
                            "count": 27
                        },
                        {
                            "period": "2020-05-24",
                            "count": 30
                        },
                        {
                            "period": "2020-05-25",
                            "count": 35
                        },
                        {
                            "period": "2020-05-26",
                            "count": 76
                        },
                        {
                            "period": "2020-05-27",
                            "count": 129
                        },
                        {
                            "period": "2020-05-28",
                            "count": 114
                        },
                        {
                            "period": "2020-05-29",
                            "count": 62
                        },
                        {
                            "period": "2020-05-30",
                            "count": 53
                        },
                        {
                            "period": "2020-05-31",
                            "count": 33
                        },
                        {
                            "period": "2020-06-01",
                            "count": 50
                        },
                        {
                            "period": "2020-06-02",
                            "count": 127
                        },
                        {
                            "period": "2020-06-03",
                            "count": 71
                        },
                        {
                            "period": "2020-06-04",
                            "count": 109
                        },
                        {
                            "period": "2020-06-05",
                            "count": 76
                        },
                        {
                            "period": "2020-06-06",
                            "count": 61
                        },
                        {
                            "period": "2020-06-07",
                            "count": 28
                        },
                        {
                            "period": "2020-06-08",
                            "count": 138
                        },
                        {
                            "period": "2020-06-09",
                            "count": 131
                        },
                        {
                            "period": "2020-06-10",
                            "count": 137
                        },
                        {
                            "period": "2020-06-11",
                            "count": 95
                        },
                        {
                            "period": "2020-06-12",
                            "count": 93
                        },
                        {
                            "period": "2020-06-13",
                            "count": 25
                        },
                        {
                            "period": "2020-06-14",
                            "count": 28
                        },
                        {
                            "period": "2020-06-15",
                            "count": 92
                        },
                        {
                            "period": "2020-06-16",
                            "count": 108
                        },
                        {
                            "period": "2020-06-17",
                            "count": 82
                        },
                        {
                            "period": "2020-06-18",
                            "count": 75
                        },
                        {
                            "period": "2020-06-19",
                            "count": 89
                        },
                        {
                            "period": "2020-06-20",
                            "count": 34
                        },
                        {
                            "period": "2020-06-21",
                            "count": 42
                        },
                        {
                            "period": "2020-06-22",
                            "count": 134
                        },
                        {
                            "period": "2020-06-23",
                            "count": 113
                        },
                        {
                            "period": "2020-06-24",
                            "count": 159
                        },
                        {
                            "period": "2020-06-25",
                            "count": 132
                        },
                        {
                            "period": "2020-06-26",
                            "count": 127
                        },
                        {
                            "period": "2020-06-27",
                            "count": 79
                        },
                        {
                            "period": "2020-06-28",
                            "count": 80
                        },
                        {
                            "period": "2020-06-29",
                            "count": 149
                        },
                        {
                            "period": "2020-06-30",
                            "count": 105
                        },
                        {
                            "period": "2020-07-01",
                            "count": 128
                        },
                        {
                            "period": "2020-07-02",
                            "count": 100
                        },
                        {
                            "period": "2020-07-03",
                            "count": 101
                        },
                        {
                            "period": "2020-07-04",
                            "count": 23
                        },
                        {
                            "period": "2020-07-05",
                            "count": 83
                        },
                        {
                            "period": "2020-07-06",
                            "count": 123
                        },
                        {
                            "period": "2020-07-07",
                            "count": 148
                        },
                        {
                            "period": "2020-07-08",
                            "count": 120
                        },
                        {
                            "period": "2020-07-09",
                            "count": 209
                        },
                        {
                            "period": "2020-07-10",
                            "count": 126
                        },
                        {
                            "period": "2020-07-11",
                            "count": 59
                        },
                        {
                            "period": "2020-07-12",
                            "count": 65
                        },
                        {
                            "period": "2020-07-13",
                            "count": 185
                        },
                        {
                            "period": "2020-07-14",
                            "count": 229
                        },
                        {
                            "period": "2020-07-15",
                            "count": 175
                        },
                        {
                            "period": "2020-07-16",
                            "count": 164
                        },
                        {
                            "period": "2020-07-17",
                            "count": 179
                        },
                        {
                            "period": "2020-07-18",
                            "count": 66
                        },
                        {
                            "period": "2020-07-19",
                            "count": 42
                        },
                        {
                            "period": "2020-07-20",
                            "count": 187
                        },
                        {
                            "period": "2020-07-21",
                            "count": 209
                        },
                        {
                            "period": "2020-07-22",
                            "count": 191
                        },
                        {
                            "period": "2020-07-23",
                            "count": 165
                        },
                        {
                            "period": "2020-07-24",
                            "count": 187
                        },
                        {
                            "period": "2020-07-25",
                            "count": 84
                        },
                        {
                            "period": "2020-07-26",
                            "count": 64
                        },
                        {
                            "period": "2020-07-27",
                            "count": 189
                        },
                        {
                            "period": "2020-07-28",
                            "count": 161
                        },
                        {
                            "period": "2020-07-29",
                            "count": 141
                        },
                        {
                            "period": "2020-07-30",
                            "count": 155
                        },
                        {
                            "period": "2020-07-31",
                            "count": 150
                        },
                        {
                            "period": "2020-08-01",
                            "count": 80
                        },
                        {
                            "period": "2020-08-02",
                            "count": 66
                        },
                        {
                            "period": "2020-08-03",
                            "count": 151
                        },
                        {
                            "period": "2020-08-04",
                            "count": 185
                        },
                        {
                            "period": "2020-08-05",
                            "count": 131
                        },
                        {
                            "period": "2020-08-06",
                            "count": 167
                        },
                        {
                            "period": "2020-08-07",
                            "count": 137
                        },
                        {
                            "period": "2020-08-08",
                            "count": 91
                        },
                        {
                            "period": "2020-08-09",
                            "count": 73
                        },
                        {
                            "period": "2020-08-10",
                            "count": 137
                        },
                        {
                            "period": "2020-08-11",
                            "count": 155
                        },
                        {
                            "period": "2020-08-12",
                            "count": 170
                        },
                        {
                            "period": "2020-08-13",
                            "count": 124
                        },
                        {
                            "period": "2020-08-14",
                            "count": 118
                        },
                        {
                            "period": "2020-08-15",
                            "count": 43
                        },
                        {
                            "period": "2020-08-16",
                            "count": 82
                        },
                        {
                            "period": "2020-08-17",
                            "count": 139
                        },
                        {
                            "period": "2020-08-18",
                            "count": 186
                        },
                        {
                            "period": "2020-08-19",
                            "count": 152
                        },
                        {
                            "period": "2020-08-20",
                            "count": 177
                        },
                        {
                            "period": "2020-08-21",
                            "count": 144
                        },
                        {
                            "period": "2020-08-22",
                            "count": 64
                        },
                        {
                            "period": "2020-08-23",
                            "count": 49
                        },
                        {
                            "period": "2020-08-24",
                            "count": 147
                        },
                        {
                            "period": "2020-08-25",
                            "count": 125
                        },
                        {
                            "period": "2020-08-26",
                            "count": 122
                        },
                        {
                            "period": "2020-08-27",
                            "count": 174
                        },
                        {
                            "period": "2020-08-28",
                            "count": 119
                        },
                        {
                            "period": "2020-08-29",
                            "count": 84
                        },
                        {
                            "period": "2020-08-30",
                            "count": 87
                        },
                        {
                            "period": "2020-08-31",
                            "count": 187
                        },
                        {
                            "period": "2020-09-01",
                            "count": 177
                        },
                        {
                            "period": "2020-09-02",
                            "count": 129
                        },
                        {
                            "period": "2020-09-03",
                            "count": 141
                        },
                        {
                            "period": "2020-09-04",
                            "count": 149
                        },
                        {
                            "period": "2020-09-05",
                            "count": 59
                        },
                        {
                            "period": "2020-09-06",
                            "count": 67
                        },
                        {
                            "period": "2020-09-07",
                            "count": 104
                        },
                        {
                            "period": "2020-09-08",
                            "count": 137
                        },
                        {
                            "period": "2020-09-09",
                            "count": 175
                        },
                        {
                            "period": "2020-09-10",
                            "count": 158
                        },
                        {
                            "period": "2020-09-11",
                            "count": 160
                        },
                        {
                            "period": "2020-09-12",
                            "count": 76
                        },
                        {
                            "period": "2020-09-13",
                            "count": 45
                        },
                        {
                            "period": "2020-09-14",
                            "count": 146
                        },
                        {
                            "period": "2020-09-15",
                            "count": 201
                        },
                        {
                            "period": "2020-09-16",
                            "count": 164
                        },
                        {
                            "period": "2020-09-17",
                            "count": 248
                        },
                        {
                            "period": "2020-09-18",
                            "count": 149
                        },
                        {
                            "period": "2020-09-19",
                            "count": 43
                        },
                        {
                            "period": "2020-09-20",
                            "count": 97
                        },
                        {
                            "period": "2020-09-21",
                            "count": 166
                        },
                        {
                            "period": "2020-09-22",
                            "count": 256
                        },
                        {
                            "period": "2020-09-23",
                            "count": 152
                        },
                        {
                            "period": "2020-09-24",
                            "count": 191
                        },
                        {
                            "period": "2020-09-25",
                            "count": 207
                        },
                        {
                            "period": "2020-09-26",
                            "count": 65
                        },
                        {
                            "period": "2020-09-27",
                            "count": 64
                        },
                        {
                            "period": "2020-09-28",
                            "count": 183
                        },
                        {
                            "period": "2020-09-29",
                            "count": 171
                        },
                        {
                            "period": "2020-09-30",
                            "count": 194
                        },
                        {
                            "period": "2020-10-01",
                            "count": 245
                        }
                    ]
                },
                {
                    "name": "VIEWS_SEARCH",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 19
                        },
                        {
                            "period": "2020-04-02",
                            "count": 20
                        },
                        {
                            "period": "2020-04-03",
                            "count": 11
                        },
                        {
                            "period": "2020-04-04",
                            "count": 3
                        },
                        {
                            "period": "2020-04-05",
                            "count": 10
                        },
                        {
                            "period": "2020-04-06",
                            "count": 16
                        },
                        {
                            "period": "2020-04-07",
                            "count": 13
                        },
                        {
                            "period": "2020-04-08",
                            "count": 17
                        },
                        {
                            "period": "2020-04-09",
                            "count": 15
                        },
                        {
                            "period": "2020-04-10",
                            "count": 16
                        },
                        {
                            "period": "2020-04-11",
                            "count": 10
                        },
                        {
                            "period": "2020-04-12",
                            "count": 2
                        },
                        {
                            "period": "2020-04-13",
                            "count": 13
                        },
                        {
                            "period": "2020-04-14",
                            "count": 17
                        },
                        {
                            "period": "2020-04-15",
                            "count": 17
                        },
                        {
                            "period": "2020-04-16",
                            "count": 26
                        },
                        {
                            "period": "2020-04-17",
                            "count": 17
                        },
                        {
                            "period": "2020-04-18",
                            "count": 7
                        },
                        {
                            "period": "2020-04-19",
                            "count": 11
                        },
                        {
                            "period": "2020-04-20",
                            "count": 36
                        },
                        {
                            "period": "2020-04-21",
                            "count": 20
                        },
                        {
                            "period": "2020-04-22",
                            "count": 20
                        },
                        {
                            "period": "2020-04-23",
                            "count": 19
                        },
                        {
                            "period": "2020-04-24",
                            "count": 17
                        },
                        {
                            "period": "2020-04-25",
                            "count": 3
                        },
                        {
                            "period": "2020-04-26",
                            "count": 8
                        },
                        {
                            "period": "2020-04-27",
                            "count": 9
                        },
                        {
                            "period": "2020-04-28",
                            "count": 13
                        },
                        {
                            "period": "2020-04-29",
                            "count": 10
                        },
                        {
                            "period": "2020-04-30",
                            "count": 11
                        },
                        {
                            "period": "2020-05-01",
                            "count": 18
                        },
                        {
                            "period": "2020-05-02",
                            "count": 7
                        },
                        {
                            "period": "2020-05-03",
                            "count": 11
                        },
                        {
                            "period": "2020-05-04",
                            "count": 12
                        },
                        {
                            "period": "2020-05-05",
                            "count": 15
                        },
                        {
                            "period": "2020-05-06",
                            "count": 11
                        },
                        {
                            "period": "2020-05-07",
                            "count": 12
                        },
                        {
                            "period": "2020-05-08",
                            "count": 10
                        },
                        {
                            "period": "2020-05-09",
                            "count": 8
                        },
                        {
                            "period": "2020-05-10",
                            "count": 14
                        },
                        {
                            "period": "2020-05-11",
                            "count": 15
                        },
                        {
                            "period": "2020-05-12",
                            "count": 10
                        },
                        {
                            "period": "2020-05-13",
                            "count": 17
                        },
                        {
                            "period": "2020-05-14",
                            "count": 10
                        },
                        {
                            "period": "2020-05-15",
                            "count": 9
                        },
                        {
                            "period": "2020-05-16",
                            "count": 13
                        },
                        {
                            "period": "2020-05-17",
                            "count": 4
                        },
                        {
                            "period": "2020-05-18",
                            "count": 17
                        },
                        {
                            "period": "2020-05-19",
                            "count": 10
                        },
                        {
                            "period": "2020-05-20",
                            "count": 14
                        },
                        {
                            "period": "2020-05-21",
                            "count": 18
                        },
                        {
                            "period": "2020-05-22",
                            "count": 16
                        },
                        {
                            "period": "2020-05-23",
                            "count": 5
                        },
                        {
                            "period": "2020-05-24",
                            "count": 1
                        },
                        {
                            "period": "2020-05-25",
                            "count": 9
                        },
                        {
                            "period": "2020-05-26",
                            "count": 13
                        },
                        {
                            "period": "2020-05-27",
                            "count": 21
                        },
                        {
                            "period": "2020-05-28",
                            "count": 10
                        },
                        {
                            "period": "2020-05-29",
                            "count": 4
                        },
                        {
                            "period": "2020-05-30",
                            "count": 4
                        },
                        {
                            "period": "2020-05-31",
                            "count": 8
                        },
                        {
                            "period": "2020-06-01",
                            "count": 9
                        },
                        {
                            "period": "2020-06-02",
                            "count": 18
                        },
                        {
                            "period": "2020-06-03",
                            "count": 8
                        },
                        {
                            "period": "2020-06-04",
                            "count": 9
                        },
                        {
                            "period": "2020-06-05",
                            "count": 12
                        },
                        {
                            "period": "2020-06-06",
                            "count": 2
                        },
                        {
                            "period": "2020-06-07",
                            "count": 6
                        },
                        {
                            "period": "2020-06-08",
                            "count": 6
                        },
                        {
                            "period": "2020-06-09",
                            "count": 8
                        },
                        {
                            "period": "2020-06-10",
                            "count": 13
                        },
                        {
                            "period": "2020-06-11",
                            "count": 26
                        },
                        {
                            "period": "2020-06-12",
                            "count": 24
                        },
                        {
                            "period": "2020-06-13",
                            "count": 3
                        },
                        {
                            "period": "2020-06-14",
                            "count": 8
                        },
                        {
                            "period": "2020-06-15",
                            "count": 21
                        },
                        {
                            "period": "2020-06-16",
                            "count": 11
                        },
                        {
                            "period": "2020-06-17",
                            "count": 13
                        },
                        {
                            "period": "2020-06-18",
                            "count": 13
                        },
                        {
                            "period": "2020-06-19",
                            "count": 4
                        },
                        {
                            "period": "2020-06-20",
                            "count": 6
                        },
                        {
                            "period": "2020-06-21",
                            "count": 8
                        },
                        {
                            "period": "2020-06-22",
                            "count": 23
                        },
                        {
                            "period": "2020-06-23",
                            "count": 12
                        },
                        {
                            "period": "2020-06-24",
                            "count": 16
                        },
                        {
                            "period": "2020-06-25",
                            "count": 26
                        },
                        {
                            "period": "2020-06-26",
                            "count": 12
                        },
                        {
                            "period": "2020-06-27",
                            "count": 4
                        },
                        {
                            "period": "2020-06-28",
                            "count": 6
                        },
                        {
                            "period": "2020-06-29",
                            "count": 13
                        },
                        {
                            "period": "2020-06-30",
                            "count": 10
                        },
                        {
                            "period": "2020-07-01",
                            "count": 6
                        },
                        {
                            "period": "2020-07-02",
                            "count": 10
                        },
                        {
                            "period": "2020-07-03",
                            "count": 4
                        },
                        {
                            "period": "2020-07-04",
                            "count": 3
                        },
                        {
                            "period": "2020-07-05",
                            "count": 2
                        },
                        {
                            "period": "2020-07-06",
                            "count": 20
                        },
                        {
                            "period": "2020-07-07",
                            "count": 21
                        },
                        {
                            "period": "2020-07-08",
                            "count": 21
                        },
                        {
                            "period": "2020-07-09",
                            "count": 5
                        },
                        {
                            "period": "2020-07-10",
                            "count": 16
                        },
                        {
                            "period": "2020-07-11",
                            "count": 2
                        },
                        {
                            "period": "2020-07-12",
                            "count": 5
                        },
                        {
                            "period": "2020-07-13",
                            "count": 14
                        },
                        {
                            "period": "2020-07-14",
                            "count": 17
                        },
                        {
                            "period": "2020-07-15",
                            "count": 14
                        },
                        {
                            "period": "2020-07-16",
                            "count": 8
                        },
                        {
                            "period": "2020-07-17",
                            "count": 7
                        },
                        {
                            "period": "2020-07-18",
                            "count": 4
                        },
                        {
                            "period": "2020-07-19",
                            "count": 2
                        },
                        {
                            "period": "2020-07-20",
                            "count": 14
                        },
                        {
                            "period": "2020-07-21",
                            "count": 12
                        },
                        {
                            "period": "2020-07-22",
                            "count": 22
                        },
                        {
                            "period": "2020-07-23",
                            "count": 13
                        },
                        {
                            "period": "2020-07-24",
                            "count": 18
                        },
                        {
                            "period": "2020-07-25",
                            "count": 0
                        },
                        {
                            "period": "2020-07-26",
                            "count": 3
                        },
                        {
                            "period": "2020-07-27",
                            "count": 8
                        },
                        {
                            "period": "2020-07-28",
                            "count": 10
                        },
                        {
                            "period": "2020-07-29",
                            "count": 9
                        },
                        {
                            "period": "2020-07-30",
                            "count": 23
                        },
                        {
                            "period": "2020-07-31",
                            "count": 7
                        },
                        {
                            "period": "2020-08-01",
                            "count": 0
                        },
                        {
                            "period": "2020-08-02",
                            "count": 7
                        },
                        {
                            "period": "2020-08-03",
                            "count": 7
                        },
                        {
                            "period": "2020-08-04",
                            "count": 9
                        },
                        {
                            "period": "2020-08-05",
                            "count": 10
                        },
                        {
                            "period": "2020-08-06",
                            "count": 23
                        },
                        {
                            "period": "2020-08-07",
                            "count": 17
                        },
                        {
                            "period": "2020-08-08",
                            "count": 11
                        },
                        {
                            "period": "2020-08-09",
                            "count": 5
                        },
                        {
                            "period": "2020-08-10",
                            "count": 14
                        },
                        {
                            "period": "2020-08-11",
                            "count": 22
                        },
                        {
                            "period": "2020-08-12",
                            "count": 25
                        },
                        {
                            "period": "2020-08-13",
                            "count": 18
                        },
                        {
                            "period": "2020-08-14",
                            "count": 7
                        },
                        {
                            "period": "2020-08-15",
                            "count": 2
                        },
                        {
                            "period": "2020-08-16",
                            "count": 4
                        },
                        {
                            "period": "2020-08-17",
                            "count": 15
                        },
                        {
                            "period": "2020-08-18",
                            "count": 10
                        },
                        {
                            "period": "2020-08-19",
                            "count": 19
                        },
                        {
                            "period": "2020-08-20",
                            "count": 14
                        },
                        {
                            "period": "2020-08-21",
                            "count": 6
                        },
                        {
                            "period": "2020-08-22",
                            "count": 2
                        },
                        {
                            "period": "2020-08-23",
                            "count": 4
                        },
                        {
                            "period": "2020-08-24",
                            "count": 14
                        },
                        {
                            "period": "2020-08-25",
                            "count": 16
                        },
                        {
                            "period": "2020-08-26",
                            "count": 8
                        },
                        {
                            "period": "2020-08-27",
                            "count": 16
                        },
                        {
                            "period": "2020-08-28",
                            "count": 20
                        },
                        {
                            "period": "2020-08-29",
                            "count": 3
                        },
                        {
                            "period": "2020-08-30",
                            "count": 7
                        },
                        {
                            "period": "2020-08-31",
                            "count": 20
                        },
                        {
                            "period": "2020-09-01",
                            "count": 16
                        },
                        {
                            "period": "2020-09-02",
                            "count": 17
                        },
                        {
                            "period": "2020-09-03",
                            "count": 10
                        },
                        {
                            "period": "2020-09-04",
                            "count": 10
                        },
                        {
                            "period": "2020-09-05",
                            "count": 0
                        },
                        {
                            "period": "2020-09-06",
                            "count": 5
                        },
                        {
                            "period": "2020-09-07",
                            "count": 16
                        },
                        {
                            "period": "2020-09-08",
                            "count": 20
                        },
                        {
                            "period": "2020-09-09",
                            "count": 16
                        },
                        {
                            "period": "2020-09-10",
                            "count": 13
                        },
                        {
                            "period": "2020-09-11",
                            "count": 6
                        },
                        {
                            "period": "2020-09-12",
                            "count": 7
                        },
                        {
                            "period": "2020-09-13",
                            "count": 0
                        },
                        {
                            "period": "2020-09-14",
                            "count": 12
                        },
                        {
                            "period": "2020-09-15",
                            "count": 11
                        },
                        {
                            "period": "2020-09-16",
                            "count": 14
                        },
                        {
                            "period": "2020-09-17",
                            "count": 12
                        },
                        {
                            "period": "2020-09-18",
                            "count": 16
                        },
                        {
                            "period": "2020-09-19",
                            "count": 2
                        },
                        {
                            "period": "2020-09-20",
                            "count": 2
                        },
                        {
                            "period": "2020-09-21",
                            "count": 17
                        },
                        {
                            "period": "2020-09-22",
                            "count": 13
                        },
                        {
                            "period": "2020-09-23",
                            "count": 22
                        },
                        {
                            "period": "2020-09-24",
                            "count": 24
                        },
                        {
                            "period": "2020-09-25",
                            "count": 8
                        },
                        {
                            "period": "2020-09-26",
                            "count": 0
                        },
                        {
                            "period": "2020-09-27",
                            "count": 12
                        },
                        {
                            "period": "2020-09-28",
                            "count": 17
                        },
                        {
                            "period": "2020-09-29",
                            "count": 17
                        },
                        {
                            "period": "2020-09-30",
                            "count": 12
                        },
                        {
                            "period": "2020-10-01",
                            "count": 9
                        }
                    ]
                },
                {
                    "name": "ACTIONS_WEBSITE",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 1
                        },
                        {
                            "period": "2020-04-02",
                            "count": 1
                        },
                        {
                            "period": "2020-04-03",
                            "count": 1
                        },
                        {
                            "period": "2020-04-04",
                            "count": 1
                        },
                        {
                            "period": "2020-04-05",
                            "count": 2
                        },
                        {
                            "period": "2020-04-06",
                            "count": 0
                        },
                        {
                            "period": "2020-04-07",
                            "count": 0
                        },
                        {
                            "period": "2020-04-08",
                            "count": 2
                        },
                        {
                            "period": "2020-04-09",
                            "count": 0
                        },
                        {
                            "period": "2020-04-10",
                            "count": 1
                        },
                        {
                            "period": "2020-04-11",
                            "count": 1
                        },
                        {
                            "period": "2020-04-12",
                            "count": 0
                        },
                        {
                            "period": "2020-04-13",
                            "count": 1
                        },
                        {
                            "period": "2020-04-14",
                            "count": 1
                        },
                        {
                            "period": "2020-04-15",
                            "count": 3
                        },
                        {
                            "period": "2020-04-16",
                            "count": 1
                        },
                        {
                            "period": "2020-04-17",
                            "count": 1
                        },
                        {
                            "period": "2020-04-18",
                            "count": 0
                        },
                        {
                            "period": "2020-04-19",
                            "count": 0
                        },
                        {
                            "period": "2020-04-20",
                            "count": 1
                        },
                        {
                            "period": "2020-04-21",
                            "count": 3
                        },
                        {
                            "period": "2020-04-22",
                            "count": 0
                        },
                        {
                            "period": "2020-04-23",
                            "count": 0
                        },
                        {
                            "period": "2020-04-24",
                            "count": 1
                        },
                        {
                            "period": "2020-04-25",
                            "count": 0
                        },
                        {
                            "period": "2020-04-26",
                            "count": 0
                        },
                        {
                            "period": "2020-04-27",
                            "count": 3
                        },
                        {
                            "period": "2020-04-28",
                            "count": 0
                        },
                        {
                            "period": "2020-04-29",
                            "count": 0
                        },
                        {
                            "period": "2020-04-30",
                            "count": 1
                        },
                        {
                            "period": "2020-05-01",
                            "count": 0
                        },
                        {
                            "period": "2020-05-02",
                            "count": 1
                        },
                        {
                            "period": "2020-05-03",
                            "count": 0
                        },
                        {
                            "period": "2020-05-04",
                            "count": 0
                        },
                        {
                            "period": "2020-05-05",
                            "count": 0
                        },
                        {
                            "period": "2020-05-06",
                            "count": 0
                        },
                        {
                            "period": "2020-05-07",
                            "count": 0
                        },
                        {
                            "period": "2020-05-08",
                            "count": 1
                        },
                        {
                            "period": "2020-05-09",
                            "count": 0
                        },
                        {
                            "period": "2020-05-10",
                            "count": 0
                        },
                        {
                            "period": "2020-05-11",
                            "count": 1
                        },
                        {
                            "period": "2020-05-12",
                            "count": 1
                        },
                        {
                            "period": "2020-05-13",
                            "count": 2
                        },
                        {
                            "period": "2020-05-14",
                            "count": 1
                        },
                        {
                            "period": "2020-05-15",
                            "count": 1
                        },
                        {
                            "period": "2020-05-16",
                            "count": 0
                        },
                        {
                            "period": "2020-05-17",
                            "count": 0
                        },
                        {
                            "period": "2020-05-18",
                            "count": 0
                        },
                        {
                            "period": "2020-05-19",
                            "count": 0
                        },
                        {
                            "period": "2020-05-20",
                            "count": 0
                        },
                        {
                            "period": "2020-05-21",
                            "count": 2
                        },
                        {
                            "period": "2020-05-22",
                            "count": 0
                        },
                        {
                            "period": "2020-05-23",
                            "count": 0
                        },
                        {
                            "period": "2020-05-24",
                            "count": 0
                        },
                        {
                            "period": "2020-05-25",
                            "count": 0
                        },
                        {
                            "period": "2020-05-26",
                            "count": 0
                        },
                        {
                            "period": "2020-05-27",
                            "count": 1
                        },
                        {
                            "period": "2020-05-28",
                            "count": 1
                        },
                        {
                            "period": "2020-05-29",
                            "count": 2
                        },
                        {
                            "period": "2020-05-30",
                            "count": 1
                        },
                        {
                            "period": "2020-05-31",
                            "count": 2
                        },
                        {
                            "period": "2020-06-01",
                            "count": 1
                        },
                        {
                            "period": "2020-06-02",
                            "count": 1
                        },
                        {
                            "period": "2020-06-03",
                            "count": 0
                        },
                        {
                            "period": "2020-06-04",
                            "count": 1
                        },
                        {
                            "period": "2020-06-05",
                            "count": 2
                        },
                        {
                            "period": "2020-06-06",
                            "count": 1
                        },
                        {
                            "period": "2020-06-07",
                            "count": 0
                        },
                        {
                            "period": "2020-06-08",
                            "count": 0
                        },
                        {
                            "period": "2020-06-09",
                            "count": 1
                        },
                        {
                            "period": "2020-06-10",
                            "count": 0
                        },
                        {
                            "period": "2020-06-11",
                            "count": 3
                        },
                        {
                            "period": "2020-06-12",
                            "count": 0
                        },
                        {
                            "period": "2020-06-13",
                            "count": 1
                        },
                        {
                            "period": "2020-06-14",
                            "count": 0
                        },
                        {
                            "period": "2020-06-15",
                            "count": 0
                        },
                        {
                            "period": "2020-06-16",
                            "count": 0
                        },
                        {
                            "period": "2020-06-17",
                            "count": 0
                        },
                        {
                            "period": "2020-06-18",
                            "count": 2
                        },
                        {
                            "period": "2020-06-19",
                            "count": 0
                        },
                        {
                            "period": "2020-06-20",
                            "count": 0
                        },
                        {
                            "period": "2020-06-21",
                            "count": 0
                        },
                        {
                            "period": "2020-06-22",
                            "count": 2
                        },
                        {
                            "period": "2020-06-23",
                            "count": 0
                        },
                        {
                            "period": "2020-06-24",
                            "count": 1
                        },
                        {
                            "period": "2020-06-25",
                            "count": 0
                        },
                        {
                            "period": "2020-06-26",
                            "count": 0
                        },
                        {
                            "period": "2020-06-27",
                            "count": 0
                        },
                        {
                            "period": "2020-06-28",
                            "count": 0
                        },
                        {
                            "period": "2020-06-29",
                            "count": 0
                        },
                        {
                            "period": "2020-06-30",
                            "count": 0
                        },
                        {
                            "period": "2020-07-01",
                            "count": 0
                        },
                        {
                            "period": "2020-07-02",
                            "count": 0
                        },
                        {
                            "period": "2020-07-03",
                            "count": 0
                        },
                        {
                            "period": "2020-07-04",
                            "count": 0
                        },
                        {
                            "period": "2020-07-05",
                            "count": 0
                        },
                        {
                            "period": "2020-07-06",
                            "count": 2
                        },
                        {
                            "period": "2020-07-07",
                            "count": 2
                        },
                        {
                            "period": "2020-07-08",
                            "count": 1
                        },
                        {
                            "period": "2020-07-09",
                            "count": 0
                        },
                        {
                            "period": "2020-07-10",
                            "count": 0
                        },
                        {
                            "period": "2020-07-11",
                            "count": 0
                        },
                        {
                            "period": "2020-07-12",
                            "count": 0
                        },
                        {
                            "period": "2020-07-13",
                            "count": 2
                        },
                        {
                            "period": "2020-07-14",
                            "count": 1
                        },
                        {
                            "period": "2020-07-15",
                            "count": 1
                        },
                        {
                            "period": "2020-07-16",
                            "count": 0
                        },
                        {
                            "period": "2020-07-17",
                            "count": 0
                        },
                        {
                            "period": "2020-07-18",
                            "count": 0
                        },
                        {
                            "period": "2020-07-19",
                            "count": 0
                        },
                        {
                            "period": "2020-07-20",
                            "count": 1
                        },
                        {
                            "period": "2020-07-21",
                            "count": 0
                        },
                        {
                            "period": "2020-07-22",
                            "count": 0
                        },
                        {
                            "period": "2020-07-23",
                            "count": 0
                        },
                        {
                            "period": "2020-07-24",
                            "count": 0
                        },
                        {
                            "period": "2020-07-25",
                            "count": 0
                        },
                        {
                            "period": "2020-07-26",
                            "count": 0
                        },
                        {
                            "period": "2020-07-27",
                            "count": 1
                        },
                        {
                            "period": "2020-07-28",
                            "count": 1
                        },
                        {
                            "period": "2020-07-29",
                            "count": 1
                        },
                        {
                            "period": "2020-07-30",
                            "count": 1
                        },
                        {
                            "period": "2020-07-31",
                            "count": 1
                        },
                        {
                            "period": "2020-08-01",
                            "count": 0
                        },
                        {
                            "period": "2020-08-02",
                            "count": 1
                        },
                        {
                            "period": "2020-08-03",
                            "count": 0
                        },
                        {
                            "period": "2020-08-04",
                            "count": 0
                        },
                        {
                            "period": "2020-08-05",
                            "count": 1
                        },
                        {
                            "period": "2020-08-06",
                            "count": 1
                        },
                        {
                            "period": "2020-08-07",
                            "count": 0
                        },
                        {
                            "period": "2020-08-08",
                            "count": 0
                        },
                        {
                            "period": "2020-08-09",
                            "count": 0
                        },
                        {
                            "period": "2020-08-10",
                            "count": 0
                        },
                        {
                            "period": "2020-08-11",
                            "count": 1
                        },
                        {
                            "period": "2020-08-12",
                            "count": 4
                        },
                        {
                            "period": "2020-08-13",
                            "count": 1
                        },
                        {
                            "period": "2020-08-14",
                            "count": 0
                        },
                        {
                            "period": "2020-08-15",
                            "count": 0
                        },
                        {
                            "period": "2020-08-16",
                            "count": 0
                        },
                        {
                            "period": "2020-08-17",
                            "count": 0
                        },
                        {
                            "period": "2020-08-18",
                            "count": 0
                        },
                        {
                            "period": "2020-08-19",
                            "count": 1
                        },
                        {
                            "period": "2020-08-20",
                            "count": 0
                        },
                        {
                            "period": "2020-08-21",
                            "count": 1
                        },
                        {
                            "period": "2020-08-22",
                            "count": 0
                        },
                        {
                            "period": "2020-08-23",
                            "count": 0
                        },
                        {
                            "period": "2020-08-24",
                            "count": 2
                        },
                        {
                            "period": "2020-08-25",
                            "count": 1
                        },
                        {
                            "period": "2020-08-26",
                            "count": 0
                        },
                        {
                            "period": "2020-08-27",
                            "count": 0
                        },
                        {
                            "period": "2020-08-28",
                            "count": 0
                        },
                        {
                            "period": "2020-08-29",
                            "count": 0
                        },
                        {
                            "period": "2020-08-30",
                            "count": 1
                        },
                        {
                            "period": "2020-08-31",
                            "count": 0
                        },
                        {
                            "period": "2020-09-01",
                            "count": 0
                        },
                        {
                            "period": "2020-09-02",
                            "count": 0
                        },
                        {
                            "period": "2020-09-03",
                            "count": 0
                        },
                        {
                            "period": "2020-09-04",
                            "count": 0
                        },
                        {
                            "period": "2020-09-05",
                            "count": 0
                        },
                        {
                            "period": "2020-09-06",
                            "count": 0
                        },
                        {
                            "period": "2020-09-07",
                            "count": 2
                        },
                        {
                            "period": "2020-09-08",
                            "count": 1
                        },
                        {
                            "period": "2020-09-09",
                            "count": 2
                        },
                        {
                            "period": "2020-09-10",
                            "count": 1
                        },
                        {
                            "period": "2020-09-11",
                            "count": 1
                        },
                        {
                            "period": "2020-09-12",
                            "count": 3
                        },
                        {
                            "period": "2020-09-13",
                            "count": 0
                        },
                        {
                            "period": "2020-09-14",
                            "count": 1
                        },
                        {
                            "period": "2020-09-15",
                            "count": 0
                        },
                        {
                            "period": "2020-09-16",
                            "count": 0
                        },
                        {
                            "period": "2020-09-17",
                            "count": 0
                        },
                        {
                            "period": "2020-09-18",
                            "count": 0
                        },
                        {
                            "period": "2020-09-19",
                            "count": 0
                        },
                        {
                            "period": "2020-09-20",
                            "count": 0
                        },
                        {
                            "period": "2020-09-21",
                            "count": 0
                        },
                        {
                            "period": "2020-09-22",
                            "count": 0
                        },
                        {
                            "period": "2020-09-23",
                            "count": 0
                        },
                        {
                            "period": "2020-09-24",
                            "count": 4
                        },
                        {
                            "period": "2020-09-25",
                            "count": 0
                        },
                        {
                            "period": "2020-09-26",
                            "count": 0
                        },
                        {
                            "period": "2020-09-27",
                            "count": 0
                        },
                        {
                            "period": "2020-09-28",
                            "count": 1
                        },
                        {
                            "period": "2020-09-29",
                            "count": 0
                        },
                        {
                            "period": "2020-09-30",
                            "count": 0
                        },
                        {
                            "period": "2020-10-01",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "ACTIONS_PHONE",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 0
                        },
                        {
                            "period": "2020-04-02",
                            "count": 0
                        },
                        {
                            "period": "2020-04-03",
                            "count": 0
                        },
                        {
                            "period": "2020-04-04",
                            "count": 0
                        },
                        {
                            "period": "2020-04-05",
                            "count": 0
                        },
                        {
                            "period": "2020-04-06",
                            "count": 1
                        },
                        {
                            "period": "2020-04-07",
                            "count": 0
                        },
                        {
                            "period": "2020-04-08",
                            "count": 0
                        },
                        {
                            "period": "2020-04-09",
                            "count": 0
                        },
                        {
                            "period": "2020-04-10",
                            "count": 0
                        },
                        {
                            "period": "2020-04-11",
                            "count": 0
                        },
                        {
                            "period": "2020-04-12",
                            "count": 0
                        },
                        {
                            "period": "2020-04-13",
                            "count": 0
                        },
                        {
                            "period": "2020-04-14",
                            "count": 0
                        },
                        {
                            "period": "2020-04-15",
                            "count": 0
                        },
                        {
                            "period": "2020-04-16",
                            "count": 0
                        },
                        {
                            "period": "2020-04-17",
                            "count": 0
                        },
                        {
                            "period": "2020-04-18",
                            "count": 0
                        },
                        {
                            "period": "2020-04-19",
                            "count": 0
                        },
                        {
                            "period": "2020-04-20",
                            "count": 0
                        },
                        {
                            "period": "2020-04-21",
                            "count": 0
                        },
                        {
                            "period": "2020-04-22",
                            "count": 0
                        },
                        {
                            "period": "2020-04-23",
                            "count": 0
                        },
                        {
                            "period": "2020-04-24",
                            "count": 1
                        },
                        {
                            "period": "2020-04-25",
                            "count": 0
                        },
                        {
                            "period": "2020-04-26",
                            "count": 0
                        },
                        {
                            "period": "2020-04-27",
                            "count": 0
                        },
                        {
                            "period": "2020-04-28",
                            "count": 0
                        },
                        {
                            "period": "2020-04-29",
                            "count": 0
                        },
                        {
                            "period": "2020-04-30",
                            "count": 0
                        },
                        {
                            "period": "2020-05-01",
                            "count": 0
                        },
                        {
                            "period": "2020-05-02",
                            "count": 0
                        },
                        {
                            "period": "2020-05-03",
                            "count": 0
                        },
                        {
                            "period": "2020-05-04",
                            "count": 0
                        },
                        {
                            "period": "2020-05-05",
                            "count": 0
                        },
                        {
                            "period": "2020-05-06",
                            "count": 0
                        },
                        {
                            "period": "2020-05-07",
                            "count": 0
                        },
                        {
                            "period": "2020-05-08",
                            "count": 0
                        },
                        {
                            "period": "2020-05-09",
                            "count": 0
                        },
                        {
                            "period": "2020-05-10",
                            "count": 0
                        },
                        {
                            "period": "2020-05-11",
                            "count": 0
                        },
                        {
                            "period": "2020-05-12",
                            "count": 0
                        },
                        {
                            "period": "2020-05-13",
                            "count": 0
                        },
                        {
                            "period": "2020-05-14",
                            "count": 0
                        },
                        {
                            "period": "2020-05-15",
                            "count": 0
                        },
                        {
                            "period": "2020-05-16",
                            "count": 0
                        },
                        {
                            "period": "2020-05-17",
                            "count": 0
                        },
                        {
                            "period": "2020-05-18",
                            "count": 0
                        },
                        {
                            "period": "2020-05-19",
                            "count": 0
                        },
                        {
                            "period": "2020-05-20",
                            "count": 0
                        },
                        {
                            "period": "2020-05-21",
                            "count": 0
                        },
                        {
                            "period": "2020-05-22",
                            "count": 1
                        },
                        {
                            "period": "2020-05-23",
                            "count": 0
                        },
                        {
                            "period": "2020-05-24",
                            "count": 0
                        },
                        {
                            "period": "2020-05-25",
                            "count": 0
                        },
                        {
                            "period": "2020-05-26",
                            "count": 0
                        },
                        {
                            "period": "2020-05-27",
                            "count": 0
                        },
                        {
                            "period": "2020-05-28",
                            "count": 0
                        },
                        {
                            "period": "2020-05-29",
                            "count": 0
                        },
                        {
                            "period": "2020-05-30",
                            "count": 0
                        },
                        {
                            "period": "2020-05-31",
                            "count": 0
                        },
                        {
                            "period": "2020-06-01",
                            "count": 0
                        },
                        {
                            "period": "2020-06-02",
                            "count": 0
                        },
                        {
                            "period": "2020-06-03",
                            "count": 0
                        },
                        {
                            "period": "2020-06-04",
                            "count": 0
                        },
                        {
                            "period": "2020-06-05",
                            "count": 0
                        },
                        {
                            "period": "2020-06-06",
                            "count": 0
                        },
                        {
                            "period": "2020-06-07",
                            "count": 0
                        },
                        {
                            "period": "2020-06-08",
                            "count": 0
                        },
                        {
                            "period": "2020-06-09",
                            "count": 0
                        },
                        {
                            "period": "2020-06-10",
                            "count": 1
                        },
                        {
                            "period": "2020-06-11",
                            "count": 0
                        },
                        {
                            "period": "2020-06-12",
                            "count": 0
                        },
                        {
                            "period": "2020-06-13",
                            "count": 0
                        },
                        {
                            "period": "2020-06-14",
                            "count": 0
                        },
                        {
                            "period": "2020-06-15",
                            "count": 0
                        },
                        {
                            "period": "2020-06-16",
                            "count": 0
                        },
                        {
                            "period": "2020-06-17",
                            "count": 0
                        },
                        {
                            "period": "2020-06-18",
                            "count": 4
                        },
                        {
                            "period": "2020-06-19",
                            "count": 0
                        },
                        {
                            "period": "2020-06-20",
                            "count": 0
                        },
                        {
                            "period": "2020-06-21",
                            "count": 0
                        },
                        {
                            "period": "2020-06-22",
                            "count": 0
                        },
                        {
                            "period": "2020-06-23",
                            "count": 1
                        },
                        {
                            "period": "2020-06-24",
                            "count": 0
                        },
                        {
                            "period": "2020-06-25",
                            "count": 0
                        },
                        {
                            "period": "2020-06-26",
                            "count": 1
                        },
                        {
                            "period": "2020-06-27",
                            "count": 0
                        },
                        {
                            "period": "2020-06-28",
                            "count": 0
                        },
                        {
                            "period": "2020-06-29",
                            "count": 0
                        },
                        {
                            "period": "2020-06-30",
                            "count": 0
                        },
                        {
                            "period": "2020-07-01",
                            "count": 0
                        },
                        {
                            "period": "2020-07-02",
                            "count": 1
                        },
                        {
                            "period": "2020-07-03",
                            "count": 1
                        },
                        {
                            "period": "2020-07-04",
                            "count": 0
                        },
                        {
                            "period": "2020-07-05",
                            "count": 0
                        },
                        {
                            "period": "2020-07-06",
                            "count": 0
                        },
                        {
                            "period": "2020-07-07",
                            "count": 0
                        },
                        {
                            "period": "2020-07-08",
                            "count": 0
                        },
                        {
                            "period": "2020-07-09",
                            "count": 0
                        },
                        {
                            "period": "2020-07-10",
                            "count": 0
                        },
                        {
                            "period": "2020-07-11",
                            "count": 0
                        },
                        {
                            "period": "2020-07-12",
                            "count": 0
                        },
                        {
                            "period": "2020-07-13",
                            "count": 0
                        },
                        {
                            "period": "2020-07-14",
                            "count": 2
                        },
                        {
                            "period": "2020-07-15",
                            "count": 0
                        },
                        {
                            "period": "2020-07-16",
                            "count": 1
                        },
                        {
                            "period": "2020-07-17",
                            "count": 0
                        },
                        {
                            "period": "2020-07-18",
                            "count": 0
                        },
                        {
                            "period": "2020-07-19",
                            "count": 0
                        },
                        {
                            "period": "2020-07-20",
                            "count": 1
                        },
                        {
                            "period": "2020-07-21",
                            "count": 0
                        },
                        {
                            "period": "2020-07-22",
                            "count": 0
                        },
                        {
                            "period": "2020-07-23",
                            "count": 0
                        },
                        {
                            "period": "2020-07-24",
                            "count": 1
                        },
                        {
                            "period": "2020-07-25",
                            "count": 0
                        },
                        {
                            "period": "2020-07-26",
                            "count": 0
                        },
                        {
                            "period": "2020-07-27",
                            "count": 0
                        },
                        {
                            "period": "2020-07-28",
                            "count": 0
                        },
                        {
                            "period": "2020-07-29",
                            "count": 0
                        },
                        {
                            "period": "2020-07-30",
                            "count": 0
                        },
                        {
                            "period": "2020-07-31",
                            "count": 0
                        },
                        {
                            "period": "2020-08-01",
                            "count": 0
                        },
                        {
                            "period": "2020-08-02",
                            "count": 0
                        },
                        {
                            "period": "2020-08-03",
                            "count": 0
                        },
                        {
                            "period": "2020-08-04",
                            "count": 0
                        },
                        {
                            "period": "2020-08-05",
                            "count": 0
                        },
                        {
                            "period": "2020-08-06",
                            "count": 0
                        },
                        {
                            "period": "2020-08-07",
                            "count": 0
                        },
                        {
                            "period": "2020-08-08",
                            "count": 0
                        },
                        {
                            "period": "2020-08-09",
                            "count": 0
                        },
                        {
                            "period": "2020-08-10",
                            "count": 1
                        },
                        {
                            "period": "2020-08-11",
                            "count": 0
                        },
                        {
                            "period": "2020-08-12",
                            "count": 0
                        },
                        {
                            "period": "2020-08-13",
                            "count": 0
                        },
                        {
                            "period": "2020-08-14",
                            "count": 0
                        },
                        {
                            "period": "2020-08-15",
                            "count": 0
                        },
                        {
                            "period": "2020-08-16",
                            "count": 0
                        },
                        {
                            "period": "2020-08-17",
                            "count": 0
                        },
                        {
                            "period": "2020-08-18",
                            "count": 0
                        },
                        {
                            "period": "2020-08-19",
                            "count": 0
                        },
                        {
                            "period": "2020-08-20",
                            "count": 0
                        },
                        {
                            "period": "2020-08-21",
                            "count": 0
                        },
                        {
                            "period": "2020-08-22",
                            "count": 0
                        },
                        {
                            "period": "2020-08-23",
                            "count": 0
                        },
                        {
                            "period": "2020-08-24",
                            "count": 0
                        },
                        {
                            "period": "2020-08-25",
                            "count": 0
                        },
                        {
                            "period": "2020-08-26",
                            "count": 0
                        },
                        {
                            "period": "2020-08-27",
                            "count": 0
                        },
                        {
                            "period": "2020-08-28",
                            "count": 0
                        },
                        {
                            "period": "2020-08-29",
                            "count": 0
                        },
                        {
                            "period": "2020-08-30",
                            "count": 0
                        },
                        {
                            "period": "2020-08-31",
                            "count": 0
                        },
                        {
                            "period": "2020-09-01",
                            "count": 0
                        },
                        {
                            "period": "2020-09-02",
                            "count": 0
                        },
                        {
                            "period": "2020-09-03",
                            "count": 0
                        },
                        {
                            "period": "2020-09-04",
                            "count": 0
                        },
                        {
                            "period": "2020-09-05",
                            "count": 1
                        },
                        {
                            "period": "2020-09-06",
                            "count": 0
                        },
                        {
                            "period": "2020-09-07",
                            "count": 2
                        },
                        {
                            "period": "2020-09-08",
                            "count": 0
                        },
                        {
                            "period": "2020-09-09",
                            "count": 0
                        },
                        {
                            "period": "2020-09-10",
                            "count": 0
                        },
                        {
                            "period": "2020-09-11",
                            "count": 0
                        },
                        {
                            "period": "2020-09-12",
                            "count": 0
                        },
                        {
                            "period": "2020-09-13",
                            "count": 0
                        },
                        {
                            "period": "2020-09-14",
                            "count": 0
                        },
                        {
                            "period": "2020-09-15",
                            "count": 0
                        },
                        {
                            "period": "2020-09-16",
                            "count": 0
                        },
                        {
                            "period": "2020-09-17",
                            "count": 1
                        },
                        {
                            "period": "2020-09-18",
                            "count": 0
                        },
                        {
                            "period": "2020-09-19",
                            "count": 0
                        },
                        {
                            "period": "2020-09-20",
                            "count": 0
                        },
                        {
                            "period": "2020-09-21",
                            "count": 0
                        },
                        {
                            "period": "2020-09-22",
                            "count": 0
                        },
                        {
                            "period": "2020-09-23",
                            "count": 1
                        },
                        {
                            "period": "2020-09-24",
                            "count": 0
                        },
                        {
                            "period": "2020-09-25",
                            "count": 0
                        },
                        {
                            "period": "2020-09-26",
                            "count": 0
                        },
                        {
                            "period": "2020-09-27",
                            "count": 0
                        },
                        {
                            "period": "2020-09-28",
                            "count": 0
                        },
                        {
                            "period": "2020-09-29",
                            "count": 0
                        },
                        {
                            "period": "2020-09-30",
                            "count": 0
                        },
                        {
                            "period": "2020-10-01",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "ACTIONS_DRIVING_DIRECTIONS",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 2
                        },
                        {
                            "period": "2020-04-02",
                            "count": 0
                        },
                        {
                            "period": "2020-04-03",
                            "count": 0
                        },
                        {
                            "period": "2020-04-04",
                            "count": 0
                        },
                        {
                            "period": "2020-04-05",
                            "count": 0
                        },
                        {
                            "period": "2020-04-06",
                            "count": 0
                        },
                        {
                            "period": "2020-04-07",
                            "count": 2
                        },
                        {
                            "period": "2020-04-08",
                            "count": 0
                        },
                        {
                            "period": "2020-04-09",
                            "count": 0
                        },
                        {
                            "period": "2020-04-10",
                            "count": 0
                        },
                        {
                            "period": "2020-04-11",
                            "count": 0
                        },
                        {
                            "period": "2020-04-12",
                            "count": 0
                        },
                        {
                            "period": "2020-04-13",
                            "count": 0
                        },
                        {
                            "period": "2020-04-14",
                            "count": 0
                        },
                        {
                            "period": "2020-04-15",
                            "count": 0
                        },
                        {
                            "period": "2020-04-16",
                            "count": 0
                        },
                        {
                            "period": "2020-04-17",
                            "count": 0
                        },
                        {
                            "period": "2020-04-18",
                            "count": 0
                        },
                        {
                            "period": "2020-04-19",
                            "count": 0
                        },
                        {
                            "period": "2020-04-20",
                            "count": 1
                        },
                        {
                            "period": "2020-04-21",
                            "count": 0
                        },
                        {
                            "period": "2020-04-22",
                            "count": 1
                        },
                        {
                            "period": "2020-04-23",
                            "count": 0
                        },
                        {
                            "period": "2020-04-24",
                            "count": 0
                        },
                        {
                            "period": "2020-04-25",
                            "count": 0
                        },
                        {
                            "period": "2020-04-26",
                            "count": 0
                        },
                        {
                            "period": "2020-04-27",
                            "count": 0
                        },
                        {
                            "period": "2020-04-28",
                            "count": 0
                        },
                        {
                            "period": "2020-04-29",
                            "count": 0
                        },
                        {
                            "period": "2020-04-30",
                            "count": 0
                        },
                        {
                            "period": "2020-05-01",
                            "count": 0
                        },
                        {
                            "period": "2020-05-02",
                            "count": 0
                        },
                        {
                            "period": "2020-05-03",
                            "count": 0
                        },
                        {
                            "period": "2020-05-04",
                            "count": 0
                        },
                        {
                            "period": "2020-05-05",
                            "count": 0
                        },
                        {
                            "period": "2020-05-06",
                            "count": 0
                        },
                        {
                            "period": "2020-05-07",
                            "count": 0
                        },
                        {
                            "period": "2020-05-08",
                            "count": 0
                        },
                        {
                            "period": "2020-05-09",
                            "count": 0
                        },
                        {
                            "period": "2020-05-10",
                            "count": 0
                        },
                        {
                            "period": "2020-05-11",
                            "count": 0
                        },
                        {
                            "period": "2020-05-12",
                            "count": 0
                        },
                        {
                            "period": "2020-05-13",
                            "count": 0
                        },
                        {
                            "period": "2020-05-14",
                            "count": 0
                        },
                        {
                            "period": "2020-05-15",
                            "count": 0
                        },
                        {
                            "period": "2020-05-16",
                            "count": 0
                        },
                        {
                            "period": "2020-05-17",
                            "count": 0
                        },
                        {
                            "period": "2020-05-18",
                            "count": 2
                        },
                        {
                            "period": "2020-05-19",
                            "count": 0
                        },
                        {
                            "period": "2020-05-20",
                            "count": 0
                        },
                        {
                            "period": "2020-05-21",
                            "count": 0
                        },
                        {
                            "period": "2020-05-22",
                            "count": 1
                        },
                        {
                            "period": "2020-05-23",
                            "count": 0
                        },
                        {
                            "period": "2020-05-24",
                            "count": 0
                        },
                        {
                            "period": "2020-05-25",
                            "count": 0
                        },
                        {
                            "period": "2020-05-26",
                            "count": 0
                        },
                        {
                            "period": "2020-05-27",
                            "count": 0
                        },
                        {
                            "period": "2020-05-28",
                            "count": 0
                        },
                        {
                            "period": "2020-05-29",
                            "count": 0
                        },
                        {
                            "period": "2020-05-30",
                            "count": 0
                        },
                        {
                            "period": "2020-05-31",
                            "count": 1
                        },
                        {
                            "period": "2020-06-01",
                            "count": 0
                        },
                        {
                            "period": "2020-06-02",
                            "count": 1
                        },
                        {
                            "period": "2020-06-03",
                            "count": 0
                        },
                        {
                            "period": "2020-06-04",
                            "count": 0
                        },
                        {
                            "period": "2020-06-05",
                            "count": 0
                        },
                        {
                            "period": "2020-06-06",
                            "count": 2
                        },
                        {
                            "period": "2020-06-07",
                            "count": 1
                        },
                        {
                            "period": "2020-06-08",
                            "count": 0
                        },
                        {
                            "period": "2020-06-09",
                            "count": 0
                        },
                        {
                            "period": "2020-06-10",
                            "count": 0
                        },
                        {
                            "period": "2020-06-11",
                            "count": 0
                        },
                        {
                            "period": "2020-06-12",
                            "count": 0
                        },
                        {
                            "period": "2020-06-13",
                            "count": 1
                        },
                        {
                            "period": "2020-06-14",
                            "count": 0
                        },
                        {
                            "period": "2020-06-15",
                            "count": 0
                        },
                        {
                            "period": "2020-06-16",
                            "count": 0
                        },
                        {
                            "period": "2020-06-17",
                            "count": 0
                        },
                        {
                            "period": "2020-06-18",
                            "count": 0
                        },
                        {
                            "period": "2020-06-19",
                            "count": 0
                        },
                        {
                            "period": "2020-06-20",
                            "count": 0
                        },
                        {
                            "period": "2020-06-21",
                            "count": 0
                        },
                        {
                            "period": "2020-06-22",
                            "count": 0
                        },
                        {
                            "period": "2020-06-23",
                            "count": 0
                        },
                        {
                            "period": "2020-06-24",
                            "count": 4
                        },
                        {
                            "period": "2020-06-25",
                            "count": 0
                        },
                        {
                            "period": "2020-06-26",
                            "count": 0
                        },
                        {
                            "period": "2020-06-27",
                            "count": 0
                        },
                        {
                            "period": "2020-06-28",
                            "count": 0
                        },
                        {
                            "period": "2020-06-29",
                            "count": 0
                        },
                        {
                            "period": "2020-06-30",
                            "count": 0
                        },
                        {
                            "period": "2020-07-01",
                            "count": 0
                        },
                        {
                            "period": "2020-07-02",
                            "count": 0
                        },
                        {
                            "period": "2020-07-03",
                            "count": 0
                        },
                        {
                            "period": "2020-07-04",
                            "count": 0
                        },
                        {
                            "period": "2020-07-05",
                            "count": 0
                        },
                        {
                            "period": "2020-07-06",
                            "count": 1
                        },
                        {
                            "period": "2020-07-07",
                            "count": 0
                        },
                        {
                            "period": "2020-07-08",
                            "count": 1
                        },
                        {
                            "period": "2020-07-09",
                            "count": 0
                        },
                        {
                            "period": "2020-07-10",
                            "count": 1
                        },
                        {
                            "period": "2020-07-11",
                            "count": 0
                        },
                        {
                            "period": "2020-07-12",
                            "count": 0
                        },
                        {
                            "period": "2020-07-13",
                            "count": 0
                        },
                        {
                            "period": "2020-07-14",
                            "count": 8
                        },
                        {
                            "period": "2020-07-15",
                            "count": 0
                        },
                        {
                            "period": "2020-07-16",
                            "count": 0
                        },
                        {
                            "period": "2020-07-17",
                            "count": 0
                        },
                        {
                            "period": "2020-07-18",
                            "count": 1
                        },
                        {
                            "period": "2020-07-19",
                            "count": 0
                        },
                        {
                            "period": "2020-07-20",
                            "count": 1
                        },
                        {
                            "period": "2020-07-21",
                            "count": 0
                        },
                        {
                            "period": "2020-07-22",
                            "count": 0
                        },
                        {
                            "period": "2020-07-23",
                            "count": 0
                        },
                        {
                            "period": "2020-07-24",
                            "count": 0
                        },
                        {
                            "period": "2020-07-25",
                            "count": 0
                        },
                        {
                            "period": "2020-07-26",
                            "count": 1
                        },
                        {
                            "period": "2020-07-27",
                            "count": 0
                        },
                        {
                            "period": "2020-07-28",
                            "count": 0
                        },
                        {
                            "period": "2020-07-29",
                            "count": 0
                        },
                        {
                            "period": "2020-07-30",
                            "count": 1
                        },
                        {
                            "period": "2020-07-31",
                            "count": 0
                        },
                        {
                            "period": "2020-08-01",
                            "count": 0
                        },
                        {
                            "period": "2020-08-02",
                            "count": 1
                        },
                        {
                            "period": "2020-08-03",
                            "count": 0
                        },
                        {
                            "period": "2020-08-04",
                            "count": 0
                        },
                        {
                            "period": "2020-08-05",
                            "count": 0
                        },
                        {
                            "period": "2020-08-06",
                            "count": 0
                        },
                        {
                            "period": "2020-08-07",
                            "count": 1
                        },
                        {
                            "period": "2020-08-08",
                            "count": 0
                        },
                        {
                            "period": "2020-08-09",
                            "count": 1
                        },
                        {
                            "period": "2020-08-10",
                            "count": 0
                        },
                        {
                            "period": "2020-08-11",
                            "count": 0
                        },
                        {
                            "period": "2020-08-12",
                            "count": 0
                        },
                        {
                            "period": "2020-08-13",
                            "count": 0
                        },
                        {
                            "period": "2020-08-14",
                            "count": 0
                        },
                        {
                            "period": "2020-08-15",
                            "count": 0
                        },
                        {
                            "period": "2020-08-16",
                            "count": 0
                        },
                        {
                            "period": "2020-08-17",
                            "count": 1
                        },
                        {
                            "period": "2020-08-18",
                            "count": 0
                        },
                        {
                            "period": "2020-08-19",
                            "count": 0
                        },
                        {
                            "period": "2020-08-20",
                            "count": 0
                        },
                        {
                            "period": "2020-08-21",
                            "count": 0
                        },
                        {
                            "period": "2020-08-22",
                            "count": 0
                        },
                        {
                            "period": "2020-08-23",
                            "count": 1
                        },
                        {
                            "period": "2020-08-24",
                            "count": 1
                        },
                        {
                            "period": "2020-08-25",
                            "count": 1
                        },
                        {
                            "period": "2020-08-26",
                            "count": 0
                        },
                        {
                            "period": "2020-08-27",
                            "count": 0
                        },
                        {
                            "period": "2020-08-28",
                            "count": 0
                        },
                        {
                            "period": "2020-08-29",
                            "count": 0
                        },
                        {
                            "period": "2020-08-30",
                            "count": 0
                        },
                        {
                            "period": "2020-08-31",
                            "count": 0
                        },
                        {
                            "period": "2020-09-01",
                            "count": 1
                        },
                        {
                            "period": "2020-09-02",
                            "count": 1
                        },
                        {
                            "period": "2020-09-03",
                            "count": 0
                        },
                        {
                            "period": "2020-09-04",
                            "count": 0
                        },
                        {
                            "period": "2020-09-05",
                            "count": 0
                        },
                        {
                            "period": "2020-09-06",
                            "count": 0
                        },
                        {
                            "period": "2020-09-07",
                            "count": 1
                        },
                        {
                            "period": "2020-09-08",
                            "count": 0
                        },
                        {
                            "period": "2020-09-09",
                            "count": 0
                        },
                        {
                            "period": "2020-09-10",
                            "count": 3
                        },
                        {
                            "period": "2020-09-11",
                            "count": 7
                        },
                        {
                            "period": "2020-09-12",
                            "count": 1
                        },
                        {
                            "period": "2020-09-13",
                            "count": 1
                        },
                        {
                            "period": "2020-09-14",
                            "count": 4
                        },
                        {
                            "period": "2020-09-15",
                            "count": 1
                        },
                        {
                            "period": "2020-09-16",
                            "count": 3
                        },
                        {
                            "period": "2020-09-17",
                            "count": 8
                        },
                        {
                            "period": "2020-09-18",
                            "count": 6
                        },
                        {
                            "period": "2020-09-19",
                            "count": 4
                        },
                        {
                            "period": "2020-09-20",
                            "count": 3
                        },
                        {
                            "period": "2020-09-21",
                            "count": 6
                        },
                        {
                            "period": "2020-09-22",
                            "count": 0
                        },
                        {
                            "period": "2020-09-23",
                            "count": 2
                        },
                        {
                            "period": "2020-09-24",
                            "count": 2
                        },
                        {
                            "period": "2020-09-25",
                            "count": 7
                        },
                        {
                            "period": "2020-09-26",
                            "count": 6
                        },
                        {
                            "period": "2020-09-27",
                            "count": 7
                        },
                        {
                            "period": "2020-09-28",
                            "count": 0
                        },
                        {
                            "period": "2020-09-29",
                            "count": 3
                        },
                        {
                            "period": "2020-09-30",
                            "count": 2
                        },
                        {
                            "period": "2020-10-01",
                            "count": 3
                        }
                    ]
                },
                {
                    "name": "PHOTOS_VIEWS_MERCHANT",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 56
                        },
                        {
                            "period": "2020-04-02",
                            "count": 48
                        },
                        {
                            "period": "2020-04-03",
                            "count": 54
                        },
                        {
                            "period": "2020-04-04",
                            "count": 27
                        },
                        {
                            "period": "2020-04-05",
                            "count": 75
                        },
                        {
                            "period": "2020-04-06",
                            "count": 38
                        },
                        {
                            "period": "2020-04-07",
                            "count": 67
                        },
                        {
                            "period": "2020-04-08",
                            "count": 64
                        },
                        {
                            "period": "2020-04-09",
                            "count": 70
                        },
                        {
                            "period": "2020-04-10",
                            "count": 61
                        },
                        {
                            "period": "2020-04-11",
                            "count": 45
                        },
                        {
                            "period": "2020-04-12",
                            "count": 30
                        },
                        {
                            "period": "2020-04-13",
                            "count": 66
                        },
                        {
                            "period": "2020-04-14",
                            "count": 76
                        },
                        {
                            "period": "2020-04-15",
                            "count": 68
                        },
                        {
                            "period": "2020-04-16",
                            "count": 66
                        },
                        {
                            "period": "2020-04-17",
                            "count": 72
                        },
                        {
                            "period": "2020-04-18",
                            "count": 32
                        },
                        {
                            "period": "2020-04-19",
                            "count": 53
                        },
                        {
                            "period": "2020-04-20",
                            "count": 65
                        },
                        {
                            "period": "2020-04-21",
                            "count": 63
                        },
                        {
                            "period": "2020-04-22",
                            "count": 44
                        },
                        {
                            "period": "2020-04-23",
                            "count": 53
                        },
                        {
                            "period": "2020-04-24",
                            "count": 43
                        },
                        {
                            "period": "2020-04-25",
                            "count": 44
                        },
                        {
                            "period": "2020-04-26",
                            "count": 49
                        },
                        {
                            "period": "2020-04-27",
                            "count": 47
                        },
                        {
                            "period": "2020-04-28",
                            "count": 55
                        },
                        {
                            "period": "2020-04-29",
                            "count": 0
                        },
                        {
                            "period": "2020-04-30",
                            "count": 39
                        },
                        {
                            "period": "2020-05-01",
                            "count": 52
                        },
                        {
                            "period": "2020-05-02",
                            "count": 57
                        },
                        {
                            "period": "2020-05-03",
                            "count": 25
                        },
                        {
                            "period": "2020-05-04",
                            "count": 61
                        },
                        {
                            "period": "2020-05-05",
                            "count": 60
                        },
                        {
                            "period": "2020-05-06",
                            "count": 79
                        },
                        {
                            "period": "2020-05-07",
                            "count": 44
                        },
                        {
                            "period": "2020-05-08",
                            "count": 47
                        },
                        {
                            "period": "2020-05-09",
                            "count": 49
                        },
                        {
                            "period": "2020-05-10",
                            "count": 35
                        },
                        {
                            "period": "2020-05-11",
                            "count": 68
                        },
                        {
                            "period": "2020-05-12",
                            "count": 0
                        },
                        {
                            "period": "2020-05-13",
                            "count": 59
                        },
                        {
                            "period": "2020-05-14",
                            "count": 72
                        },
                        {
                            "period": "2020-05-15",
                            "count": 44
                        },
                        {
                            "period": "2020-05-16",
                            "count": 31
                        },
                        {
                            "period": "2020-05-17",
                            "count": 47
                        },
                        {
                            "period": "2020-05-18",
                            "count": 42
                        },
                        {
                            "period": "2020-05-19",
                            "count": 62
                        },
                        {
                            "period": "2020-05-20",
                            "count": 63
                        },
                        {
                            "period": "2020-05-21",
                            "count": 70
                        },
                        {
                            "period": "2020-05-22",
                            "count": 49
                        },
                        {
                            "period": "2020-05-23",
                            "count": 50
                        },
                        {
                            "period": "2020-05-24",
                            "count": 31
                        },
                        {
                            "period": "2020-05-25",
                            "count": 71
                        },
                        {
                            "period": "2020-05-26",
                            "count": 43
                        },
                        {
                            "period": "2020-05-27",
                            "count": 89
                        },
                        {
                            "period": "2020-05-28",
                            "count": 76
                        },
                        {
                            "period": "2020-05-29",
                            "count": 62
                        },
                        {
                            "period": "2020-05-30",
                            "count": 59
                        },
                        {
                            "period": "2020-05-31",
                            "count": 40
                        },
                        {
                            "period": "2020-06-01",
                            "count": 50
                        },
                        {
                            "period": "2020-06-02",
                            "count": 41
                        },
                        {
                            "period": "2020-06-03",
                            "count": 62
                        },
                        {
                            "period": "2020-06-04",
                            "count": 57
                        },
                        {
                            "period": "2020-06-05",
                            "count": 38
                        },
                        {
                            "period": "2020-06-06",
                            "count": 41
                        },
                        {
                            "period": "2020-06-07",
                            "count": 50
                        },
                        {
                            "period": "2020-06-08",
                            "count": 30
                        },
                        {
                            "period": "2020-06-09",
                            "count": 41
                        },
                        {
                            "period": "2020-06-10",
                            "count": 67
                        },
                        {
                            "period": "2020-06-11",
                            "count": 58
                        },
                        {
                            "period": "2020-06-12",
                            "count": 61
                        },
                        {
                            "period": "2020-06-13",
                            "count": 32
                        },
                        {
                            "period": "2020-06-14",
                            "count": 50
                        },
                        {
                            "period": "2020-06-15",
                            "count": 42
                        },
                        {
                            "period": "2020-06-16",
                            "count": 69
                        },
                        {
                            "period": "2020-06-17",
                            "count": 0
                        },
                        {
                            "period": "2020-06-18",
                            "count": 97
                        },
                        {
                            "period": "2020-06-19",
                            "count": 74
                        },
                        {
                            "period": "2020-06-20",
                            "count": 56
                        },
                        {
                            "period": "2020-06-21",
                            "count": 71
                        },
                        {
                            "period": "2020-06-22",
                            "count": 87
                        },
                        {
                            "period": "2020-06-23",
                            "count": 69
                        },
                        {
                            "period": "2020-06-24",
                            "count": 51
                        },
                        {
                            "period": "2020-06-25",
                            "count": 70
                        },
                        {
                            "period": "2020-06-26",
                            "count": 67
                        },
                        {
                            "period": "2020-06-27",
                            "count": 44
                        },
                        {
                            "period": "2020-06-28",
                            "count": 35
                        },
                        {
                            "period": "2020-06-29",
                            "count": 57
                        },
                        {
                            "period": "2020-06-30",
                            "count": 77
                        },
                        {
                            "period": "2020-07-01",
                            "count": 62
                        },
                        {
                            "period": "2020-07-02",
                            "count": 51
                        },
                        {
                            "period": "2020-07-03",
                            "count": 48
                        },
                        {
                            "period": "2020-07-04",
                            "count": 47
                        },
                        {
                            "period": "2020-07-05",
                            "count": 45
                        },
                        {
                            "period": "2020-07-06",
                            "count": 57
                        },
                        {
                            "period": "2020-07-07",
                            "count": 66
                        },
                        {
                            "period": "2020-07-08",
                            "count": 81
                        },
                        {
                            "period": "2020-07-09",
                            "count": 60
                        },
                        {
                            "period": "2020-07-10",
                            "count": 0
                        },
                        {
                            "period": "2020-07-11",
                            "count": 47
                        },
                        {
                            "period": "2020-07-12",
                            "count": 42
                        },
                        {
                            "period": "2020-07-13",
                            "count": 73
                        },
                        {
                            "period": "2020-07-14",
                            "count": 90
                        },
                        {
                            "period": "2020-07-15",
                            "count": 68
                        },
                        {
                            "period": "2020-07-16",
                            "count": 0
                        },
                        {
                            "period": "2020-07-17",
                            "count": 48
                        },
                        {
                            "period": "2020-07-18",
                            "count": 45
                        },
                        {
                            "period": "2020-07-19",
                            "count": 53
                        },
                        {
                            "period": "2020-07-20",
                            "count": 48
                        },
                        {
                            "period": "2020-07-21",
                            "count": 78
                        },
                        {
                            "period": "2020-07-22",
                            "count": 0
                        },
                        {
                            "period": "2020-07-23",
                            "count": 72
                        },
                        {
                            "period": "2020-07-24",
                            "count": 62
                        },
                        {
                            "period": "2020-07-25",
                            "count": 38
                        },
                        {
                            "period": "2020-07-26",
                            "count": 57
                        },
                        {
                            "period": "2020-07-27",
                            "count": 60
                        },
                        {
                            "period": "2020-07-28",
                            "count": 42
                        },
                        {
                            "period": "2020-07-29",
                            "count": 77
                        },
                        {
                            "period": "2020-07-30",
                            "count": 83
                        },
                        {
                            "period": "2020-07-31",
                            "count": 45
                        },
                        {
                            "period": "2020-08-01",
                            "count": 39
                        },
                        {
                            "period": "2020-08-02",
                            "count": 46
                        },
                        {
                            "period": "2020-08-03",
                            "count": 84
                        },
                        {
                            "period": "2020-08-04",
                            "count": 49
                        },
                        {
                            "period": "2020-08-05",
                            "count": 44
                        },
                        {
                            "period": "2020-08-06",
                            "count": 65
                        },
                        {
                            "period": "2020-08-07",
                            "count": 0
                        },
                        {
                            "period": "2020-08-08",
                            "count": 60
                        },
                        {
                            "period": "2020-08-09",
                            "count": 66
                        },
                        {
                            "period": "2020-08-10",
                            "count": 60
                        },
                        {
                            "period": "2020-08-11",
                            "count": 0
                        },
                        {
                            "period": "2020-08-12",
                            "count": 60
                        },
                        {
                            "period": "2020-08-13",
                            "count": 115
                        },
                        {
                            "period": "2020-08-14",
                            "count": 66
                        },
                        {
                            "period": "2020-08-15",
                            "count": 69
                        },
                        {
                            "period": "2020-08-16",
                            "count": 75
                        },
                        {
                            "period": "2020-08-17",
                            "count": 0
                        },
                        {
                            "period": "2020-08-18",
                            "count": 91
                        },
                        {
                            "period": "2020-08-19",
                            "count": 66
                        },
                        {
                            "period": "2020-08-20",
                            "count": 0
                        },
                        {
                            "period": "2020-08-21",
                            "count": 56
                        },
                        {
                            "period": "2020-08-22",
                            "count": 53
                        },
                        {
                            "period": "2020-08-23",
                            "count": 0
                        },
                        {
                            "period": "2020-08-24",
                            "count": 100
                        },
                        {
                            "period": "2020-08-25",
                            "count": 95
                        },
                        {
                            "period": "2020-08-26",
                            "count": 71
                        },
                        {
                            "period": "2020-08-27",
                            "count": 0
                        },
                        {
                            "period": "2020-08-28",
                            "count": 80
                        },
                        {
                            "period": "2020-08-29",
                            "count": 58
                        },
                        {
                            "period": "2020-08-30",
                            "count": 60
                        },
                        {
                            "period": "2020-08-31",
                            "count": 83
                        },
                        {
                            "period": "2020-09-01",
                            "count": 83
                        },
                        {
                            "period": "2020-09-02",
                            "count": 82
                        },
                        {
                            "period": "2020-09-03",
                            "count": 94
                        },
                        {
                            "period": "2020-09-04",
                            "count": 59
                        },
                        {
                            "period": "2020-09-05",
                            "count": 48
                        },
                        {
                            "period": "2020-09-06",
                            "count": 58
                        },
                        {
                            "period": "2020-09-07",
                            "count": 55
                        },
                        {
                            "period": "2020-09-08",
                            "count": 91
                        },
                        {
                            "period": "2020-09-09",
                            "count": 84
                        },
                        {
                            "period": "2020-09-10",
                            "count": 83
                        },
                        {
                            "period": "2020-09-11",
                            "count": 68
                        },
                        {
                            "period": "2020-09-12",
                            "count": 90
                        },
                        {
                            "period": "2020-09-13",
                            "count": 65
                        },
                        {
                            "period": "2020-09-14",
                            "count": 55
                        },
                        {
                            "period": "2020-09-15",
                            "count": 67
                        },
                        {
                            "period": "2020-09-16",
                            "count": 63
                        },
                        {
                            "period": "2020-09-17",
                            "count": 78
                        },
                        {
                            "period": "2020-09-18",
                            "count": 66
                        },
                        {
                            "period": "2020-09-19",
                            "count": 52
                        },
                        {
                            "period": "2020-09-20",
                            "count": 68
                        },
                        {
                            "period": "2020-09-21",
                            "count": 61
                        },
                        {
                            "period": "2020-09-22",
                            "count": 80
                        },
                        {
                            "period": "2020-09-23",
                            "count": 77
                        },
                        {
                            "period": "2020-09-24",
                            "count": 110
                        },
                        {
                            "period": "2020-09-25",
                            "count": 65
                        },
                        {
                            "period": "2020-09-26",
                            "count": 0
                        },
                        {
                            "period": "2020-09-27",
                            "count": 37
                        },
                        {
                            "period": "2020-09-28",
                            "count": 0
                        },
                        {
                            "period": "2020-09-29",
                            "count": 67
                        },
                        {
                            "period": "2020-09-30",
                            "count": 93
                        },
                        {
                            "period": "2020-10-01",
                            "count": 68
                        }
                    ]
                },
                {
                    "name": "PHOTOS_VIEWS_CUSTOMERS",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 0
                        },
                        {
                            "period": "2020-04-02",
                            "count": 0
                        },
                        {
                            "period": "2020-04-03",
                            "count": 0
                        },
                        {
                            "period": "2020-04-04",
                            "count": 0
                        },
                        {
                            "period": "2020-04-05",
                            "count": 0
                        },
                        {
                            "period": "2020-04-06",
                            "count": 0
                        },
                        {
                            "period": "2020-04-07",
                            "count": 0
                        },
                        {
                            "period": "2020-04-08",
                            "count": 0
                        },
                        {
                            "period": "2020-04-09",
                            "count": 0
                        },
                        {
                            "period": "2020-04-10",
                            "count": 0
                        },
                        {
                            "period": "2020-04-11",
                            "count": 0
                        },
                        {
                            "period": "2020-04-12",
                            "count": 0
                        },
                        {
                            "period": "2020-04-13",
                            "count": 0
                        },
                        {
                            "period": "2020-04-14",
                            "count": 0
                        },
                        {
                            "period": "2020-04-15",
                            "count": 0
                        },
                        {
                            "period": "2020-04-16",
                            "count": 0
                        },
                        {
                            "period": "2020-04-17",
                            "count": 0
                        },
                        {
                            "period": "2020-04-18",
                            "count": 0
                        },
                        {
                            "period": "2020-04-19",
                            "count": 0
                        },
                        {
                            "period": "2020-04-20",
                            "count": 0
                        },
                        {
                            "period": "2020-04-21",
                            "count": 0
                        },
                        {
                            "period": "2020-04-22",
                            "count": 0
                        },
                        {
                            "period": "2020-04-23",
                            "count": 0
                        },
                        {
                            "period": "2020-04-24",
                            "count": 0
                        },
                        {
                            "period": "2020-04-25",
                            "count": 0
                        },
                        {
                            "period": "2020-04-26",
                            "count": 0
                        },
                        {
                            "period": "2020-04-27",
                            "count": 0
                        },
                        {
                            "period": "2020-04-28",
                            "count": 0
                        },
                        {
                            "period": "2020-04-29",
                            "count": 0
                        },
                        {
                            "period": "2020-04-30",
                            "count": 0
                        },
                        {
                            "period": "2020-05-01",
                            "count": 0
                        },
                        {
                            "period": "2020-05-02",
                            "count": 0
                        },
                        {
                            "period": "2020-05-03",
                            "count": 0
                        },
                        {
                            "period": "2020-05-04",
                            "count": 0
                        },
                        {
                            "period": "2020-05-05",
                            "count": 0
                        },
                        {
                            "period": "2020-05-06",
                            "count": 0
                        },
                        {
                            "period": "2020-05-07",
                            "count": 0
                        },
                        {
                            "period": "2020-05-08",
                            "count": 0
                        },
                        {
                            "period": "2020-05-09",
                            "count": 0
                        },
                        {
                            "period": "2020-05-10",
                            "count": 0
                        },
                        {
                            "period": "2020-05-11",
                            "count": 0
                        },
                        {
                            "period": "2020-05-12",
                            "count": 0
                        },
                        {
                            "period": "2020-05-13",
                            "count": 0
                        },
                        {
                            "period": "2020-05-14",
                            "count": 0
                        },
                        {
                            "period": "2020-05-15",
                            "count": 0
                        },
                        {
                            "period": "2020-05-16",
                            "count": 0
                        },
                        {
                            "period": "2020-05-17",
                            "count": 0
                        },
                        {
                            "period": "2020-05-18",
                            "count": 0
                        },
                        {
                            "period": "2020-05-19",
                            "count": 0
                        },
                        {
                            "period": "2020-05-20",
                            "count": 0
                        },
                        {
                            "period": "2020-05-21",
                            "count": 0
                        },
                        {
                            "period": "2020-05-22",
                            "count": 0
                        },
                        {
                            "period": "2020-05-23",
                            "count": 0
                        },
                        {
                            "period": "2020-05-24",
                            "count": 0
                        },
                        {
                            "period": "2020-05-25",
                            "count": 0
                        },
                        {
                            "period": "2020-05-26",
                            "count": 0
                        },
                        {
                            "period": "2020-05-27",
                            "count": 0
                        },
                        {
                            "period": "2020-05-28",
                            "count": 0
                        },
                        {
                            "period": "2020-05-29",
                            "count": 0
                        },
                        {
                            "period": "2020-05-30",
                            "count": 0
                        },
                        {
                            "period": "2020-05-31",
                            "count": 0
                        },
                        {
                            "period": "2020-06-01",
                            "count": 0
                        },
                        {
                            "period": "2020-06-02",
                            "count": 0
                        },
                        {
                            "period": "2020-06-03",
                            "count": 0
                        },
                        {
                            "period": "2020-06-04",
                            "count": 0
                        },
                        {
                            "period": "2020-06-05",
                            "count": 0
                        },
                        {
                            "period": "2020-06-06",
                            "count": 0
                        },
                        {
                            "period": "2020-06-07",
                            "count": 0
                        },
                        {
                            "period": "2020-06-08",
                            "count": 0
                        },
                        {
                            "period": "2020-06-09",
                            "count": 0
                        },
                        {
                            "period": "2020-06-10",
                            "count": 0
                        },
                        {
                            "period": "2020-06-11",
                            "count": 0
                        },
                        {
                            "period": "2020-06-12",
                            "count": 0
                        },
                        {
                            "period": "2020-06-13",
                            "count": 0
                        },
                        {
                            "period": "2020-06-14",
                            "count": 0
                        },
                        {
                            "period": "2020-06-15",
                            "count": 0
                        },
                        {
                            "period": "2020-06-16",
                            "count": 0
                        },
                        {
                            "period": "2020-06-17",
                            "count": 0
                        },
                        {
                            "period": "2020-06-18",
                            "count": 0
                        },
                        {
                            "period": "2020-06-19",
                            "count": 0
                        },
                        {
                            "period": "2020-06-20",
                            "count": 0
                        },
                        {
                            "period": "2020-06-21",
                            "count": 0
                        },
                        {
                            "period": "2020-06-22",
                            "count": 0
                        },
                        {
                            "period": "2020-06-23",
                            "count": 0
                        },
                        {
                            "period": "2020-06-24",
                            "count": 0
                        },
                        {
                            "period": "2020-06-25",
                            "count": 0
                        },
                        {
                            "period": "2020-06-26",
                            "count": 0
                        },
                        {
                            "period": "2020-06-27",
                            "count": 0
                        },
                        {
                            "period": "2020-06-28",
                            "count": 0
                        },
                        {
                            "period": "2020-06-29",
                            "count": 0
                        },
                        {
                            "period": "2020-06-30",
                            "count": 0
                        },
                        {
                            "period": "2020-07-01",
                            "count": 0
                        },
                        {
                            "period": "2020-07-02",
                            "count": 0
                        },
                        {
                            "period": "2020-07-03",
                            "count": 0
                        },
                        {
                            "period": "2020-07-04",
                            "count": 0
                        },
                        {
                            "period": "2020-07-05",
                            "count": 0
                        },
                        {
                            "period": "2020-07-06",
                            "count": 0
                        },
                        {
                            "period": "2020-07-07",
                            "count": 0
                        },
                        {
                            "period": "2020-07-08",
                            "count": 0
                        },
                        {
                            "period": "2020-07-09",
                            "count": 0
                        },
                        {
                            "period": "2020-07-10",
                            "count": 0
                        },
                        {
                            "period": "2020-07-11",
                            "count": 0
                        },
                        {
                            "period": "2020-07-12",
                            "count": 0
                        },
                        {
                            "period": "2020-07-13",
                            "count": 0
                        },
                        {
                            "period": "2020-07-14",
                            "count": 0
                        },
                        {
                            "period": "2020-07-15",
                            "count": 0
                        },
                        {
                            "period": "2020-07-16",
                            "count": 0
                        },
                        {
                            "period": "2020-07-17",
                            "count": 0
                        },
                        {
                            "period": "2020-07-18",
                            "count": 0
                        },
                        {
                            "period": "2020-07-19",
                            "count": 0
                        },
                        {
                            "period": "2020-07-20",
                            "count": 0
                        },
                        {
                            "period": "2020-07-21",
                            "count": 0
                        },
                        {
                            "period": "2020-07-22",
                            "count": 0
                        },
                        {
                            "period": "2020-07-23",
                            "count": 0
                        },
                        {
                            "period": "2020-07-24",
                            "count": 0
                        },
                        {
                            "period": "2020-07-25",
                            "count": 0
                        },
                        {
                            "period": "2020-07-26",
                            "count": 0
                        },
                        {
                            "period": "2020-07-27",
                            "count": 0
                        },
                        {
                            "period": "2020-07-28",
                            "count": 0
                        },
                        {
                            "period": "2020-07-29",
                            "count": 0
                        },
                        {
                            "period": "2020-07-30",
                            "count": 0
                        },
                        {
                            "period": "2020-07-31",
                            "count": 0
                        },
                        {
                            "period": "2020-08-01",
                            "count": 0
                        },
                        {
                            "period": "2020-08-02",
                            "count": 0
                        },
                        {
                            "period": "2020-08-03",
                            "count": 0
                        },
                        {
                            "period": "2020-08-04",
                            "count": 0
                        },
                        {
                            "period": "2020-08-05",
                            "count": 0
                        },
                        {
                            "period": "2020-08-06",
                            "count": 0
                        },
                        {
                            "period": "2020-08-07",
                            "count": 0
                        },
                        {
                            "period": "2020-08-08",
                            "count": 0
                        },
                        {
                            "period": "2020-08-09",
                            "count": 0
                        },
                        {
                            "period": "2020-08-10",
                            "count": 0
                        },
                        {
                            "period": "2020-08-11",
                            "count": 0
                        },
                        {
                            "period": "2020-08-12",
                            "count": 0
                        },
                        {
                            "period": "2020-08-13",
                            "count": 0
                        },
                        {
                            "period": "2020-08-14",
                            "count": 0
                        },
                        {
                            "period": "2020-08-15",
                            "count": 0
                        },
                        {
                            "period": "2020-08-16",
                            "count": 0
                        },
                        {
                            "period": "2020-08-17",
                            "count": 0
                        },
                        {
                            "period": "2020-08-18",
                            "count": 0
                        },
                        {
                            "period": "2020-08-19",
                            "count": 0
                        },
                        {
                            "period": "2020-08-20",
                            "count": 0
                        },
                        {
                            "period": "2020-08-21",
                            "count": 0
                        },
                        {
                            "period": "2020-08-22",
                            "count": 0
                        },
                        {
                            "period": "2020-08-23",
                            "count": 0
                        },
                        {
                            "period": "2020-08-24",
                            "count": 0
                        },
                        {
                            "period": "2020-08-25",
                            "count": 0
                        },
                        {
                            "period": "2020-08-26",
                            "count": 0
                        },
                        {
                            "period": "2020-08-27",
                            "count": 0
                        },
                        {
                            "period": "2020-08-28",
                            "count": 0
                        },
                        {
                            "period": "2020-08-29",
                            "count": 0
                        },
                        {
                            "period": "2020-08-30",
                            "count": 0
                        },
                        {
                            "period": "2020-08-31",
                            "count": 0
                        },
                        {
                            "period": "2020-09-01",
                            "count": 0
                        },
                        {
                            "period": "2020-09-02",
                            "count": 0
                        },
                        {
                            "period": "2020-09-03",
                            "count": 0
                        },
                        {
                            "period": "2020-09-04",
                            "count": 0
                        },
                        {
                            "period": "2020-09-05",
                            "count": 0
                        },
                        {
                            "period": "2020-09-06",
                            "count": 0
                        },
                        {
                            "period": "2020-09-07",
                            "count": 0
                        },
                        {
                            "period": "2020-09-08",
                            "count": 0
                        },
                        {
                            "period": "2020-09-09",
                            "count": 0
                        },
                        {
                            "period": "2020-09-10",
                            "count": 0
                        },
                        {
                            "period": "2020-09-11",
                            "count": 0
                        },
                        {
                            "period": "2020-09-12",
                            "count": 0
                        },
                        {
                            "period": "2020-09-13",
                            "count": 0
                        },
                        {
                            "period": "2020-09-14",
                            "count": 0
                        },
                        {
                            "period": "2020-09-15",
                            "count": 0
                        },
                        {
                            "period": "2020-09-16",
                            "count": 0
                        },
                        {
                            "period": "2020-09-17",
                            "count": 0
                        },
                        {
                            "period": "2020-09-18",
                            "count": 0
                        },
                        {
                            "period": "2020-09-19",
                            "count": 0
                        },
                        {
                            "period": "2020-09-20",
                            "count": 0
                        },
                        {
                            "period": "2020-09-21",
                            "count": 0
                        },
                        {
                            "period": "2020-09-22",
                            "count": 0
                        },
                        {
                            "period": "2020-09-23",
                            "count": 0
                        },
                        {
                            "period": "2020-09-24",
                            "count": 0
                        },
                        {
                            "period": "2020-09-25",
                            "count": 0
                        },
                        {
                            "period": "2020-09-26",
                            "count": 0
                        },
                        {
                            "period": "2020-09-27",
                            "count": 0
                        },
                        {
                            "period": "2020-09-28",
                            "count": 0
                        },
                        {
                            "period": "2020-09-29",
                            "count": 0
                        },
                        {
                            "period": "2020-09-30",
                            "count": 0
                        },
                        {
                            "period": "2020-10-01",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "LOCAL_POST_VIEWS_SEARCH",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 0
                        },
                        {
                            "period": "2020-04-02",
                            "count": 0
                        },
                        {
                            "period": "2020-04-03",
                            "count": 0
                        },
                        {
                            "period": "2020-04-04",
                            "count": 0
                        },
                        {
                            "period": "2020-04-05",
                            "count": 0
                        },
                        {
                            "period": "2020-04-06",
                            "count": 0
                        },
                        {
                            "period": "2020-04-07",
                            "count": 0
                        },
                        {
                            "period": "2020-04-08",
                            "count": 0
                        },
                        {
                            "period": "2020-04-09",
                            "count": 0
                        },
                        {
                            "period": "2020-04-10",
                            "count": 0
                        },
                        {
                            "period": "2020-04-11",
                            "count": 0
                        },
                        {
                            "period": "2020-04-12",
                            "count": 0
                        },
                        {
                            "period": "2020-04-13",
                            "count": 0
                        },
                        {
                            "period": "2020-04-14",
                            "count": 0
                        },
                        {
                            "period": "2020-04-15",
                            "count": 0
                        },
                        {
                            "period": "2020-04-16",
                            "count": 0
                        },
                        {
                            "period": "2020-04-17",
                            "count": 0
                        },
                        {
                            "period": "2020-04-18",
                            "count": 0
                        },
                        {
                            "period": "2020-04-19",
                            "count": 0
                        },
                        {
                            "period": "2020-04-20",
                            "count": 0
                        },
                        {
                            "period": "2020-04-21",
                            "count": 0
                        },
                        {
                            "period": "2020-04-22",
                            "count": 0
                        },
                        {
                            "period": "2020-04-23",
                            "count": 0
                        },
                        {
                            "period": "2020-04-24",
                            "count": 0
                        },
                        {
                            "period": "2020-04-25",
                            "count": 0
                        },
                        {
                            "period": "2020-04-26",
                            "count": 0
                        },
                        {
                            "period": "2020-04-27",
                            "count": 0
                        },
                        {
                            "period": "2020-04-28",
                            "count": 0
                        },
                        {
                            "period": "2020-04-29",
                            "count": 0
                        },
                        {
                            "period": "2020-04-30",
                            "count": 0
                        },
                        {
                            "period": "2020-05-01",
                            "count": 0
                        },
                        {
                            "period": "2020-05-02",
                            "count": 0
                        },
                        {
                            "period": "2020-05-03",
                            "count": 0
                        },
                        {
                            "period": "2020-05-04",
                            "count": 0
                        },
                        {
                            "period": "2020-05-05",
                            "count": 0
                        },
                        {
                            "period": "2020-05-06",
                            "count": 0
                        },
                        {
                            "period": "2020-05-07",
                            "count": 0
                        },
                        {
                            "period": "2020-05-08",
                            "count": 0
                        },
                        {
                            "period": "2020-05-09",
                            "count": 0
                        },
                        {
                            "period": "2020-05-10",
                            "count": 0
                        },
                        {
                            "period": "2020-05-11",
                            "count": 0
                        },
                        {
                            "period": "2020-05-12",
                            "count": 0
                        },
                        {
                            "period": "2020-05-13",
                            "count": 0
                        },
                        {
                            "period": "2020-05-14",
                            "count": 0
                        },
                        {
                            "period": "2020-05-15",
                            "count": 0
                        },
                        {
                            "period": "2020-05-16",
                            "count": 0
                        },
                        {
                            "period": "2020-05-17",
                            "count": 0
                        },
                        {
                            "period": "2020-05-18",
                            "count": 0
                        },
                        {
                            "period": "2020-05-19",
                            "count": 0
                        },
                        {
                            "period": "2020-05-20",
                            "count": 0
                        },
                        {
                            "period": "2020-05-21",
                            "count": 0
                        },
                        {
                            "period": "2020-05-22",
                            "count": 0
                        },
                        {
                            "period": "2020-05-23",
                            "count": 0
                        },
                        {
                            "period": "2020-05-24",
                            "count": 0
                        },
                        {
                            "period": "2020-05-25",
                            "count": 0
                        },
                        {
                            "period": "2020-05-26",
                            "count": 0
                        },
                        {
                            "period": "2020-05-27",
                            "count": 0
                        },
                        {
                            "period": "2020-05-28",
                            "count": 0
                        },
                        {
                            "period": "2020-05-29",
                            "count": 0
                        },
                        {
                            "period": "2020-05-30",
                            "count": 0
                        },
                        {
                            "period": "2020-05-31",
                            "count": 0
                        },
                        {
                            "period": "2020-06-01",
                            "count": 0
                        },
                        {
                            "period": "2020-06-02",
                            "count": 0
                        },
                        {
                            "period": "2020-06-03",
                            "count": 0
                        },
                        {
                            "period": "2020-06-04",
                            "count": 0
                        },
                        {
                            "period": "2020-06-05",
                            "count": 0
                        },
                        {
                            "period": "2020-06-06",
                            "count": 0
                        },
                        {
                            "period": "2020-06-07",
                            "count": 0
                        },
                        {
                            "period": "2020-06-08",
                            "count": 0
                        },
                        {
                            "period": "2020-06-09",
                            "count": 0
                        },
                        {
                            "period": "2020-06-10",
                            "count": 0
                        },
                        {
                            "period": "2020-06-11",
                            "count": 0
                        },
                        {
                            "period": "2020-06-12",
                            "count": 0
                        },
                        {
                            "period": "2020-06-13",
                            "count": 0
                        },
                        {
                            "period": "2020-06-14",
                            "count": 0
                        },
                        {
                            "period": "2020-06-15",
                            "count": 0
                        },
                        {
                            "period": "2020-06-16",
                            "count": 0
                        },
                        {
                            "period": "2020-06-17",
                            "count": 0
                        },
                        {
                            "period": "2020-06-18",
                            "count": 0
                        },
                        {
                            "period": "2020-06-19",
                            "count": 0
                        },
                        {
                            "period": "2020-06-20",
                            "count": 0
                        },
                        {
                            "period": "2020-06-21",
                            "count": 0
                        },
                        {
                            "period": "2020-06-22",
                            "count": 0
                        },
                        {
                            "period": "2020-06-23",
                            "count": 0
                        },
                        {
                            "period": "2020-06-24",
                            "count": 0
                        },
                        {
                            "period": "2020-06-25",
                            "count": 0
                        },
                        {
                            "period": "2020-06-26",
                            "count": 0
                        },
                        {
                            "period": "2020-06-27",
                            "count": 0
                        },
                        {
                            "period": "2020-06-28",
                            "count": 0
                        },
                        {
                            "period": "2020-06-29",
                            "count": 0
                        },
                        {
                            "period": "2020-06-30",
                            "count": 0
                        },
                        {
                            "period": "2020-07-01",
                            "count": 0
                        },
                        {
                            "period": "2020-07-02",
                            "count": 0
                        },
                        {
                            "period": "2020-07-03",
                            "count": 0
                        },
                        {
                            "period": "2020-07-04",
                            "count": 0
                        },
                        {
                            "period": "2020-07-05",
                            "count": 0
                        },
                        {
                            "period": "2020-07-06",
                            "count": 0
                        },
                        {
                            "period": "2020-07-07",
                            "count": 0
                        },
                        {
                            "period": "2020-07-08",
                            "count": 0
                        },
                        {
                            "period": "2020-07-09",
                            "count": 0
                        },
                        {
                            "period": "2020-07-10",
                            "count": 0
                        },
                        {
                            "period": "2020-07-11",
                            "count": 0
                        },
                        {
                            "period": "2020-07-12",
                            "count": 0
                        },
                        {
                            "period": "2020-07-13",
                            "count": 0
                        },
                        {
                            "period": "2020-07-14",
                            "count": 0
                        },
                        {
                            "period": "2020-07-15",
                            "count": 0
                        },
                        {
                            "period": "2020-07-16",
                            "count": 0
                        },
                        {
                            "period": "2020-07-17",
                            "count": 0
                        },
                        {
                            "period": "2020-07-18",
                            "count": 0
                        },
                        {
                            "period": "2020-07-19",
                            "count": 0
                        },
                        {
                            "period": "2020-07-20",
                            "count": 0
                        },
                        {
                            "period": "2020-07-21",
                            "count": 0
                        },
                        {
                            "period": "2020-07-22",
                            "count": 0
                        },
                        {
                            "period": "2020-07-23",
                            "count": 0
                        },
                        {
                            "period": "2020-07-24",
                            "count": 0
                        },
                        {
                            "period": "2020-07-25",
                            "count": 0
                        },
                        {
                            "period": "2020-07-26",
                            "count": 0
                        },
                        {
                            "period": "2020-07-27",
                            "count": 0
                        },
                        {
                            "period": "2020-07-28",
                            "count": 0
                        },
                        {
                            "period": "2020-07-29",
                            "count": 0
                        },
                        {
                            "period": "2020-07-30",
                            "count": 0
                        },
                        {
                            "period": "2020-07-31",
                            "count": 0
                        },
                        {
                            "period": "2020-08-01",
                            "count": 0
                        },
                        {
                            "period": "2020-08-02",
                            "count": 0
                        },
                        {
                            "period": "2020-08-03",
                            "count": 0
                        },
                        {
                            "period": "2020-08-04",
                            "count": 0
                        },
                        {
                            "period": "2020-08-05",
                            "count": 0
                        },
                        {
                            "period": "2020-08-06",
                            "count": 0
                        },
                        {
                            "period": "2020-08-07",
                            "count": 0
                        },
                        {
                            "period": "2020-08-08",
                            "count": 0
                        },
                        {
                            "period": "2020-08-09",
                            "count": 0
                        },
                        {
                            "period": "2020-08-10",
                            "count": 0
                        },
                        {
                            "period": "2020-08-11",
                            "count": 0
                        },
                        {
                            "period": "2020-08-12",
                            "count": 0
                        },
                        {
                            "period": "2020-08-13",
                            "count": 0
                        },
                        {
                            "period": "2020-08-14",
                            "count": 0
                        },
                        {
                            "period": "2020-08-15",
                            "count": 0
                        },
                        {
                            "period": "2020-08-16",
                            "count": 0
                        },
                        {
                            "period": "2020-08-17",
                            "count": 0
                        },
                        {
                            "period": "2020-08-18",
                            "count": 0
                        },
                        {
                            "period": "2020-08-19",
                            "count": 0
                        },
                        {
                            "period": "2020-08-20",
                            "count": 0
                        },
                        {
                            "period": "2020-08-21",
                            "count": 0
                        },
                        {
                            "period": "2020-08-22",
                            "count": 0
                        },
                        {
                            "period": "2020-08-23",
                            "count": 0
                        },
                        {
                            "period": "2020-08-24",
                            "count": 0
                        },
                        {
                            "period": "2020-08-25",
                            "count": 0
                        },
                        {
                            "period": "2020-08-26",
                            "count": 0
                        },
                        {
                            "period": "2020-08-27",
                            "count": 0
                        },
                        {
                            "period": "2020-08-28",
                            "count": 0
                        },
                        {
                            "period": "2020-08-29",
                            "count": 0
                        },
                        {
                            "period": "2020-08-30",
                            "count": 0
                        },
                        {
                            "period": "2020-08-31",
                            "count": 0
                        },
                        {
                            "period": "2020-09-01",
                            "count": 0
                        },
                        {
                            "period": "2020-09-02",
                            "count": 0
                        },
                        {
                            "period": "2020-09-03",
                            "count": 0
                        },
                        {
                            "period": "2020-09-04",
                            "count": 0
                        },
                        {
                            "period": "2020-09-05",
                            "count": 0
                        },
                        {
                            "period": "2020-09-06",
                            "count": 0
                        },
                        {
                            "period": "2020-09-07",
                            "count": 0
                        },
                        {
                            "period": "2020-09-08",
                            "count": 0
                        },
                        {
                            "period": "2020-09-09",
                            "count": 0
                        },
                        {
                            "period": "2020-09-10",
                            "count": 0
                        },
                        {
                            "period": "2020-09-11",
                            "count": 0
                        },
                        {
                            "period": "2020-09-12",
                            "count": 0
                        },
                        {
                            "period": "2020-09-13",
                            "count": 0
                        },
                        {
                            "period": "2020-09-14",
                            "count": 0
                        },
                        {
                            "period": "2020-09-15",
                            "count": 0
                        },
                        {
                            "period": "2020-09-16",
                            "count": 0
                        },
                        {
                            "period": "2020-09-17",
                            "count": 0
                        },
                        {
                            "period": "2020-09-18",
                            "count": 0
                        },
                        {
                            "period": "2020-09-19",
                            "count": 0
                        },
                        {
                            "period": "2020-09-20",
                            "count": 0
                        },
                        {
                            "period": "2020-09-21",
                            "count": 0
                        },
                        {
                            "period": "2020-09-22",
                            "count": 0
                        },
                        {
                            "period": "2020-09-23",
                            "count": 0
                        },
                        {
                            "period": "2020-09-24",
                            "count": 0
                        },
                        {
                            "period": "2020-09-25",
                            "count": 0
                        },
                        {
                            "period": "2020-09-26",
                            "count": 0
                        },
                        {
                            "period": "2020-09-27",
                            "count": 0
                        },
                        {
                            "period": "2020-09-28",
                            "count": 0
                        },
                        {
                            "period": "2020-09-29",
                            "count": 0
                        },
                        {
                            "period": "2020-09-30",
                            "count": 0
                        },
                        {
                            "period": "2020-10-01",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "LOCAL_POST_ACTIONS_CALL_TO_ACTION",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 0
                        },
                        {
                            "period": "2020-04-02",
                            "count": 0
                        },
                        {
                            "period": "2020-04-03",
                            "count": 0
                        },
                        {
                            "period": "2020-04-04",
                            "count": 0
                        },
                        {
                            "period": "2020-04-05",
                            "count": 0
                        },
                        {
                            "period": "2020-04-06",
                            "count": 0
                        },
                        {
                            "period": "2020-04-07",
                            "count": 0
                        },
                        {
                            "period": "2020-04-08",
                            "count": 0
                        },
                        {
                            "period": "2020-04-09",
                            "count": 0
                        },
                        {
                            "period": "2020-04-10",
                            "count": 0
                        },
                        {
                            "period": "2020-04-11",
                            "count": 0
                        },
                        {
                            "period": "2020-04-12",
                            "count": 0
                        },
                        {
                            "period": "2020-04-13",
                            "count": 0
                        },
                        {
                            "period": "2020-04-14",
                            "count": 0
                        },
                        {
                            "period": "2020-04-15",
                            "count": 0
                        },
                        {
                            "period": "2020-04-16",
                            "count": 0
                        },
                        {
                            "period": "2020-04-17",
                            "count": 0
                        },
                        {
                            "period": "2020-04-18",
                            "count": 0
                        },
                        {
                            "period": "2020-04-19",
                            "count": 0
                        },
                        {
                            "period": "2020-04-20",
                            "count": 0
                        },
                        {
                            "period": "2020-04-21",
                            "count": 0
                        },
                        {
                            "period": "2020-04-22",
                            "count": 0
                        },
                        {
                            "period": "2020-04-23",
                            "count": 0
                        },
                        {
                            "period": "2020-04-24",
                            "count": 0
                        },
                        {
                            "period": "2020-04-25",
                            "count": 0
                        },
                        {
                            "period": "2020-04-26",
                            "count": 0
                        },
                        {
                            "period": "2020-04-27",
                            "count": 0
                        },
                        {
                            "period": "2020-04-28",
                            "count": 0
                        },
                        {
                            "period": "2020-04-29",
                            "count": 0
                        },
                        {
                            "period": "2020-04-30",
                            "count": 0
                        },
                        {
                            "period": "2020-05-01",
                            "count": 0
                        },
                        {
                            "period": "2020-05-02",
                            "count": 0
                        },
                        {
                            "period": "2020-05-03",
                            "count": 0
                        },
                        {
                            "period": "2020-05-04",
                            "count": 0
                        },
                        {
                            "period": "2020-05-05",
                            "count": 0
                        },
                        {
                            "period": "2020-05-06",
                            "count": 0
                        },
                        {
                            "period": "2020-05-07",
                            "count": 0
                        },
                        {
                            "period": "2020-05-08",
                            "count": 0
                        },
                        {
                            "period": "2020-05-09",
                            "count": 0
                        },
                        {
                            "period": "2020-05-10",
                            "count": 0
                        },
                        {
                            "period": "2020-05-11",
                            "count": 0
                        },
                        {
                            "period": "2020-05-12",
                            "count": 0
                        },
                        {
                            "period": "2020-05-13",
                            "count": 0
                        },
                        {
                            "period": "2020-05-14",
                            "count": 0
                        },
                        {
                            "period": "2020-05-15",
                            "count": 0
                        },
                        {
                            "period": "2020-05-16",
                            "count": 0
                        },
                        {
                            "period": "2020-05-17",
                            "count": 0
                        },
                        {
                            "period": "2020-05-18",
                            "count": 0
                        },
                        {
                            "period": "2020-05-19",
                            "count": 0
                        },
                        {
                            "period": "2020-05-20",
                            "count": 0
                        },
                        {
                            "period": "2020-05-21",
                            "count": 0
                        },
                        {
                            "period": "2020-05-22",
                            "count": 0
                        },
                        {
                            "period": "2020-05-23",
                            "count": 0
                        },
                        {
                            "period": "2020-05-24",
                            "count": 0
                        },
                        {
                            "period": "2020-05-25",
                            "count": 0
                        },
                        {
                            "period": "2020-05-26",
                            "count": 0
                        },
                        {
                            "period": "2020-05-27",
                            "count": 0
                        },
                        {
                            "period": "2020-05-28",
                            "count": 0
                        },
                        {
                            "period": "2020-05-29",
                            "count": 0
                        },
                        {
                            "period": "2020-05-30",
                            "count": 0
                        },
                        {
                            "period": "2020-05-31",
                            "count": 0
                        },
                        {
                            "period": "2020-06-01",
                            "count": 0
                        },
                        {
                            "period": "2020-06-02",
                            "count": 0
                        },
                        {
                            "period": "2020-06-03",
                            "count": 0
                        },
                        {
                            "period": "2020-06-04",
                            "count": 0
                        },
                        {
                            "period": "2020-06-05",
                            "count": 0
                        },
                        {
                            "period": "2020-06-06",
                            "count": 0
                        },
                        {
                            "period": "2020-06-07",
                            "count": 0
                        },
                        {
                            "period": "2020-06-08",
                            "count": 0
                        },
                        {
                            "period": "2020-06-09",
                            "count": 0
                        },
                        {
                            "period": "2020-06-10",
                            "count": 0
                        },
                        {
                            "period": "2020-06-11",
                            "count": 0
                        },
                        {
                            "period": "2020-06-12",
                            "count": 0
                        },
                        {
                            "period": "2020-06-13",
                            "count": 0
                        },
                        {
                            "period": "2020-06-14",
                            "count": 0
                        },
                        {
                            "period": "2020-06-15",
                            "count": 0
                        },
                        {
                            "period": "2020-06-16",
                            "count": 0
                        },
                        {
                            "period": "2020-06-17",
                            "count": 0
                        },
                        {
                            "period": "2020-06-18",
                            "count": 0
                        },
                        {
                            "period": "2020-06-19",
                            "count": 0
                        },
                        {
                            "period": "2020-06-20",
                            "count": 0
                        },
                        {
                            "period": "2020-06-21",
                            "count": 0
                        },
                        {
                            "period": "2020-06-22",
                            "count": 0
                        },
                        {
                            "period": "2020-06-23",
                            "count": 0
                        },
                        {
                            "period": "2020-06-24",
                            "count": 0
                        },
                        {
                            "period": "2020-06-25",
                            "count": 0
                        },
                        {
                            "period": "2020-06-26",
                            "count": 0
                        },
                        {
                            "period": "2020-06-27",
                            "count": 0
                        },
                        {
                            "period": "2020-06-28",
                            "count": 0
                        },
                        {
                            "period": "2020-06-29",
                            "count": 0
                        },
                        {
                            "period": "2020-06-30",
                            "count": 0
                        },
                        {
                            "period": "2020-07-01",
                            "count": 0
                        },
                        {
                            "period": "2020-07-02",
                            "count": 0
                        },
                        {
                            "period": "2020-07-03",
                            "count": 0
                        },
                        {
                            "period": "2020-07-04",
                            "count": 0
                        },
                        {
                            "period": "2020-07-05",
                            "count": 0
                        },
                        {
                            "period": "2020-07-06",
                            "count": 0
                        },
                        {
                            "period": "2020-07-07",
                            "count": 0
                        },
                        {
                            "period": "2020-07-08",
                            "count": 0
                        },
                        {
                            "period": "2020-07-09",
                            "count": 0
                        },
                        {
                            "period": "2020-07-10",
                            "count": 0
                        },
                        {
                            "period": "2020-07-11",
                            "count": 0
                        },
                        {
                            "period": "2020-07-12",
                            "count": 0
                        },
                        {
                            "period": "2020-07-13",
                            "count": 0
                        },
                        {
                            "period": "2020-07-14",
                            "count": 0
                        },
                        {
                            "period": "2020-07-15",
                            "count": 0
                        },
                        {
                            "period": "2020-07-16",
                            "count": 0
                        },
                        {
                            "period": "2020-07-17",
                            "count": 0
                        },
                        {
                            "period": "2020-07-18",
                            "count": 0
                        },
                        {
                            "period": "2020-07-19",
                            "count": 0
                        },
                        {
                            "period": "2020-07-20",
                            "count": 0
                        },
                        {
                            "period": "2020-07-21",
                            "count": 0
                        },
                        {
                            "period": "2020-07-22",
                            "count": 0
                        },
                        {
                            "period": "2020-07-23",
                            "count": 0
                        },
                        {
                            "period": "2020-07-24",
                            "count": 0
                        },
                        {
                            "period": "2020-07-25",
                            "count": 0
                        },
                        {
                            "period": "2020-07-26",
                            "count": 0
                        },
                        {
                            "period": "2020-07-27",
                            "count": 0
                        },
                        {
                            "period": "2020-07-28",
                            "count": 0
                        },
                        {
                            "period": "2020-07-29",
                            "count": 0
                        },
                        {
                            "period": "2020-07-30",
                            "count": 0
                        },
                        {
                            "period": "2020-07-31",
                            "count": 0
                        },
                        {
                            "period": "2020-08-01",
                            "count": 0
                        },
                        {
                            "period": "2020-08-02",
                            "count": 0
                        },
                        {
                            "period": "2020-08-03",
                            "count": 0
                        },
                        {
                            "period": "2020-08-04",
                            "count": 0
                        },
                        {
                            "period": "2020-08-05",
                            "count": 0
                        },
                        {
                            "period": "2020-08-06",
                            "count": 0
                        },
                        {
                            "period": "2020-08-07",
                            "count": 0
                        },
                        {
                            "period": "2020-08-08",
                            "count": 0
                        },
                        {
                            "period": "2020-08-09",
                            "count": 0
                        },
                        {
                            "period": "2020-08-10",
                            "count": 0
                        },
                        {
                            "period": "2020-08-11",
                            "count": 0
                        },
                        {
                            "period": "2020-08-12",
                            "count": 0
                        },
                        {
                            "period": "2020-08-13",
                            "count": 0
                        },
                        {
                            "period": "2020-08-14",
                            "count": 0
                        },
                        {
                            "period": "2020-08-15",
                            "count": 0
                        },
                        {
                            "period": "2020-08-16",
                            "count": 0
                        },
                        {
                            "period": "2020-08-17",
                            "count": 0
                        },
                        {
                            "period": "2020-08-18",
                            "count": 0
                        },
                        {
                            "period": "2020-08-19",
                            "count": 0
                        },
                        {
                            "period": "2020-08-20",
                            "count": 0
                        },
                        {
                            "period": "2020-08-21",
                            "count": 0
                        },
                        {
                            "period": "2020-08-22",
                            "count": 0
                        },
                        {
                            "period": "2020-08-23",
                            "count": 0
                        },
                        {
                            "period": "2020-08-24",
                            "count": 0
                        },
                        {
                            "period": "2020-08-25",
                            "count": 0
                        },
                        {
                            "period": "2020-08-26",
                            "count": 0
                        },
                        {
                            "period": "2020-08-27",
                            "count": 0
                        },
                        {
                            "period": "2020-08-28",
                            "count": 0
                        },
                        {
                            "period": "2020-08-29",
                            "count": 0
                        },
                        {
                            "period": "2020-08-30",
                            "count": 0
                        },
                        {
                            "period": "2020-08-31",
                            "count": 0
                        },
                        {
                            "period": "2020-09-01",
                            "count": 0
                        },
                        {
                            "period": "2020-09-02",
                            "count": 0
                        },
                        {
                            "period": "2020-09-03",
                            "count": 0
                        },
                        {
                            "period": "2020-09-04",
                            "count": 0
                        },
                        {
                            "period": "2020-09-05",
                            "count": 0
                        },
                        {
                            "period": "2020-09-06",
                            "count": 0
                        },
                        {
                            "period": "2020-09-07",
                            "count": 0
                        },
                        {
                            "period": "2020-09-08",
                            "count": 0
                        },
                        {
                            "period": "2020-09-09",
                            "count": 0
                        },
                        {
                            "period": "2020-09-10",
                            "count": 0
                        },
                        {
                            "period": "2020-09-11",
                            "count": 0
                        },
                        {
                            "period": "2020-09-12",
                            "count": 0
                        },
                        {
                            "period": "2020-09-13",
                            "count": 0
                        },
                        {
                            "period": "2020-09-14",
                            "count": 0
                        },
                        {
                            "period": "2020-09-15",
                            "count": 0
                        },
                        {
                            "period": "2020-09-16",
                            "count": 0
                        },
                        {
                            "period": "2020-09-17",
                            "count": 0
                        },
                        {
                            "period": "2020-09-18",
                            "count": 0
                        },
                        {
                            "period": "2020-09-19",
                            "count": 0
                        },
                        {
                            "period": "2020-09-20",
                            "count": 0
                        },
                        {
                            "period": "2020-09-21",
                            "count": 0
                        },
                        {
                            "period": "2020-09-22",
                            "count": 0
                        },
                        {
                            "period": "2020-09-23",
                            "count": 0
                        },
                        {
                            "period": "2020-09-24",
                            "count": 0
                        },
                        {
                            "period": "2020-09-25",
                            "count": 0
                        },
                        {
                            "period": "2020-09-26",
                            "count": 0
                        },
                        {
                            "period": "2020-09-27",
                            "count": 0
                        },
                        {
                            "period": "2020-09-28",
                            "count": 0
                        },
                        {
                            "period": "2020-09-29",
                            "count": 0
                        },
                        {
                            "period": "2020-09-30",
                            "count": 0
                        },
                        {
                            "period": "2020-10-01",
                            "count": 0
                        }
                    ]
                }
            ]
        }
    }
}
```
Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the Report|
|report_date|String|Date report was run|
|report_data|Object|Report details. [Report Data Object](#insightsreportdata)|

<a name="insightsreportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|facebook|Object|Data for specified facebook insights. [Facebook Object](#insights)|
|google|Object|Data for specified google insights. [Google Object](#insights)|


<a name="insights"></a>
**Insights Object**


|Field Name|Datatype|Description|
|---|---|---|
|metrics|Array|An array of insights metrics objects. [Insights Metrics](#metrics)|

<a name="metrics"></a>
**Metrics Array**

|Field Name|Datatype|Description|
|---|---|---|
|name|String|Name of metric|
|data|Array|An array of metrics data| [Metrics Data Array](#metricsdataarray)|

<a name="metricsdataarray"></a>
**Metrics Data Array**

|Field Name|Datatype|Description|
|---|---|---|
|period|String|Date string of the period for which this metric was applied|
|count|Integer|number of times the metric was applied|