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
    "report_date": "2020-11-03",
    "earliest_date_available": "2020-10-01",
    "start_date": "2020-10-01",
    "end_date": "2020-10-31",
    "time_zone": "America/Los_Angeles",
    "global_master_advertiser_id": "TEST_1",
    "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/age_gender/TEST_1?end_date=2020-10-31&start_date=2020-10-01",
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
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "button_clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
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
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "social_clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "social_impressions",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "website_clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "link_clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "page_engagements",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "page_likes",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "post_engagements",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "post_comments",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "post_shares",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "post_reactions",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "checkins",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
                }
            },
            {
                "metric_type": "lead_forms",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_25_34": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_35_44": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_45_54": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_55_64": {
                        "total": 6579,
                        "percent": 16.54
                    },
                    "age_65_up": {
                        "total": 6888,
                        "percent": 17.31
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 39783.0
                },
                "gender": {
                    "male": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "female": {
                        "total": 13158,
                        "percent": 33.07
                    },
                    "unknown": {
                        "total": 13467,
                        "percent": 33.85
                    },
                    "total": 39783
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
                        "total": 5550,
                        "percent": 14.29
                    },
                    "age_25_34": {
                        "total": 5550,
                        "percent": 14.29
                    },
                    "age_35_44": {
                        "total": 5550,
                        "percent": 14.29
                    },
                    "age_45_54": {
                        "total": 5550,
                        "percent": 14.29
                    },
                    "age_55_64": {
                        "total": 5550,
                        "percent": 14.29
                    },
                    "age_65_up": {
                        "total": 5550,
                        "percent": 14.29
                    },
                    "unknown": {
                        "total": 5550,
                        "percent": 14.29
                    },
                    "total": 38850
                },
                "gender": {
                    "male": {
                        "total": 12970,
                        "percent": 33.33
                    },
                    "female": {
                        "total": 12970,
                        "percent": 33.33
                    },
                    "unknown": {
                        "total": 12970,
                        "percent": 33.33
                    },
                    "total": 38910
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
                        "total": 49,
                        "percent": 14.29
                    },
                    "age_25_34": {
                        "total": 49,
                        "percent": 14.29
                    },
                    "age_35_44": {
                        "total": 49,
                        "percent": 14.29
                    },
                    "age_45_54": {
                        "total": 49,
                        "percent": 14.29
                    },
                    "age_55_64": {
                        "total": 49,
                        "percent": 14.29
                    },
                    "age_65_up": {
                        "total": 49,
                        "percent": 14.29
                    },
                    "unknown": {
                        "total": 49,
                        "percent": 14.29
                    },
                    "total": 343
                },
                "gender": {
                    "male": {
                        "total": 140,
                        "percent": 33.33
                    },
                    "female": {
                        "total": 140,
                        "percent": 33.33
                    },
                    "unknown": {
                        "total": 140,
                        "percent": 33.33
                    },
                    "total": 420
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
                        "total": 3147,
                        "percent": 15.68
                    },
                    "age_25_34": {
                        "total": 3147,
                        "percent": 15.68
                    },
                    "age_35_44": {
                        "total": 3147,
                        "percent": 15.68
                    },
                    "age_45_54": {
                        "total": 3147,
                        "percent": 15.68
                    },
                    "age_55_64": {
                        "total": 3147,
                        "percent": 15.68
                    },
                    "age_65_up": {
                        "total": 3388,
                        "percent": 16.88
                    },
                    "unknown": {
                        "total": 945,
                        "percent": 4.71
                    },
                    "total": 20068.0
                },
                "gender": {
                    "male": {
                        "total": 6629,
                        "percent": 32.93
                    },
                    "female": {
                        "total": 6629,
                        "percent": 32.93
                    },
                    "unknown": {
                        "total": 6870,
                        "percent": 34.13
                    },
                    "total": 20128
                }
            },
            {
                "metric_type": "button_clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
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
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4414,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4414,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4655,
                        "percent": 34.52
                    },
                    "total": 13483
                }
            },
            {
                "metric_type": "social_clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
                }
            },
            {
                "metric_type": "social_impressions",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
                }
            },
            {
                "metric_type": "website_clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
                }
            },
            {
                "metric_type": "link_clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
                }
            },
            {
                "metric_type": "page_engagements",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
                }
            },
            {
                "metric_type": "page_likes",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
                }
            },
            {
                "metric_type": "post_engagements",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
                }
            },
            {
                "metric_type": "post_comments",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
                }
            },
            {
                "metric_type": "post_shares",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
                }
            },
            {
                "metric_type": "post_reactions",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
                }
            },
            {
                "metric_type": "checkins",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
                }
            },
            {
                "metric_type": "lead_forms",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_25_34": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_35_44": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_45_54": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_55_64": {
                        "total": 2202,
                        "percent": 16.37
                    },
                    "age_65_up": {
                        "total": 2443,
                        "percent": 18.16
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 13453.0
                },
                "gender": {
                    "male": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "female": {
                        "total": 4404,
                        "percent": 32.74
                    },
                    "unknown": {
                        "total": 4645,
                        "percent": 34.53
                    },
                    "total": 13453
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
                        "total": 15276,
                        "percent": 15.48
                    },
                    "age_25_34": {
                        "total": 15276,
                        "percent": 15.48
                    },
                    "age_35_44": {
                        "total": 15276,
                        "percent": 15.48
                    },
                    "age_45_54": {
                        "total": 15276,
                        "percent": 15.48
                    },
                    "age_55_64": {
                        "total": 15276,
                        "percent": 15.48
                    },
                    "age_65_up": {
                        "total": 15826,
                        "percent": 16.03
                    },
                    "unknown": {
                        "total": 6495,
                        "percent": 6.58
                    },
                    "total": 98701.0
                },
                "gender": {
                    "male": {
                        "total": 32757,
                        "percent": 33.15
                    },
                    "female": {
                        "total": 32757,
                        "percent": 33.15
                    },
                    "unknown": {
                        "total": 33307,
                        "percent": 33.7
                    },
                    "total": 98821
                }
            },
            {
                "metric_type": "button_clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
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
                        "total": 8830,
                        "percent": 16.48
                    },
                    "age_25_34": {
                        "total": 8830,
                        "percent": 16.48
                    },
                    "age_35_44": {
                        "total": 8830,
                        "percent": 16.48
                    },
                    "age_45_54": {
                        "total": 8830,
                        "percent": 16.48
                    },
                    "age_55_64": {
                        "total": 8830,
                        "percent": 16.48
                    },
                    "age_65_up": {
                        "total": 9380,
                        "percent": 17.51
                    },
                    "unknown": {
                        "total": 49,
                        "percent": 0.09
                    },
                    "total": 53579.0
                },
                "gender": {
                    "male": {
                        "total": 17712,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17712,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18262,
                        "percent": 34.02
                    },
                    "total": 53686
                }
            },
            {
                "metric_type": "social_clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
                }
            },
            {
                "metric_type": "social_impressions",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
                }
            },
            {
                "metric_type": "website_clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
                }
            },
            {
                "metric_type": "link_clicks",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
                }
            },
            {
                "metric_type": "page_engagements",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
                }
            },
            {
                "metric_type": "page_likes",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
                }
            },
            {
                "metric_type": "post_engagements",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
                }
            },
            {
                "metric_type": "post_comments",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
                }
            },
            {
                "metric_type": "post_shares",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
                }
            },
            {
                "metric_type": "post_reactions",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
                }
            },
            {
                "metric_type": "checkins",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
                }
            },
            {
                "metric_type": "lead_forms",
                "age": {
                    "age_13_17": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "age_18_24": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_25_34": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_35_44": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_45_54": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_55_64": {
                        "total": 8781,
                        "percent": 16.49
                    },
                    "age_65_up": {
                        "total": 9331,
                        "percent": 17.53
                    },
                    "unknown": {
                        "total": 0,
                        "percent": 0.0
                    },
                    "total": 53236.0
                },
                "gender": {
                    "male": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "female": {
                        "total": 17562,
                        "percent": 32.99
                    },
                    "unknown": {
                        "total": 18112,
                        "percent": 34.02
                    },
                    "total": 53236
                }
            }
        ],
        "totals": {
            "impressions": 98701,
            "clicks": 53579,
            "button_clicks": 53236,
            "social_clicks": 53236,
            "social_impressions": 53236,
            "website_clicks": 53236,
            "link_clicks": 53236,
            "page_engagements": 53236,
            "page_likes": 53236,
            "post_engagements": 53236,
            "post_comments": 53236,
            "post_shares": 53236,
            "post_reactions": 53236,
            "checkins": 53236,
            "lead_forms": 53236
        }
    }
}
```
