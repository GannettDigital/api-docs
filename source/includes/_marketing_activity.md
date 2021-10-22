### **Marketing Activity**
<a name="marketing_activity"></a>

### Resource Overview

|Method|URI Format|
|---|---|
|GET|/client_reports/marketing_activity/[gmaid]?[query_params]|

Use GET to retrieve information from the Chat Summary API. Data can be returned for a GMAID by a specific date range determined by start date and end date.

Subtotals will be returned for each Master Campaign ID with chat activity in the specified date range.

Subtotals can be further aggregated given an interval, and will be totaled for day, calendar_week, or calendar_month. The first day of the interval will be used to denote the interval totals.

Use the master_campaign_id parameter to limit the results to a single Master Campaign ID.

<internal>Web_publisher_campaigns array will show the WPCS(offer name) with it's subtotatals attributed to that chat within a campaign (for only trusted users).</internal>

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Param|Required|Function|
|---|---|---|
|start_date|Yes|Restricts the results to those occurring on or after this date|
|end_date|Yes|Restricts the results to those occurring on or before this date|
|gmaid|Yes|Restrict results to the specified Global Master Advertiser ID|
|global_master_campaign_id[]|No|Restrict results to the specified master campaign id|
|interval_size|No|Return subtotals for the given intervals within the start-end time provided. Accepts calendar_month, calendar_week, or day (Default is day)|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/marketing_activity/TEST_1?start_date=2019-10-01&end_date=2020-02-25'
```

> Retrieve data for a specific master campaign id

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/marketing_activity/TEST_1?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=TEST_1' \
```

> Retrieve data for a specific range of dates grouped by calendar week

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/marketing_activity/TEST_1?start_date=2019-10-01&end_date=2020-02-25&interval_size=calendar_week' \
```

> Retrieve data with all options together with results below

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/marketing_activity/TEST_1?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=TEST_1&interval_size=calendar_week' \
```

> Example Response

