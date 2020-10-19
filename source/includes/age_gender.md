## AgeGender Report

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/age_gender/[gmaid]?[query_params]
```

#### Usage
Use GET to retrieve information for the AgeGender report for a given advertiser.

The data returned will include age and gender breakdowns for social, youtube, and combined campaigns.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns|
|`campaign_status[]`|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` and `ended`|

To specify a date range:

   - Specify start_date and end_date.

#### Example Local Dev Curls:
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/age_gender/USA_180395?start_date=2018-10-01&end_date=2018-10-31"
```
###### Retrieve data for a specific campaign starting on a certain date
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/age_gender/USA_180395?global_master_campaign_id[]=USA_2626300&start_date=2018-10-01&end_date=2018-10-31"
```
###### Retrieve data for campaigns that are stopped and running
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/age_gender/USA_180395?&campaign_status[]=running&campaign_status[]=stopped&start_date=2018-10-01&end_date=2018-10-31"
```

#### Response Description

```javascript
{
    "report_type": "age_gender",
    "report_date": "2020-04-28",
    "earliest_date_available": "2020-03-01",
    "start_date": "2020-03-01",
    "end_date": "2020-03-10",
    "time_zone": "America/Los_Angeles",
    "global_master_advertiser_id": "TEST_1",
    "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/age_gender/TEST_1?end_date=2020-03-10&start_date=2020-03-01",
    "report_data": {
        "social": [
            {
                "metric_type": "impressions",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 1998,
                        "percent": 16.55
                    },
                    "age_25_34": {
                        "total": 1998,
                        "percent": 16.55
                    },
                    "age_35_44": {
                        "total": 1998,
                        "percent": 16.55
                    },
                    "age_45_54": {
                        "total": 1998,
                        "percent": 16.55
                    },
                    "age_55_64": {
                        "total": 1998,
                        "percent": 16.55
                    },
                    "age_65_up": {
                        "total": 2084,
                        "percent": 17.26
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 12074.0
                },
                "gender": {
                    "male": {
                        "total": 3996,
                        "percent": 33.1
                    },
                    "female": {
                        "total": 3996,
                        "percent": 33.1
                    },
                    "unknown": {
                        "total": 4082,
                        "percent": 33.81
                    },
                    "total": 12074
                }
            },
            {
                "metric_type": "clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 12,
                        "percent": 7.02
                    },
                    "age_25_34": {
                        "total": 12,
                        "percent": 7.02
                    },
                    "age_35_44": {
                        "total": 12,
                        "percent": 7.02
                    },
                    "age_45_54": {
                        "total": 12,
                        "percent": 7.02
                    },
                    "age_55_64": {
                        "total": 12,
                        "percent": 7.02
                    },
                    "age_65_up": {
                        "total": 111,
                        "percent": 64.91
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 171.0
                },
                "gender": {
                    "male": {
                        "total": 24,
                        "percent": 14.04
                    },
                    "female": {
                        "total": 24,
                        "percent": 14.04
                    },
                    "unknown": {
                        "total": 123,
                        "percent": 71.93
                    },
                    "total": 171
                }
            }
        ],
        "youtube": [
            {
                "metric_type": "impressions",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 1801,
                        "percent": 14.29
                    },
                    "age_25_34": {
                        "total": 1801,
                        "percent": 14.29
                    },
                    "age_35_44": {
                        "total": 1801,
                        "percent": 14.29
                    },
                    "age_45_54": {
                        "total": 1801,
                        "percent": 14.29
                    },
                    "age_55_64": {
                        "total": 1801,
                        "percent": 14.29
                    },
                    "age_65_up": {
                        "total": 1801,
                        "percent": 14.29
                    },
                    "unknown": {
                        "total": 1801,
                        "percent": 14.29
                    },
                    "total": 12607
                },
                "gender": {
                    "male": {
                        "total": 4208,
                        "percent": 33.33
                    },
                    "female": {
                        "total": 4208,
                        "percent": 33.33
                    },
                    "unknown": {
                        "total": 4208,
                        "percent": 33.33
                    },
                    "total": 12624
                }
            },
            {
                "metric_type": "clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 16,
                        "percent": 14.29
                    },
                    "age_25_34": {
                        "total": 16,
                        "percent": 14.29
                    },
                    "age_35_44": {
                        "total": 16,
                        "percent": 14.29
                    },
                    "age_45_54": {
                        "total": 16,
                        "percent": 14.29
                    },
                    "age_55_64": {
                        "total": 16,
                        "percent": 14.29
                    },
                    "age_65_up": {
                        "total": 16,
                        "percent": 14.29
                    },
                    "unknown": {
                        "total": 16,
                        "percent": 14.29
                    },
                    "total": 112
                },
                "gender": {
                    "male": {
                        "total": 47,
                        "percent": 33.33
                    },
                    "female": {
                        "total": 47,
                        "percent": 33.33
                    },
                    "unknown": {
                        "total": 47,
                        "percent": 33.33
                    },
                    "total": 141
                }
            }
        ],
        "xmedia": [
            {
                "metric_type": "impressions",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 962,
                        "percent": 15.55
                    },
                    "age_25_34": {
                        "total": 962,
                        "percent": 15.55
                    },
                    "age_35_44": {
                        "total": 962,
                        "percent": 15.55
                    },
                    "age_45_54": {
                        "total": 962,
                        "percent": 15.55
                    },
                    "age_55_64": {
                        "total": 962,
                        "percent": 15.55
                    },
                    "age_65_up": {
                        "total": 1088,
                        "percent": 17.58
                    },
                    "unknown": {
                        "total": 290,
                        "percent": 4.69
                    },
                    "total": 6188.0
                },
                "gender": {
                    "male": {
                        "total": 2030,
                        "percent": 32.66
                    },
                    "female": {
                        "total": 2030,
                        "percent": 32.66
                    },
                    "unknown": {
                        "total": 2156,
                        "percent": 34.68
                    },
                    "total": 6216
                }
            },
            {
                "metric_type": "clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_25_34": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_35_44": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_45_54": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_55_64": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_65_up": {
                        "total": 60,
                        "percent": 100.0
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 60.0
                },
                "gender": {
                    "male": {
                        "total": 4,
                        "percent": 5.56
                    },
                    "female": {
                        "total": 4,
                        "percent": 5.56
                    },
                    "unknown": {
                        "total": 64,
                        "percent": 88.89
                    },
                    "total": 72
                }
            }
        ],
        "all_types": [
            {
                "metric_type": "impressions",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 4761,
                        "percent": 15.42
                    },
                    "age_25_34": {
                        "total": 4761,
                        "percent": 15.42
                    },
                    "age_35_44": {
                        "total": 4761,
                        "percent": 15.42
                    },
                    "age_45_54": {
                        "total": 4761,
                        "percent": 15.42
                    },
                    "age_55_64": {
                        "total": 4761,
                        "percent": 15.42
                    },
                    "age_65_up": {
                        "total": 4973,
                        "percent": 16.11
                    },
                    "unknown": {
                        "total": 2091,
                        "percent": 6.77
                    },
                    "total": 30869.0
                },
                "gender": {
                    "male": {
                        "total": 10234,
                        "percent": 33.1
                    },
                    "female": {
                        "total": 10234,
                        "percent": 33.1
                    },
                    "unknown": {
                        "total": 10446,
                        "percent": 33.79
                    },
                    "total": 30914
                }
            },
            {
                "metric_type": "clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 28,
                        "percent": 8.16
                    },
                    "age_25_34": {
                        "total": 28,
                        "percent": 8.16
                    },
                    "age_35_44": {
                        "total": 28,
                        "percent": 8.16
                    },
                    "age_45_54": {
                        "total": 28,
                        "percent": 8.16
                    },
                    "age_55_64": {
                        "total": 28,
                        "percent": 8.16
                    },
                    "age_65_up": {
                        "total": 187,
                        "percent": 54.52
                    },
                    "unknown": {
                        "total": 16,
                        "percent": 4.66
                    },
                    "total": 343.0
                },
                "gender": {
                    "male": {
                        "total": 75,
                        "percent": 19.53
                    },
                    "female": {
                        "total": 75,
                        "percent": 19.53
                    },
                    "unknown": {
                        "total": 234,
                        "percent": 60.94
                    },
                    "total": 384
                }
            }
        ],
        "totals": {
            "impressions": 30869,
            "clicks": 343
        }
    }
}
```