```json
{
    "api_name": "marketing_activity",
    "api_run_date": "2021-10-22",
    "start_date": "2021-05-22",
    "end_date": "2021-06-22",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "report_data": {
        "campaigns": [
            {
                "global_master_campaign_id": "USA_1195173",
                "campaign_name": "SEM | Pegalis Law Group | Medical Malpractice",
                "campaign_type": "search",
                "organization": "reachlocal",
                "campaign_start_date": "2021-05-24",
                "campaign_end_date": "2021-06-24",
                "intervals": [
                    {
                        "start_date": "2021-05-24",
                        "visits": 6,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-05-25",
                        "visits": 43,
                        "chats": 0,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-05-26",
                        "visits": 44,
                        "chats": 0,
                        "calls": 2,
                        "forms": 1
                    },
                    {
                        "start_date": "2021-05-27",
                        "visits": 33,
                        "chats": 0,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-05-28",
                        "visits": 43,
                        "chats": 1,
                        "calls": 2,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-05-29",
                        "visits": 44,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-05-30",
                        "visits": 35,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-05-31",
                        "visits": 40,
                        "chats": 1,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-01",
                        "visits": 61,
                        "chats": 0,
                        "calls": 0,
                        "forms": 8
                    },
                    {
                        "start_date": "2021-06-02",
                        "visits": 72,
                        "chats": 1,
                        "calls": 0,
                        "forms": 1
                    },
                    {
                        "start_date": "2021-06-03",
                        "visits": 40,
                        "chats": 1,
                        "calls": 1,
                        "forms": 4
                    },
                    {
                        "start_date": "2021-06-04",
                        "visits": 40,
                        "chats": 2,
                        "calls": 1,
                        "forms": 2
                    },
                    {
                        "start_date": "2021-06-05",
                        "visits": 36,
                        "chats": 0,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-06",
                        "visits": 37,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-07",
                        "visits": 58,
                        "chats": 1,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-08",
                        "visits": 49,
                        "chats": 1,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-09",
                        "visits": 41,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-10",
                        "visits": 43,
                        "chats": 0,
                        "calls": 2,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-11",
                        "visits": 46,
                        "chats": 0,
                        "calls": 2,
                        "forms": 3
                    },
                    {
                        "start_date": "2021-06-12",
                        "visits": 35,
                        "chats": 0,
                        "calls": 0,
                        "forms": 1
                    },
                    {
                        "start_date": "2021-06-13",
                        "visits": 32,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-14",
                        "visits": 48,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-15",
                        "visits": 47,
                        "chats": 2,
                        "calls": 1,
                        "forms": 1
                    },
                    {
                        "start_date": "2021-06-16",
                        "visits": 53,
                        "chats": 0,
                        "calls": 5,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-17",
                        "visits": 62,
                        "chats": 1,
                        "calls": 3,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-18",
                        "visits": 59,
                        "chats": 1,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-19",
                        "visits": 59,
                        "chats": 0,
                        "calls": 0,
                        "forms": 1
                    },
                    {
                        "start_date": "2021-06-20",
                        "visits": 48,
                        "chats": 1,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-21",
                        "visits": 42,
                        "chats": 3,
                        "calls": 2,
                        "forms": 1
                    }
                ]
            },
            {
                "global_master_campaign_id": "USA_2872211",
                "campaign_name": "Website | Pegalis Law Group | Hosting & Management",
                "campaign_type": "edge",
                "organization": "reachlocal",
                "campaign_start_date": "2021-05-31",
                "campaign_end_date": "2021-08-29",
                "intervals": [
                    {
                        "start_date": "2021-05-27",
                        "visits": 0,
                        "chats": 0,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-07",
                        "visits": 0,
                        "chats": 0,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-13",
                        "visits": 1,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    }
                ]
            }
        ],
        "search": {
            "intervals": [
                {
                    "start_date": "2021-05-22",
                    "visits": 0,
                    "chats": 1,
                    "calls": 0,
                    "forms": 1
                },
                {
                    "start_date": "2021-06-02",
                    "visits": 0,
                    "chats": 0,
                    "calls": 0,
                    "forms": 2
                },
                {
                    "start_date": "2021-06-09",
                    "visits": 0,
                    "chats": 1,
                    "calls": 0,
                    "forms": 1
                },
                {
                    "start_date": "2021-06-15",
                    "visits": 0,
                    "chats": 1,
                    "calls": 0,
                    "forms": 1
                }
            ]
        },
        "social": {
            "intervals": []
        },
        "direct": {
            "intervals": [
                {
                    "start_date": "2021-05-21",
                    "visits": 11,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-22",
                    "visits": 28,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-23",
                    "visits": 9,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-24",
                    "visits": 16,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-25",
                    "visits": 38,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-26",
                    "visits": 25,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-27",
                    "visits": 30,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-28",
                    "visits": 21,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-29",
                    "visits": 13,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-30",
                    "visits": 16,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-01",
                    "visits": 106,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-02",
                    "visits": 33,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-03",
                    "visits": 889,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-04",
                    "visits": 54,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-05",
                    "visits": 19,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-06",
                    "visits": 57,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-07",
                    "visits": 30,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-08",
                    "visits": 40,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-09",
                    "visits": 40,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-10",
                    "visits": 32,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-11",
                    "visits": 56,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-12",
                    "visits": 18,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-13",
                    "visits": 29,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-14",
                    "visits": 26,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-15",
                    "visits": 134,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-16",
                    "visits": 29,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-17",
                    "visits": 28,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-18",
                    "visits": 484,
                    "chats": 0,
                    "calls": 0,
                    "forms": 1
                },
                {
                    "start_date": "2021-06-19",
                    "visits": 8,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-20",
                    "visits": 13,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-21",
                    "visits": 16,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                }
            ]
        },
        "directory": {
            "intervals": []
        },
        "marketplace": {
            "intervals": []
        },
        "calladextension": {
            "intervals": []
        },
        "other": {
            "intervals": [
                {
                    "start_date": "2021-05-31",
                    "visits": 12,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-03",
                    "visits": 0,
                    "chats": 0,
                    "calls": 0,
                    "forms": 1
                },
                {
                    "start_date": "2021-06-07",
                    "visits": 0,
                    "chats": 0,
                    "calls": 0,
                    "forms": 2
                },
                {
                    "start_date": "2021-06-13",
                    "visits": 0,
                    "chats": 2,
                    "calls": 0,
                    "forms": 1
                }
            ]
        },
        "otherpaid": {
            "intervals": []
        },
        "totals": {
            "total_visits": 3960,
            "total_calls": 34,
            "total_chats": 21,
            "total_forms": 3
        }
    },
    "global_master_advertiser_id": "USA_136048"
}
```


<internal>Example Response</internal>

```json
<internal>
{
    "api_name": "marketing_activity",
    "api_run_date": "2021-10-22",
    "start_date": "2021-05-22",
    "end_date": "2021-06-22",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "report_data": {
        "campaigns": [
            {
                "global_master_campaign_id": "USA_1195173",
                "campaign_name": "SEM | Pegalis Law Group | Medical Malpractice",
                "campaign_type": "search",
                "organization": "reachlocal",
                "campaign_start_date": "2021-05-24",
                "campaign_end_date": "2021-06-24",
                "intervals": [
                    {
                        "start_date": "2021-05-24",
                        "visits": 6,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-05-25",
                        "visits": 43,
                        "chats": 0,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-05-26",
                        "visits": 44,
                        "chats": 0,
                        "calls": 2,
                        "forms": 1
                    },
                    {
                        "start_date": "2021-05-27",
                        "visits": 33,
                        "chats": 0,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-05-28",
                        "visits": 43,
                        "chats": 1,
                        "calls": 2,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-05-29",
                        "visits": 44,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-05-30",
                        "visits": 35,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-05-31",
                        "visits": 40,
                        "chats": 1,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-01",
                        "visits": 61,
                        "chats": 0,
                        "calls": 0,
                        "forms": 8
                    },
                    {
                        "start_date": "2021-06-02",
                        "visits": 72,
                        "chats": 1,
                        "calls": 0,
                        "forms": 1
                    },
                    {
                        "start_date": "2021-06-03",
                        "visits": 40,
                        "chats": 1,
                        "calls": 1,
                        "forms": 4
                    },
                    {
                        "start_date": "2021-06-04",
                        "visits": 40,
                        "chats": 2,
                        "calls": 1,
                        "forms": 2
                    },
                    {
                        "start_date": "2021-06-05",
                        "visits": 36,
                        "chats": 0,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-06",
                        "visits": 37,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-07",
                        "visits": 58,
                        "chats": 1,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-08",
                        "visits": 49,
                        "chats": 1,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-09",
                        "visits": 41,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-10",
                        "visits": 43,
                        "chats": 0,
                        "calls": 2,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-11",
                        "visits": 46,
                        "chats": 0,
                        "calls": 2,
                        "forms": 3
                    },
                    {
                        "start_date": "2021-06-12",
                        "visits": 35,
                        "chats": 0,
                        "calls": 0,
                        "forms": 1
                    },
                    {
                        "start_date": "2021-06-13",
                        "visits": 32,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-14",
                        "visits": 48,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-15",
                        "visits": 47,
                        "chats": 2,
                        "calls": 1,
                        "forms": 1
                    },
                    {
                        "start_date": "2021-06-16",
                        "visits": 53,
                        "chats": 0,
                        "calls": 5,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-17",
                        "visits": 62,
                        "chats": 1,
                        "calls": 3,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-18",
                        "visits": 59,
                        "chats": 1,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-19",
                        "visits": 59,
                        "chats": 0,
                        "calls": 0,
                        "forms": 1
                    },
                    {
                        "start_date": "2021-06-20",
                        "visits": 48,
                        "chats": 1,
                        "calls": 0,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-21",
                        "visits": 42,
                        "chats": 3,
                        "calls": 2,
                        "forms": 1
                    }
                ]
            },
            {
                "global_master_campaign_id": "USA_2872211",
                "campaign_name": "Website | Pegalis Law Group | Hosting & Management",
                "campaign_type": "edge",
                "organization": "reachlocal",
                "campaign_start_date": "2021-05-31",
                "campaign_end_date": "2021-08-29",
                "intervals": [
                    {
                        "start_date": "2021-05-27",
                        "visits": 0,
                        "chats": 0,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-07",
                        "visits": 0,
                        "chats": 0,
                        "calls": 1,
                        "forms": 0
                    },
                    {
                        "start_date": "2021-06-13",
                        "visits": 1,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    }
                ]
            }
        ],
        "search": {
            "intervals": [
                {
                    "start_date": "2021-05-22",
                    "visits": 0,
                    "chats": 1,
                    "calls": 0,
                    "forms": 1
                },
                {
                    "start_date": "2021-06-02",
                    "visits": 0,
                    "chats": 0,
                    "calls": 0,
                    "forms": 2
                },
                {
                    "start_date": "2021-06-09",
                    "visits": 0,
                    "chats": 1,
                    "calls": 0,
                    "forms": 1
                },
                {
                    "start_date": "2021-06-15",
                    "visits": 0,
                    "chats": 1,
                    "calls": 0,
                    "forms": 1
                }
            ]
        },
        "social": {
            "intervals": []
        },
        "direct": {
            "intervals": [
                {
                    "start_date": "2021-05-21",
                    "visits": 11,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-22",
                    "visits": 28,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-23",
                    "visits": 9,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-24",
                    "visits": 16,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-25",
                    "visits": 38,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-26",
                    "visits": 25,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-27",
                    "visits": 30,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-28",
                    "visits": 21,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-29",
                    "visits": 13,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-30",
                    "visits": 16,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-01",
                    "visits": 106,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-02",
                    "visits": 33,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-03",
                    "visits": 889,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-04",
                    "visits": 54,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-05",
                    "visits": 19,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-06",
                    "visits": 57,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-07",
                    "visits": 30,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-08",
                    "visits": 40,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-09",
                    "visits": 40,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-10",
                    "visits": 32,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-11",
                    "visits": 56,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-12",
                    "visits": 18,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-13",
                    "visits": 29,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-14",
                    "visits": 26,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-15",
                    "visits": 134,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-16",
                    "visits": 29,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-17",
                    "visits": 28,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-18",
                    "visits": 484,
                    "chats": 0,
                    "calls": 0,
                    "forms": 1
                },
                {
                    "start_date": "2021-06-19",
                    "visits": 8,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-20",
                    "visits": 13,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-21",
                    "visits": 16,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                }
            ]
        },
        "directory": {
            "intervals": []
        },
        "marketplace": {
            "intervals": []
        },
        "calladextension": {
            "intervals": []
        },
        "other": {
            "intervals": [
                {
                    "start_date": "2021-05-31",
                    "visits": 12,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-06-03",
                    "visits": 0,
                    "chats": 0,
                    "calls": 0,
                    "forms": 1
                },
                {
                    "start_date": "2021-06-07",
                    "visits": 0,
                    "chats": 0,
                    "calls": 0,
                    "forms": 2
                },
                {
                    "start_date": "2021-06-13",
                    "visits": 0,
                    "chats": 2,
                    "calls": 0,
                    "forms": 1
                }
            ]
        },
        "otherpaid": {
            "intervals": []
        },
        "totals": {
            "total_visits": 3960,
            "total_calls": 34,
            "total_chats": 21,
            "total_forms": 3
        }
    },
    "global_master_advertiser_id": "USA_136048"
}
</internal>
```


|Field Name|Datatype|Description|
|---|---|---|
|api_name|String|Name of the API|
|api_run_date|String|Date report was run|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|time_zone|String|Time Zone|
|interval_size|String|Interval Size ('none', 'day', 'calendar_week' or 'calendar_month')|
|report_data|Object|Report details. [Report Data Object](#chatreportdata)|
|global_master_advertiser_id|String|Global Master Advertiser ID|

<a name="marketingactivityreportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|campaigns|Object|chat counts for chats attributed to paid campaigns. [Campaigns Object](#marketingactivitycampaigns)|
|search|Object|chat, visit, call, form counts attributed to organic sources (Organic search) [Search Object](#marketingactivitysearch)|
|social|Object|chat, visit, call, form counts attributed to organic sources (Organic social) [Social Object](#marketingactivitysocial)|
|direct|Object|chat, visit, call, form counts attributed to organic sources (Organic direct) [Direct Object](#marketingactivitydirect)|
|directory|Object|chat, visit, call, form counts attributed to organic sources (Organic directory) [Directory Object](#marketingactivitydirectory)|
|marketplace|Object|chat, visit, call, form counts attributed to marketplace sources (Marketplace) [Marketplace Object](#marketingactivitymarketplace)|
|calladextension|Object|chat, visit, call, form counts attributed to organic sources (Organic calladextension) [Calladextension Object](#marketingactivitycalladextension)|
|other|Object|chat, visit, call, form counts attributed to organic sources (Other) [Other Object](#marketingactivityother)|
|otherpaid|Object|chat, visit, call, form counts attributed to organic sources (Other paid) [Otherpaid Object](#marketingactivityotherpaid)|
|totals|Object|Totals of vists, cals, chats and forms for each type [Totals Object](#marketingactivitytotals)|

<a name="chatcampaigns"></a>
**Campaigns Object**

|Field Name|Datatype|Description|
|---|---|---|
|global_master_campaign_id|String|Identifier for campaign|
|campaign_name|String|Name of campaign|
|campaign_type|String|Type of campaign|
|campaign_status|String|Status of campaign|
|organization|String|Organization|
|campaign_start_date|String|Start date of campaign|
|campaign_end_date|String|End date of campaign|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|

<a name="marketingactivitysearch"></a>
**Search Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#chatintervals)|

<a name="marketingactivitysocial"></a>
**Social Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|

<a name="marketingactivitydirect"></a>
**Direct Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|

<a name="marketingactivitydirectory"></a>
**Directory Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|

<a name="marketingactivitymarketplace"></a>
**Marketplace Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|

<a name="marketingactivitycalladextension"></a>
**Calladextension Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|

<a name="marketingactivityother"></a>
**Other Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|

<a name="marketingactivityotherpaid"></a>
**Otherpaid Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#chatintervals)|

<a name="marketingactivityintervals"></a>
**Intervals Object**

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|Start date of interval|
|visits|Integer|Number of total visits|
|chats|Integer|Number of total chat|
|calls|Integer|Number of total calls|
|forms|Integer|Number of total forms and emails|

<a name="marketingactivitytotals"></a>
**Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|total_visits|Integer|Number of total visits|
|total_calls|Integer|Number of total calls|
|total_chats|Integer|Number of total chats|
|total_forms|Integer|Number of total forms|
