## Business Daily Metrics

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/business_daily_metrics/[business_id]?[query_params]
```

#### Usage
Use GET to retrieve daily business metrics for a given business.

The data returned will include impressions and clicks for each interval, broken out by advertiser and campaign.

The business_id needs to include the region so that it is globally unique (USA_6338 or CAN_6338, not 6338)

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|


To specify a date range:

   - Specify start_date and end_date.

#### Example Local Dev Curls:
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_daily_metrics/USA_105569?start_date=2016-12-01&end_date=2016-12-31"
```
###### Retrieve data for a specific campaign starting on a certain date
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_daily_metrics/USA_105569?start_date=2016-10-01&end_date=2016-12-31"
```

#### Response Description
```javascript
{
    "report_type": "business_daily_metrics",
    "report_date": "2019-07-18",
    "business_id": "USA_6338",
    "business_name": "Kiddie Academy",
    "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/business_daily_metrics/USA_6338?end_date=2019-06-15&start_date=2019-06-14",
    "start_date": "2019-06-14",
    "end_date": "2019-06-15",
    "report_data": {
        "advertisers": [
            {
                "global_master_advertiser_id": "USA_78724",
                "name": "KA - Albany",
                "aid": 78724,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465183",
                        "name": "KA - Albany",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 306,
                                "leads": 0,
                                "clicks": 14,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 18.25,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.58,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78731",
                "name": "KA - Elkridge",
                "aid": 78731,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465191",
                        "name": "KA - Elkridge",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 126,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.54,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.14,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78733",
                "name": "KA - Kent Island",
                "aid": 78733,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465051",
                        "name": "KA - Kent Island",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 56,
                                "leads": 0,
                                "clicks": 7,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 25.37,
                                "campaign_adjustment": 0.0,
                                "ctr": 12.5,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78734",
                "name": "KA - Windham",
                "aid": 78734,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465108",
                        "name": "KA - Windham",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 98,
                                "leads": 0,
                                "clicks": 10,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 15.58,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.2,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78737",
                "name": "KA - Mason",
                "aid": 78737,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465113",
                        "name": "KA - Mason",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 141,
                                "leads": 2,
                                "clicks": 8,
                                "calls": 1,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 24.17,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.67,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78757",
                "name": "KA - Rochester Hills",
                "aid": 78757,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465130",
                        "name": "KA - Rochester Hills",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 148,
                                "leads": 2,
                                "clicks": 8,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 24.73,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.41,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78758",
                "name": "KA - Gainesville",
                "aid": 78758,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465131",
                        "name": "KA - Gainesville-FL",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 192,
                                "leads": 1,
                                "clicks": 7,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 8.64,
                                "campaign_adjustment": 0.0,
                                "ctr": 3.65,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78759",
                "name": "KA - Five Forks",
                "aid": 78759,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465132",
                        "name": "KA - Five Forks",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 106,
                                "leads": 1,
                                "clicks": 7,
                                "calls": 0,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 12.71,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.6,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78765",
                "name": "KA - Henderson",
                "aid": 78765,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1899983",
                        "name": "KA - Henderson",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 185,
                                "leads": 2,
                                "clicks": 7,
                                "calls": 1,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 8.72,
                                "campaign_adjustment": 0.0,
                                "ctr": 3.78,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 1,
                                "clicks": 0,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78770",
                "name": "KA - Sparta",
                "aid": 78770,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2160196",
                        "name": "KA - Sparta",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 118,
                                "leads": 1,
                                "clicks": 8,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 27.41,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.78,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78773",
                "name": "KA - Staten Island",
                "aid": 78773,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465142",
                        "name": "KA - Staten Island",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 124,
                                "leads": 1,
                                "clicks": 7,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 16.05,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.65,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78781",
                "name": "KA - Wexford",
                "aid": 78781,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1829668",
                        "name": "KA - Wexford",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 157,
                                "leads": 1,
                                "clicks": 4,
                                "calls": 0,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 6.06,
                                "campaign_adjustment": 0.0,
                                "ctr": 2.55,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78783",
                "name": "KA - Vacaville",
                "aid": 78783,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465151",
                        "name": "KA - Vacaville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 105,
                                "leads": 3,
                                "clicks": 14,
                                "calls": 1,
                                "web_events": 2,
                                "emails": 0,
                                "spend": 29.49,
                                "campaign_adjustment": 0.0,
                                "ctr": 13.33,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78784",
                "name": "KA - Oceanside",
                "aid": 78784,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465161",
                        "name": "KA - Oceanside",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 132,
                                "leads": 0,
                                "clicks": 8,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 12.79,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.06,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78787",
                "name": "KA - Carrollwood",
                "aid": 78787,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465166",
                        "name": "KA - Carrollwood",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 165,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 27.4,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.45,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78788",
                "name": "KA - Lakewood Ranch",
                "aid": 78788,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465169",
                        "name": "KA - Lakewood Ranch",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 200,
                                "leads": 4,
                                "clicks": 13,
                                "calls": 3,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 16.72,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.5,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78791",
                "name": "KA - Leesburg",
                "aid": 78791,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465171",
                        "name": "KA - Leesburg",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 201,
                                "leads": 1,
                                "clicks": 12,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 29.57,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.97,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_79987",
                "name": "KA - Remarketing",
                "aid": 79987,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2698880",
                        "name": "KA - Remarketing ",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 48991,
                                "leads": 0,
                                "clicks": 40,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 244.11,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.08,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 50591,
                                "leads": 0,
                                "clicks": 46,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 244.58,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.09,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_98833",
                "name": "KA - Fishers",
                "aid": 98833,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_658466",
                        "name": "KA - Fishers",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 107,
                                "leads": 1,
                                "clicks": 12,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 21.83,
                                "campaign_adjustment": 0.0,
                                "ctr": 11.21,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_104140",
                "name": "KA - Stoughton",
                "aid": 104140,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_729919",
                        "name": "KA - Stoughton",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 187,
                                "leads": 2,
                                "clicks": 19,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 46.35,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.16,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_108691",
                "name": "KA - North Phoenix",
                "aid": 108691,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1824699",
                        "name": "KA - North Phoenix",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 143,
                                "leads": 2,
                                "clicks": 10,
                                "calls": 0,
                                "web_events": 2,
                                "emails": 0,
                                "spend": 16.19,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.99,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_111404",
                "name": "KA - Charlotte-Blakeney",
                "aid": 111404,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_817079",
                        "name": "KA - Charlotte-Blakeney",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 320,
                                "leads": 2,
                                "clicks": 16,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 22.66,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.0,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_111407",
                "name": "KA - Silver Spring Township",
                "aid": 111407,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_817085",
                        "name": "KA - Silver Spring Township",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 184,
                                "leads": 0,
                                "clicks": 13,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 18.32,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.07,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 3,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_126385",
                "name": "KA - Longwood",
                "aid": 126385,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1018791",
                        "name": "KA - Longwood-Lake Mary",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 163,
                                "leads": 0,
                                "clicks": 12,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 25.52,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.36,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 1,
                                "clicks": 0,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_129406",
                "name": "KA - Webster",
                "aid": 129406,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1063638",
                        "name": "KA - Webster",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 120,
                                "leads": 0,
                                "clicks": 4,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.18,
                                "campaign_adjustment": 0.0,
                                "ctr": 3.33,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_134968",
                "name": "KA - Murrieta",
                "aid": 134968,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1171690",
                        "name": "KA - Murrieta",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 155,
                                "leads": 1,
                                "clicks": 8,
                                "calls": 0,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 12.11,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.16,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_136383",
                "name": "KA - Fontana",
                "aid": 136383,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1204455",
                        "name": "KA - Fontana",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 161,
                                "leads": 2,
                                "clicks": 8,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 16.5,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.97,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_144117",
                "name": "KA - Lacey",
                "aid": 144117,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1325171",
                        "name": "KA - Lacey",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 188,
                                "leads": 4,
                                "clicks": 13,
                                "calls": 4,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 15.82,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.91,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_150424",
                "name": "KA - Fort Wayne",
                "aid": 150424,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1442339",
                        "name": "KA - Fort Wayne",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 107,
                                "leads": 3,
                                "clicks": 11,
                                "calls": 3,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 22.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.28,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_156397",
                "name": "KA - Castle Hills",
                "aid": 156397,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1492081",
                        "name": "KA - Castle Hills",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 112,
                                "leads": 1,
                                "clicks": 6,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 11.6,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.36,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_156398",
                "name": "KA - Runnemede",
                "aid": 156398,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1492084",
                        "name": "KA - Runnemede",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 70,
                                "leads": 0,
                                "clicks": 3,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 4.75,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.29,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_156399",
                "name": "KA - Crystal Lake",
                "aid": 156399,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1494536",
                        "name": "KA - Crystal Lake",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 122,
                                "leads": 1,
                                "clicks": 10,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 25.26,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.2,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_156402",
                "name": "KA - Washington DC - West End",
                "aid": 156402,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1494550",
                        "name": "KA - Washington DC - West End",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 260,
                                "leads": 1,
                                "clicks": 15,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 20.54,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.77,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_158726",
                "name": "KA - Redmond",
                "aid": 158726,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1588487",
                        "name": "KA - Redmond",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 236,
                                "leads": 1,
                                "clicks": 6,
                                "calls": 0,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 13.35,
                                "campaign_adjustment": 0.0,
                                "ctr": 2.54,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_163067",
                "name": "KA - Roseville",
                "aid": 163067,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1587765",
                        "name": "KA - Roseville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 232,
                                "leads": 0,
                                "clicks": 14,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 35.66,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.03,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2302645",
                        "name": "KA - Roseville Chat",
                        "offer_id": null,
                        "type": "chat",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_163068",
                "name": "KA - O'Fallon",
                "aid": 163068,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1587774",
                        "name": "KA - O'Fallon",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 140,
                                "leads": 0,
                                "clicks": 13,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 33.43,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.29,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2572346",
                        "name": "KA - O'Fallon Theater ",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 26,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.12,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.0,
                                "cpc": 0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 28,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.15,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_163389",
                "name": "KA - Florham Park",
                "aid": 163389,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1592092",
                        "name": "KA - Florham Park",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 94,
                                "leads": 0,
                                "clicks": 5,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 6.6,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.32,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_164498",
                "name": "KA - Framingham",
                "aid": 164498,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1614689",
                        "name": "KA - Framingham",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 213,
                                "leads": 1,
                                "clicks": 12,
                                "calls": 0,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 17.97,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.63,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_165472",
                "name": "KA - Des Peres",
                "aid": 165472,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1642113",
                        "name": "KA - Des Peres",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 247,
                                "leads": 2,
                                "clicks": 16,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 27.89,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.48,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2572569",
                        "name": "KA - St Louis Corp GF",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 1637,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 8.35,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.0,
                                "cpc": 0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 1646,
                                "leads": 0,
                                "clicks": 1,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 8.37,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.06,
                                "cpc": 0.0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2727289",
                        "name": "KA - Des Peres Mailers",
                        "offer_id": null,
                        "type": "totaltrack_phone",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_165477",
                "name": "KA - Asheville",
                "aid": 165477,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1642114",
                        "name": "KA - Asheville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 183,
                                "leads": 2,
                                "clicks": 14,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 23.03,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.65,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_165697",
                "name": "KA - Arnold",
                "aid": 165697,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1642115",
                        "name": "KA - Arnold",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 37,
                                "leads": 0,
                                "clicks": 6,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 11.72,
                                "campaign_adjustment": 0.0,
                                "ctr": 16.22,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_165699",
                "name": "KA - Centreville",
                "aid": 165699,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1642119",
                        "name": "KA - Centreville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 97,
                                "leads": 1,
                                "clicks": 2,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 8.55,
                                "campaign_adjustment": 0.0,
                                "ctr": 2.06,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_165700",
                "name": "KA - Reston",
                "aid": 165700,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1642121",
                        "name": "KA - Reston",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 385,
                                "leads": 2,
                                "clicks": 21,
                                "calls": 1,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 41.42,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.45,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_165701",
                "name": "KA - Gainesville VA",
                "aid": 165701,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1642120",
                        "name": "KA - Gainesville-VA",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 180,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 22.83,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.0,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_165780",
                "name": "KA - Oxon Hill",
                "aid": 165780,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1644529",
                        "name": "KA - Oxon Hill",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 244,
                                "leads": 5,
                                "clicks": 16,
                                "calls": 2,
                                "web_events": 3,
                                "emails": 0,
                                "spend": 26.95,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.56,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_169070",
                "name": "KA - Pearland-West",
                "aid": 169070,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1707226",
                        "name": "KA - Pearland-West",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 135,
                                "leads": 1,
                                "clicks": 5,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 11.03,
                                "campaign_adjustment": 0.0,
                                "ctr": 3.7,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_169266",
                "name": "KA - Pearland-East",
                "aid": 169266,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1707227",
                        "name": "KA - Pearland-East",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 220,
                                "leads": 1,
                                "clicks": 11,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 26.38,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.0,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_173354",
                "name": "KA - Pflugerville",
                "aid": 173354,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2781202",
                        "name": "KA - Pflugerville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 96,
                                "leads": 1,
                                "clicks": 7,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 15.65,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.29,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 62,
                                "leads": 0,
                                "clicks": 6,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 12.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.68,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_173357",
                "name": "KA - Parker",
                "aid": 173357,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1787716",
                        "name": "KA - Parker",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 167,
                                "leads": 1,
                                "clicks": 13,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 27.26,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.78,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 14,
                                "leads": 0,
                                "clicks": 1,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 4.17,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.14,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_173358",
                "name": "KA - Ellicott City",
                "aid": 173358,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2781150",
                        "name": "KA - Ellicott City",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 53,
                                "leads": 0,
                                "clicks": 6,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 12.79,
                                "campaign_adjustment": 0.0,
                                "ctr": 11.32,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 88,
                                "leads": 4,
                                "clicks": 8,
                                "calls": 4,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 12.92,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.09,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_173365",
                "name": "KA - Lanham",
                "aid": 173365,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2781183",
                        "name": "KA - Lanham",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 86,
                                "leads": 0,
                                "clicks": 6,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.86,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.98,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 100,
                                "leads": 0,
                                "clicks": 7,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 14.11,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.0,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_173366",
                "name": "KA - Laurel",
                "aid": 173366,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2781186",
                        "name": "KA - Laurel",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 131,
                                "leads": 0,
                                "clicks": 11,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 18.77,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.4,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 76,
                                "leads": 1,
                                "clicks": 9,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 16.05,
                                "campaign_adjustment": 0.0,
                                "ctr": 11.84,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_175117",
                "name": "KA - Arlington Heights",
                "aid": 175117,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1818227",
                        "name": "KA - Arlington Heights",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 172,
                                "leads": 0,
                                "clicks": 10,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 19.2,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.81,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_175118",
                "name": "KA - Burlington",
                "aid": 175118,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1818233",
                        "name": "KA - Burlington",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 164,
                                "leads": 0,
                                "clicks": 13,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 23.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.93,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_176506",
                "name": "KA - Fuquay-Varina",
                "aid": 176506,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1833242",
                        "name": "KA - Fuquay-Varina",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 78,
                                "leads": 2,
                                "clicks": 9,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 35.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 11.54,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_176507",
                "name": "KA - Oswego",
                "aid": 176507,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1833206",
                        "name": "KA - Oswego",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 113,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 19.95,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.96,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_177517",
                "name": "KA - Cedar Park",
                "aid": 177517,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2699246",
                        "name": "KA - Cedar Park West",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 163,
                                "leads": 0,
                                "clicks": 10,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 16.54,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.13,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_177519",
                "name": "KA - Gaithersburg",
                "aid": 177519,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1866620",
                        "name": "KA - Gaithersburg",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 307,
                                "leads": 2,
                                "clicks": 24,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 39.32,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.82,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_178342",
                "name": "KA - Ashburn",
                "aid": 178342,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1887785",
                        "name": "KA - Ashburn",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 223,
                                "leads": 0,
                                "clicks": 14,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 27.72,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.28,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_178343",
                "name": "KA - Reynoldsburg",
                "aid": 178343,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1887789",
                        "name": "KA - Reynoldsburg",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 103,
                                "leads": 1,
                                "clicks": 5,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 16.11,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.85,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_178801",
                "name": "KA - Bridgewater",
                "aid": 178801,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1899957",
                        "name": "KA - Bridgewater",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 116,
                                "leads": 0,
                                "clicks": 7,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 19.12,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.03,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_178802",
                "name": "KA - Locust Point",
                "aid": 178802,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1899960",
                        "name": "KA - Locust Point",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 232,
                                "leads": 2,
                                "clicks": 17,
                                "calls": 1,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 24.94,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.33,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_178803",
                "name": "KA - Clermont",
                "aid": 178803,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1899986",
                        "name": "KA - Clermont",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 97,
                                "leads": 1,
                                "clicks": 11,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 22.07,
                                "campaign_adjustment": 0.0,
                                "ctr": 11.34,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_178804",
                "name": "KA - Abingdon",
                "aid": 178804,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1899988",
                        "name": "KA - Abingdon",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 125,
                                "leads": 2,
                                "clicks": 11,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 14.46,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.8,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_179801",
                "name": "KA - Little Elm",
                "aid": 179801,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1923386",
                        "name": "KA - Little Elm",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 69,
                                "leads": 6,
                                "clicks": 8,
                                "calls": 6,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 19.08,
                                "campaign_adjustment": 0.0,
                                "ctr": 11.59,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_179802",
                "name": "KA - South Fayette",
                "aid": 179802,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1923388",
                        "name": "KA - South Fayette",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 153,
                                "leads": 0,
                                "clicks": 4,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 9.32,
                                "campaign_adjustment": 0.0,
                                "ctr": 2.61,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_179803",
                "name": "KA - Wading River",
                "aid": 179803,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1923401",
                        "name": "KA - Wading River",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 119,
                                "leads": 5,
                                "clicks": 8,
                                "calls": 5,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 35.68,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.72,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180513",
                "name": "KA - Bethpage",
                "aid": 180513,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943204",
                        "name": "KA - Bethpage",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 94,
                                "leads": 0,
                                "clicks": 2,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 6.95,
                                "campaign_adjustment": 0.0,
                                "ctr": 2.13,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180515",
                "name": "KA - Boca Raton",
                "aid": 180515,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943198",
                        "name": "KA - Boca Raton",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 142,
                                "leads": 1,
                                "clicks": 14,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 21.37,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.86,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180516",
                "name": "KA - Brick",
                "aid": 180516,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943199",
                        "name": "KA - Brick",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 59,
                                "leads": 1,
                                "clicks": 4,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.97,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.78,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180517",
                "name": "KA - Brier Creek",
                "aid": 180517,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943200",
                        "name": "KA - Brier Creek",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 194,
                                "leads": 1,
                                "clicks": 11,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 29.3,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.67,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180518",
                "name": "KA - Brightwaters",
                "aid": 180518,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943205",
                        "name": "KA - Brightwaters",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 188,
                                "leads": 0,
                                "clicks": 10,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 17.12,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.32,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180519",
                "name": "KA - Cary",
                "aid": 180519,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943203",
                        "name": "KA - Cary",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 315,
                                "leads": 0,
                                "clicks": 17,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 24.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.4,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180521",
                "name": "KA - Claremont",
                "aid": 180521,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943207",
                        "name": "KA - Claremont",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 71,
                                "leads": 2,
                                "clicks": 5,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 9.55,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.04,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180522",
                "name": "KA - Collegeville",
                "aid": 180522,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943208",
                        "name": "KA - Collegeville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 200,
                                "leads": 2,
                                "clicks": 16,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 35.97,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.0,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180523",
                "name": "KA - Coral Springs",
                "aid": 180523,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943209",
                        "name": "KA - Coral Springs",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 230,
                                "leads": 0,
                                "clicks": 11,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.71,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.78,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180525",
                "name": "KA - Cupertino",
                "aid": 180525,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943210",
                        "name": "KA - Cupertino",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 337,
                                "leads": 0,
                                "clicks": 21,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 39.46,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.23,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180526",
                "name": "KA - Delran Township",
                "aid": 180526,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943211",
                        "name": "KA - Delran Township",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 81,
                                "leads": 1,
                                "clicks": 5,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 12.46,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.17,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180527",
                "name": "KA - Diamond Bar",
                "aid": 180527,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943212",
                        "name": "KA - Diamond Bar",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 206,
                                "leads": 0,
                                "clicks": 11,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 29.35,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.34,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180528",
                "name": "KA - East Setauket",
                "aid": 180528,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943213",
                        "name": "KA - East Setauket",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 50,
                                "leads": 1,
                                "clicks": 8,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 27.73,
                                "campaign_adjustment": 0.0,
                                "ctr": 16.0,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180530",
                "name": "KA - Eatontown",
                "aid": 180530,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943214",
                        "name": "KA - Eatontown",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 22,
                                "leads": 1,
                                "clicks": 3,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 9.2,
                                "campaign_adjustment": 0.0,
                                "ctr": 13.64,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180532",
                "name": "KA - Farmingdale",
                "aid": 180532,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943216",
                        "name": "KA - Farmingdale",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 35,
                                "leads": 2,
                                "clicks": 4,
                                "calls": 1,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 6.4,
                                "campaign_adjustment": 0.0,
                                "ctr": 11.43,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180533",
                "name": "KA - Feasterville",
                "aid": 180533,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943217",
                        "name": "KA - Feasterville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 42,
                                "leads": 0,
                                "clicks": 2,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 9.12,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.76,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180534",
                "name": "KA - Flushing",
                "aid": 180534,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943219",
                        "name": "KA - Flushing",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 165,
                                "leads": 4,
                                "clicks": 13,
                                "calls": 4,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 22.47,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.88,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180535",
                "name": "KA - Freehold",
                "aid": 180535,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943220",
                        "name": "KA - Freehold",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 91,
                                "leads": 1,
                                "clicks": 6,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.28,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.59,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180536",
                "name": "KA - Glendora",
                "aid": 180536,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943221",
                        "name": "KA - Glendora",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 56,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 28.72,
                                "campaign_adjustment": 0.0,
                                "ctr": 16.07,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180538",
                "name": "KA - Greenlawn",
                "aid": 180538,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943222",
                        "name": "KA - Greenlawn",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 140,
                                "leads": 1,
                                "clicks": 11,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 42.72,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.86,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180539",
                "name": "KA - Hamilton",
                "aid": 180539,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943227",
                        "name": "KA - Hamilton",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 82,
                                "leads": 0,
                                "clicks": 4,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.42,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.88,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180540",
                "name": "KA - Harleysville",
                "aid": 180540,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943709",
                        "name": "KA - Harleysville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 154,
                                "leads": 0,
                                "clicks": 10,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 36.43,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.49,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180541",
                "name": "KA - Hicksville",
                "aid": 180541,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943795",
                        "name": "KA - Hicksville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 96,
                                "leads": 1,
                                "clicks": 10,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 23.78,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.42,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180542",
                "name": "KA - Hilltown",
                "aid": 180542,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943806",
                        "name": "KA - Hilltown",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 83,
                                "leads": 0,
                                "clicks": 5,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 20.38,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.02,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180543",
                "name": "KA - Hoboken",
                "aid": 180543,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943809",
                        "name": "KA - Hoboken",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 131,
                                "leads": 1,
                                "clicks": 10,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 21.1,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.63,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180544",
                "name": "KA - Holly Springs",
                "aid": 180544,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943811",
                        "name": "KA - Holly Springs",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 156,
                                "leads": 1,
                                "clicks": 11,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 27.47,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.05,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180545",
                "name": "KA - Horsham",
                "aid": 180545,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943813",
                        "name": "KA - Horsham",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 136,
                                "leads": 1,
                                "clicks": 11,
                                "calls": 0,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 24.05,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.09,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180556",
                "name": "KA - La Verne",
                "aid": 180556,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943840",
                        "name": "KA - La Verne",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 117,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 19.14,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.69,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 1,
                                "clicks": 0,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180558",
                "name": "KA - Langhorne",
                "aid": 180558,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943847",
                        "name": "KA - Langhorne",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 103,
                                "leads": 1,
                                "clicks": 10,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 23.85,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.71,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180559",
                "name": "KA - Latham",
                "aid": 180559,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943849",
                        "name": "KA - Latham",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 70,
                                "leads": 1,
                                "clicks": 11,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 22.23,
                                "campaign_adjustment": 0.0,
                                "ctr": 15.71,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180560",
                "name": "KA - Lewis Center",
                "aid": 180560,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943850",
                        "name": "KA - Lewis Center",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 53,
                                "leads": 1,
                                "clicks": 4,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.28,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.55,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180561",
                "name": "KA - Little Neck",
                "aid": 180561,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943853",
                        "name": "KA - Little Neck",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 70,
                                "leads": 6,
                                "clicks": 13,
                                "calls": 5,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 24.68,
                                "campaign_adjustment": 0.0,
                                "ctr": 18.57,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 1,
                                "clicks": 0,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180564",
                "name": "KA - Islip",
                "aid": 180564,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943821",
                        "name": "KA - Islip",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 233,
                                "leads": 2,
                                "clicks": 14,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 20.75,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.01,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180566",
                "name": "KA - Montgomeryville",
                "aid": 180566,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943912",
                        "name": "KA - Montgomeryville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 90,
                                "leads": 2,
                                "clicks": 8,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 22.36,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.89,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 1,
                                "clicks": 0,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180567",
                "name": "KA - Morgan Hill",
                "aid": 180567,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943913",
                        "name": "KA - Morgan Hill",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 185,
                                "leads": 0,
                                "clicks": 11,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 29.75,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.95,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180568",
                "name": "KA - Morrisville",
                "aid": 180568,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943914",
                        "name": "KA - Morrisville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 71,
                                "leads": 0,
                                "clicks": 7,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 14.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.86,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180570",
                "name": "KA - Mountain View",
                "aid": 180570,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943916",
                        "name": "KA - Mountain View",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 296,
                                "leads": 0,
                                "clicks": 16,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 26.77,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.41,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180571",
                "name": "KA - Neptune",
                "aid": 180571,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943918",
                        "name": "KA - Neptune",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 114,
                                "leads": 2,
                                "clicks": 5,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 14.92,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.39,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180572",
                "name": "KA - Nesconset",
                "aid": 180572,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943919",
                        "name": "KA - Nesconset",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 116,
                                "leads": 1,
                                "clicks": 7,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 21.57,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.03,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180573",
                "name": "KA - North Brunswick",
                "aid": 180573,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943920",
                        "name": "KA - North Brunswick",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 162,
                                "leads": 0,
                                "clicks": 6,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 19.74,
                                "campaign_adjustment": 0.0,
                                "ctr": 3.7,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180574",
                "name": "KA - Phoenixville",
                "aid": 180574,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943921",
                        "name": "KA - Phoenixville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 84,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 23.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.71,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180575",
                "name": "KA - Plantation",
                "aid": 180575,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943923",
                        "name": "KA - Plantation",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 177,
                                "leads": 0,
                                "clicks": 12,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 18.04,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.78,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180576",
                "name": "KA - Plumsteadville",
                "aid": 180576,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943924",
                        "name": "KA - Plumsteadville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 103,
                                "leads": 3,
                                "clicks": 9,
                                "calls": 3,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 32.11,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.74,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180577",
                "name": "KA - Powell",
                "aid": 180577,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943925",
                        "name": "KA - Powell",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 190,
                                "leads": 3,
                                "clicks": 15,
                                "calls": 2,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 29.38,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.89,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180578",
                "name": "KA - Royersford",
                "aid": 180578,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943926",
                        "name": "KA - Royersford",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 173,
                                "leads": 0,
                                "clicks": 16,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 45.83,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.25,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180579",
                "name": "KA - San Jose",
                "aid": 180579,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943927",
                        "name": "KA - San Jose",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 310,
                                "leads": 4,
                                "clicks": 11,
                                "calls": 3,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 21.26,
                                "campaign_adjustment": 0.0,
                                "ctr": 3.55,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180580",
                "name": "KA - Secaucus",
                "aid": 180580,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943928",
                        "name": "KA - Secaucus",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 249,
                                "leads": 0,
                                "clicks": 13,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 19.23,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.22,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180581",
                "name": "KA - Syosset",
                "aid": 180581,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943931",
                        "name": "KA - Syosset",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 79,
                                "leads": 1,
                                "clicks": 5,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.93,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.33,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180584",
                "name": "KA - Upper Freehold",
                "aid": 180584,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943935",
                        "name": "KA - Upper Freehold",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 116,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 18.51,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.76,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180585",
                "name": "KA - Warminster",
                "aid": 180585,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943936",
                        "name": "KA - Warminster",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 175,
                                "leads": 0,
                                "clicks": 4,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 6.23,
                                "campaign_adjustment": 0.0,
                                "ctr": 2.29,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 1,
                                "clicks": 0,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180586",
                "name": "KA - West Caldwell",
                "aid": 180586,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943937",
                        "name": "KA - West Caldwell",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 123,
                                "leads": 1,
                                "clicks": 7,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 21.5,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.69,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180587",
                "name": "KA - West Cary",
                "aid": 180587,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943938",
                        "name": "KA - West Cary",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 71,
                                "leads": 2,
                                "clicks": 9,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 17.98,
                                "campaign_adjustment": 0.0,
                                "ctr": 12.68,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180588",
                "name": "KA - Whitestone",
                "aid": 180588,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943939",
                        "name": "KA - Whitestone",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 264,
                                "leads": 2,
                                "clicks": 16,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 25.78,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.06,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 1,
                                "clicks": 0,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180589",
                "name": "KA - Batavia",
                "aid": 180589,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943201",
                        "name": "KA - Batavia",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 111,
                                "leads": 0,
                                "clicks": 8,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 44.94,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.21,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180590",
                "name": "KA - Bolingbrook",
                "aid": 180590,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943202",
                        "name": "KA - Bolingbrook",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 148,
                                "leads": 0,
                                "clicks": 10,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 26.08,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.76,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180591",
                "name": "KA - Carpentersville",
                "aid": 180591,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943206",
                        "name": "KA - Carpentersville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 168,
                                "leads": 0,
                                "clicks": 15,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 29.11,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.93,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2477869",
                        "name": "KA - Carpentersville FB",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 1169,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 16.15,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.77,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 1146,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 16.34,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.79,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180592",
                "name": "KA - Elkton",
                "aid": 180592,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943215",
                        "name": "KA - Elkton",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 97,
                                "leads": 0,
                                "clicks": 8,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 26.79,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.25,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180593",
                "name": "KA - Naperville",
                "aid": 180593,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943917",
                        "name": "KA - Naperville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 91,
                                "leads": 0,
                                "clicks": 6,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 31.27,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.59,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180594",
                "name": "KA - Plainfield",
                "aid": 180594,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943922",
                        "name": "KA - Plainfield",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 138,
                                "leads": 0,
                                "clicks": 12,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 30.33,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.7,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_180595",
                "name": "KA - Streamwood",
                "aid": 180595,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1943930",
                        "name": "KA - Streamwood",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 69,
                                "leads": 1,
                                "clicks": 9,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 23.64,
                                "campaign_adjustment": 0.0,
                                "ctr": 13.04,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_181249",
                "name": "KA - Mill Creek",
                "aid": 181249,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1955710",
                        "name": "KA - Mill Creek",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 240,
                                "leads": 2,
                                "clicks": 21,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 46.85,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.75,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_181250",
                "name": "KA - Odenton",
                "aid": 181250,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1955711",
                        "name": "KA - Odenton",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 50,
                                "leads": 1,
                                "clicks": 1,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 2.2,
                                "campaign_adjustment": 0.0,
                                "ctr": 2.0,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_181251",
                "name": "KA - Robbinsville",
                "aid": 181251,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1955713",
                        "name": "KA - Robbinsville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 83,
                                "leads": 0,
                                "clicks": 4,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 14.86,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.82,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_181252",
                "name": "KA - Quakertown",
                "aid": 181252,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1955712",
                        "name": "KA - Quakertown",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 52,
                                "leads": 1,
                                "clicks": 3,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 12.7,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.77,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_183242",
                "name": "KA - Stonebridge-McKinney",
                "aid": 183242,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1986727",
                        "name": "KA - Stonebridge-McKinney",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 166,
                                "leads": 0,
                                "clicks": 10,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 15.6,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.02,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_183243",
                "name": "KA - Hamilton Park",
                "aid": 183243,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1986728",
                        "name": "KA - Hamilton Park",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 102,
                                "leads": 0,
                                "clicks": 5,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 17.83,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.9,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_183280",
                "name": "KA - FZE",
                "aid": 183280,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2781018",
                        "name": "KA - ICSC Targeted Display",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_183583",
                "name": "KA - Staten Island-GK",
                "aid": 183583,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_1994802",
                        "name": "KA - Staten Island-Great Kills",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 163,
                                "leads": 0,
                                "clicks": 16,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 33.89,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.82,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 1,
                                "leads": 0,
                                "clicks": 1,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.69,
                                "campaign_adjustment": 0.0,
                                "ctr": 100.0,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_184502",
                "name": "KA - Alpharetta",
                "aid": 184502,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2014610",
                        "name": "KA - Alpharetta",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 336,
                                "leads": 4,
                                "clicks": 25,
                                "calls": 2,
                                "web_events": 2,
                                "emails": 0,
                                "spend": 35.07,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.44,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_184503",
                "name": "KA - Cambridge",
                "aid": 184503,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2014608",
                        "name": "KA - Cambridge",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 524,
                                "leads": 1,
                                "clicks": 32,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 33.05,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.11,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_184504",
                "name": "KA - Watchung Square",
                "aid": 184504,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2030529",
                        "name": "KA - Watchung Square",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 204,
                                "leads": 1,
                                "clicks": 12,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 34.17,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.88,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_184505",
                "name": "KA - Cranberry Township",
                "aid": 184505,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2030512",
                        "name": "KA - Cranberry Township",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 89,
                                "leads": 1,
                                "clicks": 9,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 32.35,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.11,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_185356",
                "name": "KA - Chicago Area",
                "aid": 185356,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2421711",
                        "name": "KA - Chicago Area Mailer",
                        "offer_id": null,
                        "type": "totaltrack_phone",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_185901",
                "name": "KA - Virginia Beach",
                "aid": 185901,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2060644",
                        "name": "KA - Virginia Beach",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 181,
                                "leads": 3,
                                "clicks": 13,
                                "calls": 3,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 17.17,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.18,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_185902",
                "name": "KA - Park Ridge",
                "aid": 185902,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2060616",
                        "name": "KA - Park Ridge",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 225,
                                "leads": 3,
                                "clicks": 17,
                                "calls": 2,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 23.99,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.56,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2677115",
                        "name": "KA - Park Ridge Look A Like",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 1316,
                                "leads": 1,
                                "clicks": 10,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.72,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.76,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 1324,
                                "leads": 0,
                                "clicks": 5,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.77,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.38,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_186159",
                "name": "KA - College Station",
                "aid": 186159,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2067944",
                        "name": "KA - College Station",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 119,
                                "leads": 1,
                                "clicks": 11,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 18.52,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.24,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_186161",
                "name": "KA - Renton",
                "aid": 186161,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2067946",
                        "name": "KA - Renton",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 220,
                                "leads": 0,
                                "clicks": 18,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 24.78,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.18,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_186163",
                "name": "KA - League City-West",
                "aid": 186163,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2068378",
                        "name": "KA - League City-West",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 177,
                                "leads": 0,
                                "clicks": 7,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 11.45,
                                "campaign_adjustment": 0.0,
                                "ctr": 3.95,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_186164",
                "name": "KA - Grand Harbor in Katy",
                "aid": 186164,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2067948",
                        "name": "KA - Grand Harbor in Katy",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 39,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.0,
                                "cpc": 0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_186640",
                "name": "KA - Longenbaugh-Cypress",
                "aid": 186640,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2080276",
                        "name": "KA - Longenbaugh-Cypress",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 209,
                                "leads": 2,
                                "clicks": 12,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 19.82,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.74,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_186796",
                "name": "KA - Marlton",
                "aid": 186796,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2087623",
                        "name": "KA - Marlton",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 253,
                                "leads": 2,
                                "clicks": 16,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 48.31,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.32,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_186892",
                "name": "KA - Woodforest",
                "aid": 186892,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2091627",
                        "name": "KA - Woodforest",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 154,
                                "leads": 2,
                                "clicks": 7,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 21.34,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.55,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_186995",
                "name": "KA - South Riding",
                "aid": 186995,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2098601",
                        "name": "KA - South Riding",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 329,
                                "leads": 2,
                                "clicks": 15,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 30.98,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.56,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_186996",
                "name": "KA - Livermore",
                "aid": 186996,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2100137",
                        "name": "KA - Livermore",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 185,
                                "leads": 2,
                                "clicks": 14,
                                "calls": 1,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 33.03,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.57,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_186997",
                "name": "KA - Frankfort",
                "aid": 186997,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2136655",
                        "name": "KA - Frankfort",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 68,
                                "leads": 0,
                                "clicks": 10,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 23.94,
                                "campaign_adjustment": 0.0,
                                "ctr": 14.71,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_186998",
                "name": "KA - Rocky Hill",
                "aid": 186998,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2114327",
                        "name": "KA - Rocky Hill",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 74,
                                "leads": 1,
                                "clicks": 8,
                                "calls": 0,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 17.82,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.81,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_188073",
                "name": "KA - West Chester",
                "aid": 188073,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2132174",
                        "name": "KA - West Chester",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 37,
                                "leads": 1,
                                "clicks": 3,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 20.8,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.11,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_188074",
                "name": "KA - Darien",
                "aid": 188074,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2132170",
                        "name": "KA - Darien",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 100,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 26.46,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.0,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_188077",
                "name": "KA - Northpointe",
                "aid": 188077,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2132169",
                        "name": "KA - Northpointe",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 116,
                                "leads": 0,
                                "clicks": 13,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 20.83,
                                "campaign_adjustment": 0.0,
                                "ctr": 11.21,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_188480",
                "name": "KA - Mission",
                "aid": 188480,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2144464",
                        "name": "KA - Mission",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 186,
                                "leads": 4,
                                "clicks": 18,
                                "calls": 4,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 23.89,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.68,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_188481",
                "name": "KA - Montville",
                "aid": 188481,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2708410",
                        "name": "KA - Montville Facebook Retargeting",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 984,
                                "leads": 0,
                                "clicks": 11,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 16.05,
                                "campaign_adjustment": 0.0,
                                "ctr": 1.12,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 1290,
                                "leads": 0,
                                "clicks": 12,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 16.14,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.93,
                                "cpc": 0.0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2786770",
                        "name": "KA - Montville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 163,
                                "leads": 0,
                                "clicks": 10,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 52.83,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.13,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 111,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 41.11,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.11,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_188490",
                "name": "KA - Midlothian",
                "aid": 188490,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2144942",
                        "name": "KA - Midlothian",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 111,
                                "leads": 1,
                                "clicks": 11,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 29.41,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.91,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_188491",
                "name": "KA - Cypress",
                "aid": 188491,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2144940",
                        "name": "KA - Cypress",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 111,
                                "leads": 0,
                                "clicks": 5,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 17.94,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.5,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_188494",
                "name": "KA - Wilmington",
                "aid": 188494,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2144944",
                        "name": "KA - Wilmington",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 125,
                                "leads": 1,
                                "clicks": 13,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 25.33,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.4,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_188998",
                "name": "KA - Katy-West",
                "aid": 188998,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2781179",
                        "name": "KA - Katy-West",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 101,
                                "leads": 0,
                                "clicks": 4,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.26,
                                "campaign_adjustment": 0.0,
                                "ctr": 3.96,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 67,
                                "leads": 0,
                                "clicks": 2,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 3.44,
                                "campaign_adjustment": 0.0,
                                "ctr": 2.99,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_188999",
                "name": "KA - Aliana",
                "aid": 188999,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2166544",
                        "name": "KA - Aliana",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 138,
                                "leads": 0,
                                "clicks": 8,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 27.86,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.8,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_189155",
                "name": "KA - Richmond",
                "aid": 189155,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2183209",
                        "name": "KA - Richmond",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 122,
                                "leads": 0,
                                "clicks": 10,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 34.31,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.2,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_189156",
                "name": "KA - Canyon Springs",
                "aid": 189156,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2183205",
                        "name": "KA - Canyon Springs ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 206,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 14.13,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.37,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_189157",
                "name": "KA - Westerville",
                "aid": 189157,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2183211",
                        "name": "KA - Westerville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 100,
                                "leads": 2,
                                "clicks": 13,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 21.83,
                                "campaign_adjustment": 0.0,
                                "ctr": 13.0,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_189192",
                "name": "KA - Dacula",
                "aid": 189192,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2226047",
                        "name": "KA - Dacula",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 279,
                                "leads": 1,
                                "clicks": 20,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 48.43,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.17,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_189464",
                "name": "KA - Williamsburg",
                "aid": 189464,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2183213",
                        "name": "KA - Williamsburg",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 248,
                                "leads": 1,
                                "clicks": 16,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 25.23,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.45,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_189664",
                "name": "KA - Hamilton-Yardville",
                "aid": 189664,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2194646",
                        "name": "KA - Hamilton-Yardville ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 197,
                                "leads": 3,
                                "clicks": 14,
                                "calls": 3,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 36.73,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.11,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_190579",
                "name": "KA - Millersville",
                "aid": 190579,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2213970",
                        "name": "KA - Millersville ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 108,
                                "leads": 1,
                                "clicks": 8,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 24.99,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.41,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2240714",
                        "name": "KA - Millersville Chat",
                        "offer_id": null,
                        "type": "chat",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_191268",
                "name": "KA - Erie",
                "aid": 191268,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2239348",
                        "name": "KA - Erie",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 110,
                                "leads": 0,
                                "clicks": 7,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 23.95,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.36,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 1,
                                "clicks": 0,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_191269",
                "name": "KA - Round Rock",
                "aid": 191269,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2282389",
                        "name": "KA - Round Rock",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 177,
                                "leads": 0,
                                "clicks": 2,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 4.85,
                                "campaign_adjustment": 0.0,
                                "ctr": 1.13,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_191383",
                "name": "KA - Frisco",
                "aid": 191383,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2239350",
                        "name": "KA - Frisco",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 83,
                                "leads": 1,
                                "clicks": 9,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 23.39,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.84,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_191384",
                "name": "KA - Floral Park",
                "aid": 191384,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2249842",
                        "name": "KA - Floral Park",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 353,
                                "leads": 0,
                                "clicks": 18,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 24.23,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.1,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_191420",
                "name": "KA - Seattle at Queen Anne",
                "aid": 191420,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2239351",
                        "name": "KA - Seattle at Queen Anne",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 114,
                                "leads": 2,
                                "clicks": 13,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 16.69,
                                "campaign_adjustment": 0.0,
                                "ctr": 11.4,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_195300",
                "name": "KA - Lakes of Savannah",
                "aid": 195300,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2272441",
                        "name": "KA - Lakes of Savannah",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 111,
                                "leads": 1,
                                "clicks": 5,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 14.31,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.5,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_196034",
                "name": "KA - Franklin",
                "aid": 196034,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2291167",
                        "name": "KA - Franklin",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 83,
                                "leads": 0,
                                "clicks": 5,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 14.7,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.02,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_196036",
                "name": "KA - Columbia",
                "aid": 196036,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2291166",
                        "name": "KA - Columbia ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 217,
                                "leads": 1,
                                "clicks": 25,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 57.6,
                                "campaign_adjustment": 0.0,
                                "ctr": 11.52,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_196039",
                "name": "KA - Moorefield Station",
                "aid": 196039,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2291168",
                        "name": "KA - Moorefield Station",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 155,
                                "leads": 1,
                                "clicks": 8,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 17.95,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.16,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_196236",
                "name": "KA - St Johns",
                "aid": 196236,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2296294",
                        "name": "KA - St Johns",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 205,
                                "leads": 0,
                                "clicks": 18,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 28.27,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.78,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_196410",
                "name": "KA - Springfield",
                "aid": 196410,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2302646",
                        "name": "KA - Springfield ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 184,
                                "leads": 0,
                                "clicks": 11,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 30.4,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.98,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_196771",
                "name": "KA - Hilliard",
                "aid": 196771,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2312888",
                        "name": "KA - Hilliard ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 101,
                                "leads": 1,
                                "clicks": 8,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 22.51,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.92,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_196915",
                "name": "KA - Algonquin",
                "aid": 196915,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2318959",
                        "name": "KA - Algonquin",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 64,
                                "leads": 0,
                                "clicks": 6,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.87,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.38,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_196916",
                "name": "KA - Alliance",
                "aid": 196916,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2318960",
                        "name": "KA - Alliance",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 112,
                                "leads": 1,
                                "clicks": 10,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 19.63,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.93,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_196917",
                "name": "KA - Apopka",
                "aid": 196917,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2318962",
                        "name": "KA - Apopka",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 245,
                                "leads": 3,
                                "clicks": 18,
                                "calls": 3,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 24.14,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.35,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_196918",
                "name": "KA - Clear-Lake",
                "aid": 196918,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2318939",
                        "name": "KA - Clear-Lake",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 167,
                                "leads": 0,
                                "clicks": 11,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 16.6,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.59,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_196919",
                "name": "KA - Missouri City",
                "aid": 196919,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2336018",
                        "name": "KA - Missouri City",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 136,
                                "leads": 2,
                                "clicks": 10,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 19.63,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.35,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_196920",
                "name": "KA - North Albuquerque",
                "aid": 196920,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2318963",
                        "name": "KA - North Albuquerque",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 265,
                                "leads": 4,
                                "clicks": 24,
                                "calls": 4,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 30.58,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.06,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_197659",
                "name": "KA - Cumming",
                "aid": 197659,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2336016",
                        "name": "KA - Cumming",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 121,
                                "leads": 1,
                                "clicks": 10,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 16.58,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.26,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2572259",
                        "name": "KA - Cumming Chat",
                        "offer_id": null,
                        "type": "chat",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2622954",
                        "name": "KA - Cumming FB ",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 1810,
                                "leads": 0,
                                "clicks": 8,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.86,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.44,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 2006,
                                "leads": 0,
                                "clicks": 7,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.72,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.35,
                                "cpc": 0.0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2706579",
                        "name": "KA - Cumming Lead Ads",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 309,
                                "leads": 0,
                                "clicks": 1,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.98,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.32,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 305,
                                "leads": 0,
                                "clicks": 7,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.78,
                                "campaign_adjustment": 0.0,
                                "ctr": 2.3,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_197660",
                "name": "KA - Alexandria",
                "aid": 197660,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2336014",
                        "name": "KA - Alexandria",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 67,
                                "leads": 3,
                                "clicks": 7,
                                "calls": 3,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 13.33,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.45,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_198833",
                "name": "KA - Vancouver Fishers Landing",
                "aid": 198833,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2372364",
                        "name": "KA - Vancouver Fishers Landing",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 145,
                                "leads": 1,
                                "clicks": 12,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 22.06,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.28,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_227070",
                "name": "KA - New Market",
                "aid": 227070,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2415937",
                        "name": "KA - New Market",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 41,
                                "leads": 2,
                                "clicks": 9,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 34.02,
                                "campaign_adjustment": 0.0,
                                "ctr": 21.95,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_227261",
                "name": "KA - Stafford",
                "aid": 227261,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2419442",
                        "name": "KA - Stafford",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 163,
                                "leads": 1,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 18.99,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.52,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_227262",
                "name": "KA - North Springfield",
                "aid": 227262,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2419429",
                        "name": "KA - North Springfield",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 543,
                                "leads": 5,
                                "clicks": 27,
                                "calls": 3,
                                "web_events": 2,
                                "emails": 0,
                                "spend": 44.74,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.97,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701138",
                        "name": "KA - North Springfield YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 388,
                                "leads": 0,
                                "clicks": 142,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.71,
                                "campaign_adjustment": 0.0,
                                "ctr": 36.6,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 373,
                                "leads": 0,
                                "clicks": 151,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 8.03,
                                "campaign_adjustment": 0.0,
                                "ctr": 40.48,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_227797",
                "name": "KA - Farmingville",
                "aid": 227797,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2426513",
                        "name": "KA - Farmingville",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 91,
                                "leads": 0,
                                "clicks": 6,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 15.57,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.59,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_228674",
                "name": "KA - Center Valley",
                "aid": 228674,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2446336",
                        "name": "KA - Center Valley",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 93,
                                "leads": 1,
                                "clicks": 9,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 12.05,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.68,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_228675",
                "name": "KA - Hillsborough",
                "aid": 228675,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2446338",
                        "name": "KA - Hillsborough",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 56,
                                "leads": 1,
                                "clicks": 6,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 34.89,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.71,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701109",
                        "name": "KA - Hillsborough YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 445,
                                "leads": 0,
                                "clicks": 174,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.6,
                                "campaign_adjustment": 0.0,
                                "ctr": 39.1,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 474,
                                "leads": 0,
                                "clicks": 168,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.54,
                                "campaign_adjustment": 0.0,
                                "ctr": 35.44,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_229907",
                "name": "KA - Gurnee",
                "aid": 229907,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2540547",
                        "name": "KA - Gurnee",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 220,
                                "leads": 0,
                                "clicks": 12,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 53.76,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.45,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701095",
                        "name": "KA - Gurnee YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 417,
                                "leads": 0,
                                "clicks": 157,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.74,
                                "campaign_adjustment": 0.0,
                                "ctr": 37.65,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 427,
                                "leads": 0,
                                "clicks": 172,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.48,
                                "campaign_adjustment": 0.0,
                                "ctr": 40.28,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_229909",
                "name": "KA - Mount Prospect",
                "aid": 229909,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2540550",
                        "name": "KA - Mount Prospect",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 152,
                                "leads": 0,
                                "clicks": 14,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 40.28,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.21,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_229912",
                "name": "KA - Orlando-Conway",
                "aid": 229912,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2540549",
                        "name": "KA - Orlando-Conway ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 480,
                                "leads": 3,
                                "clicks": 24,
                                "calls": 2,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 31.28,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.0,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701140",
                        "name": "KA - Orlando-Conway YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 312,
                                "leads": 0,
                                "clicks": 119,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.78,
                                "campaign_adjustment": 0.0,
                                "ctr": 38.14,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 319,
                                "leads": 0,
                                "clicks": 113,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.68,
                                "campaign_adjustment": 0.0,
                                "ctr": 35.42,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_236059",
                "name": "KA - Little Rock",
                "aid": 236059,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2540537",
                        "name": "KA - Little Rock ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 324,
                                "leads": 0,
                                "clicks": 25,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 44.83,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.72,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 5,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701116",
                        "name": "KA - Little Rock YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 551,
                                "leads": 0,
                                "clicks": 187,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.78,
                                "campaign_adjustment": 0.0,
                                "ctr": 33.94,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 520,
                                "leads": 0,
                                "clicks": 195,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.65,
                                "campaign_adjustment": 0.0,
                                "ctr": 37.5,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_237774",
                "name": "KA - Urbana",
                "aid": 237774,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2566765",
                        "name": "KA - Urbana ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 166,
                                "leads": 6,
                                "clicks": 18,
                                "calls": 6,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 42.51,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.84,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701182",
                        "name": "KA - Urbana YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 287,
                                "leads": 0,
                                "clicks": 108,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 8.09,
                                "campaign_adjustment": 0.0,
                                "ctr": 37.63,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 270,
                                "leads": 0,
                                "clicks": 85,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.91,
                                "campaign_adjustment": 0.0,
                                "ctr": 31.48,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_237775",
                "name": "KA - Bryan",
                "aid": 237775,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2566768",
                        "name": "KA - Bryan",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 127,
                                "leads": 0,
                                "clicks": 23,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 41.92,
                                "campaign_adjustment": 0.0,
                                "ctr": 18.11,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2700982",
                        "name": "KA - Bryan YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 336,
                                "leads": 0,
                                "clicks": 103,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.66,
                                "campaign_adjustment": 0.0,
                                "ctr": 30.65,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 276,
                                "leads": 0,
                                "clicks": 85,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.4,
                                "campaign_adjustment": 0.0,
                                "ctr": 30.8,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_237776",
                "name": "KA - Allen",
                "aid": 237776,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2566767",
                        "name": "KA - Allen",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 263,
                                "leads": 4,
                                "clicks": 24,
                                "calls": 4,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 48.43,
                                "campaign_adjustment": 0.0,
                                "ctr": 9.13,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2700355",
                        "name": "KA - Allen YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 344,
                                "leads": 0,
                                "clicks": 114,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.77,
                                "campaign_adjustment": 0.0,
                                "ctr": 33.14,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 378,
                                "leads": 0,
                                "clicks": 125,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.65,
                                "campaign_adjustment": 0.0,
                                "ctr": 33.07,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_237778",
                "name": "KA - Edina",
                "aid": 237778,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2566761",
                        "name": "KA - Edina ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 462,
                                "leads": 4,
                                "clicks": 37,
                                "calls": 3,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 52.02,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.01,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2700990",
                        "name": "KA - Edina YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 387,
                                "leads": 1,
                                "clicks": 141,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.51,
                                "campaign_adjustment": 0.0,
                                "ctr": 36.43,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 325,
                                "leads": 0,
                                "clicks": 129,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.69,
                                "campaign_adjustment": 0.0,
                                "ctr": 39.69,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_237779",
                "name": "KA - Dublin",
                "aid": 237779,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2566763",
                        "name": "KA - Dublin",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 264,
                                "leads": 3,
                                "clicks": 21,
                                "calls": 2,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 42.77,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.95,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2700984",
                        "name": "KA - Dublin YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 589,
                                "leads": 0,
                                "clicks": 201,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.94,
                                "campaign_adjustment": 0.0,
                                "ctr": 34.13,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 488,
                                "leads": 1,
                                "clicks": 181,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.65,
                                "campaign_adjustment": 0.0,
                                "ctr": 37.09,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_237780",
                "name": "KA - Prosper",
                "aid": 237780,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2566764",
                        "name": "KA - Prosper ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 246,
                                "leads": 1,
                                "clicks": 26,
                                "calls": 0,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 46.51,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.57,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701168",
                        "name": "KA - Prosper YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 289,
                                "leads": 0,
                                "clicks": 94,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.58,
                                "campaign_adjustment": 0.0,
                                "ctr": 32.53,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 376,
                                "leads": 0,
                                "clicks": 109,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.89,
                                "campaign_adjustment": 0.0,
                                "ctr": 28.99,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_238988",
                "name": "KA - Kenmore",
                "aid": 238988,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2591117",
                        "name": "KA - Kenmore ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 276,
                                "leads": 0,
                                "clicks": 15,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 36.16,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.43,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701112",
                        "name": "KA - Kenmore YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 373,
                                "leads": 0,
                                "clicks": 137,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.82,
                                "campaign_adjustment": 0.0,
                                "ctr": 36.73,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 350,
                                "leads": 0,
                                "clicks": 134,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.68,
                                "campaign_adjustment": 0.0,
                                "ctr": 38.29,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_238989",
                "name": "KA - Birmingham",
                "aid": 238989,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2591113",
                        "name": "KA - Birmingham",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 345,
                                "leads": 2,
                                "clicks": 17,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 18.31,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.93,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2700967",
                        "name": "KA - Birmingham YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 319,
                                "leads": 0,
                                "clicks": 98,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.72,
                                "campaign_adjustment": 0.0,
                                "ctr": 30.72,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 328,
                                "leads": 0,
                                "clicks": 108,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.77,
                                "campaign_adjustment": 0.0,
                                "ctr": 32.93,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_240357",
                "name": "KA - Brentwood TN",
                "aid": 240357,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2616026",
                        "name": "KA - Brentwood TN",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 256,
                                "leads": 2,
                                "clicks": 20,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 25.74,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.81,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2700979",
                        "name": "KA - Brentwood TN YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 273,
                                "leads": 0,
                                "clicks": 98,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.63,
                                "campaign_adjustment": 0.0,
                                "ctr": 35.9,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 225,
                                "leads": 0,
                                "clicks": 75,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.83,
                                "campaign_adjustment": 0.0,
                                "ctr": 33.33,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_240358",
                "name": "KA - Brentwood CA",
                "aid": 240358,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2616028",
                        "name": "KA - Brentwood CA ",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 170,
                                "leads": 1,
                                "clicks": 23,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 29.92,
                                "campaign_adjustment": 0.0,
                                "ctr": 13.53,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2700976",
                        "name": "KA - Brentwood CA YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 410,
                                "leads": 0,
                                "clicks": 139,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.57,
                                "campaign_adjustment": 0.0,
                                "ctr": 33.9,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 494,
                                "leads": 0,
                                "clicks": 152,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.69,
                                "campaign_adjustment": 0.0,
                                "ctr": 30.77,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_240359",
                "name": "KA - Bellevue",
                "aid": 240359,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2616031",
                        "name": "KA - Bellevue",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 248,
                                "leads": 2,
                                "clicks": 14,
                                "calls": 2,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 24.17,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.65,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2700356",
                        "name": "KA - Bellevue YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 302,
                                "leads": 0,
                                "clicks": 123,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.82,
                                "campaign_adjustment": 0.0,
                                "ctr": 40.73,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 357,
                                "leads": 0,
                                "clicks": 124,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.75,
                                "campaign_adjustment": 0.0,
                                "ctr": 34.73,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_241379",
                "name": "KA - North Pittsburgh",
                "aid": 241379,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2632966",
                        "name": "KA - North Pittsburgh",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 311,
                                "leads": 3,
                                "clicks": 22,
                                "calls": 2,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 40.94,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.07,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 1,
                                "leads": 0,
                                "clicks": 1,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.26,
                                "campaign_adjustment": 0.0,
                                "ctr": 100.0,
                                "cpc": 0.0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701132",
                        "name": "KA - North Pittsburgh YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 393,
                                "leads": 0,
                                "clicks": 111,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.75,
                                "campaign_adjustment": 0.0,
                                "ctr": 28.24,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 303,
                                "leads": 0,
                                "clicks": 100,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.71,
                                "campaign_adjustment": 0.0,
                                "ctr": 33.0,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_242811",
                "name": "KA - Santa Ana",
                "aid": 242811,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2656277",
                        "name": "KA - Santa Ana",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 534,
                                "leads": 3,
                                "clicks": 36,
                                "calls": 2,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 83.89,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.74,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701175",
                        "name": "KA - Santa Ana YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 407,
                                "leads": 0,
                                "clicks": 136,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.74,
                                "campaign_adjustment": 0.0,
                                "ctr": 33.42,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 391,
                                "leads": 0,
                                "clicks": 126,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.89,
                                "campaign_adjustment": 0.0,
                                "ctr": 32.23,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_242825",
                "name": "KA - Monroe",
                "aid": 242825,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2656297",
                        "name": "KA - Monroe",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 309,
                                "leads": 0,
                                "clicks": 15,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 33.85,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.85,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701121",
                        "name": "KA - Monroe YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 317,
                                "leads": 0,
                                "clicks": 108,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.77,
                                "campaign_adjustment": 0.0,
                                "ctr": 34.07,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 323,
                                "leads": 0,
                                "clicks": 104,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.86,
                                "campaign_adjustment": 0.0,
                                "ctr": 32.2,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_242826",
                "name": "KA - North Bel Air",
                "aid": 242826,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2656302",
                        "name": "KA - North Bel Air",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 173,
                                "leads": 0,
                                "clicks": 8,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 19.5,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.62,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701130",
                        "name": "KA - North Bel Air YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 301,
                                "leads": 0,
                                "clicks": 107,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.74,
                                "campaign_adjustment": 0.0,
                                "ctr": 35.55,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 383,
                                "leads": 1,
                                "clicks": 115,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.83,
                                "campaign_adjustment": 0.0,
                                "ctr": 30.03,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_242827",
                "name": "KA - Rosenberg",
                "aid": 242827,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2656322",
                        "name": "KA - Rosenberg",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 252,
                                "leads": 0,
                                "clicks": 17,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 39.7,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.75,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701171",
                        "name": "KA - Rosenberg YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 321,
                                "leads": 0,
                                "clicks": 95,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.72,
                                "campaign_adjustment": 0.0,
                                "ctr": 29.6,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 340,
                                "leads": 0,
                                "clicks": 94,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.6,
                                "campaign_adjustment": 0.0,
                                "ctr": 27.65,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_244249",
                "name": "KA - Oviedo",
                "aid": 244249,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2675218",
                        "name": "KA - Oviedo",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 441,
                                "leads": 3,
                                "clicks": 36,
                                "calls": 3,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 98.33,
                                "campaign_adjustment": 0.0,
                                "ctr": 8.16,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701164",
                        "name": "KA - Oviedo YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 290,
                                "leads": 0,
                                "clicks": 113,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.82,
                                "campaign_adjustment": 0.0,
                                "ctr": 38.97,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 366,
                                "leads": 0,
                                "clicks": 115,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.74,
                                "campaign_adjustment": 0.0,
                                "ctr": 31.42,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_244250",
                "name": "KA - Gahanna",
                "aid": 244250,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2675221",
                        "name": "KA - Gahanna",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 254,
                                "leads": 0,
                                "clicks": 17,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 30.27,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.69,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701011",
                        "name": "KA - Gahanna YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 342,
                                "leads": 0,
                                "clicks": 127,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.83,
                                "campaign_adjustment": 0.0,
                                "ctr": 37.13,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 308,
                                "leads": 0,
                                "clicks": 114,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.65,
                                "campaign_adjustment": 0.0,
                                "ctr": 37.01,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_245308",
                "name": "KA - Johns Creek",
                "aid": 245308,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2699190",
                        "name": "KA - Johns Creek Retargeting",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 715,
                                "leads": 0,
                                "clicks": 6,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.46,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.84,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 797,
                                "leads": 0,
                                "clicks": 7,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.25,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.88,
                                "cpc": 0.0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2699251",
                        "name": "KA - Johns Creek",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 484,
                                "leads": 1,
                                "clicks": 24,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 53.77,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.96,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2701111",
                        "name": "KA - Johns Creek YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 258,
                                "leads": 0,
                                "clicks": 95,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 5.11,
                                "campaign_adjustment": 0.0,
                                "ctr": 36.82,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 305,
                                "leads": 0,
                                "clicks": 87,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 5.23,
                                "campaign_adjustment": 0.0,
                                "ctr": 28.52,
                                "cpc": 0.0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2706578",
                        "name": "KA - Johns Creek Chat",
                        "offer_id": null,
                        "type": "chat",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 0,
                                "leads": 1,
                                "clicks": 0,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 10.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2706580",
                        "name": "KA - Johns Creek Lead Ads",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 329,
                                "leads": 1,
                                "clicks": 3,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 12.02,
                                "campaign_adjustment": 0.0,
                                "ctr": 0.91,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 255,
                                "leads": 1,
                                "clicks": 3,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 1,
                                "spend": 9.92,
                                "campaign_adjustment": 0.0,
                                "ctr": 1.18,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_245315",
                "name": "KA - Cedar Park West",
                "aid": 245315,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2700983",
                        "name": "KA - Cedar Park West YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 354,
                                "leads": 0,
                                "clicks": 117,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.78,
                                "campaign_adjustment": 0.0,
                                "ctr": 33.05,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 395,
                                "leads": 0,
                                "clicks": 103,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.75,
                                "campaign_adjustment": 0.0,
                                "ctr": 26.08,
                                "cpc": 0.0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2742252",
                        "name": "KA - Cedar Park West Chat",
                        "offer_id": null,
                        "type": "chat",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_246208",
                "name": "KA - Union Park",
                "aid": 246208,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2719181",
                        "name": "KA - Union Park",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 170,
                                "leads": 0,
                                "clicks": 13,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 22.56,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.65,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2719208",
                        "name": "KA - Union Park YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 198,
                                "leads": 0,
                                "clicks": 65,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 5.08,
                                "campaign_adjustment": 0.0,
                                "ctr": 32.83,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 231,
                                "leads": 0,
                                "clicks": 65,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 5.17,
                                "campaign_adjustment": 0.0,
                                "ctr": 28.14,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_246211",
                "name": "KA - Sanford-Heathrow",
                "aid": 246211,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2719195",
                        "name": "KA - Sanford-Heathrow",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 135,
                                "leads": 0,
                                "clicks": 14,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 28.29,
                                "campaign_adjustment": 0.0,
                                "ctr": 10.37,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2719210",
                        "name": "KA - Sanford-Heathrow YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 528,
                                "leads": 0,
                                "clicks": 173,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 12.25,
                                "campaign_adjustment": 0.0,
                                "ctr": 32.77,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 576,
                                "leads": 0,
                                "clicks": 194,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 12.29,
                                "campaign_adjustment": 0.0,
                                "ctr": 33.68,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_246213",
                "name": "KA - Chino Hills",
                "aid": 246213,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2719175",
                        "name": "KA - Chino Hills",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 429,
                                "leads": 1,
                                "clicks": 31,
                                "calls": 0,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 46.43,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.23,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2719203",
                        "name": "KA - Chino Hills YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 234,
                                "leads": 0,
                                "clicks": 77,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 5.12,
                                "campaign_adjustment": 0.0,
                                "ctr": 32.91,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 209,
                                "leads": 0,
                                "clicks": 69,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 5.11,
                                "campaign_adjustment": 0.0,
                                "ctr": 33.01,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_249187",
                "name": "KA - Almaden Valley",
                "aid": 249187,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2742216",
                        "name": "KA - Almaden Valley",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 373,
                                "leads": 3,
                                "clicks": 19,
                                "calls": 3,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 37.43,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.09,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2742219",
                        "name": "KA - Almaden Valley YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 411,
                                "leads": 0,
                                "clicks": 131,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.69,
                                "campaign_adjustment": 0.0,
                                "ctr": 31.87,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 469,
                                "leads": 0,
                                "clicks": 169,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.78,
                                "campaign_adjustment": 0.0,
                                "ctr": 36.03,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_249189",
                "name": "KA - Tribeca",
                "aid": 249189,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2742224",
                        "name": "KA - Tribeca",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 677,
                                "leads": 0,
                                "clicks": 27,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 33.75,
                                "campaign_adjustment": 0.0,
                                "ctr": 3.99,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2742233",
                        "name": "KA - Tribeca YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 437,
                                "leads": 0,
                                "clicks": 191,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.66,
                                "campaign_adjustment": 0.0,
                                "ctr": 43.71,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 495,
                                "leads": 0,
                                "clicks": 167,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 7.69,
                                "campaign_adjustment": 0.0,
                                "ctr": 33.74,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_249190",
                "name": "KA - Vancouver Salmon Creek",
                "aid": 249190,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2742326",
                        "name": "KA - Vancouver Salmon Creek",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 133,
                                "leads": 0,
                                "clicks": 4,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 22.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 3.01,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_249191",
                "name": "KA - Woodbridge North",
                "aid": 249191,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2742255",
                        "name": "KA - Woodbridge North",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 292,
                                "leads": 1,
                                "clicks": 19,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 50.22,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.51,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_251666",
                "name": "KA - Bee Cave",
                "aid": 251666,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2763890",
                        "name": "KA - Bee Cave",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 152,
                                "leads": 2,
                                "clicks": 10,
                                "calls": 1,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 38.46,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.58,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2763952",
                        "name": "KA - Bee Cave YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": -18.09,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_251667",
                "name": "KA - Elyson",
                "aid": 251667,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2763917",
                        "name": "KA - Elyson",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 255,
                                "leads": 0,
                                "clicks": 17,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 66.13,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.67,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2763953",
                        "name": "KA - Elyson YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 784,
                                "leads": 0,
                                "clicks": 232,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 12.58,
                                "campaign_adjustment": 0.0,
                                "ctr": 29.59,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 651,
                                "leads": 0,
                                "clicks": 197,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 12.75,
                                "campaign_adjustment": 0.0,
                                "ctr": 30.26,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_251677",
                "name": "KA - Harmony",
                "aid": 251677,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2763923",
                        "name": "KA - Harmony",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 229,
                                "leads": 0,
                                "clicks": 16,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 34.62,
                                "campaign_adjustment": 0.0,
                                "ctr": 6.99,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_251678",
                "name": "KA - Southwest Fort Wayne",
                "aid": 251678,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2763928",
                        "name": "KA - Southwest Fort Wayne",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 172,
                                "leads": 0,
                                "clicks": 10,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 19.59,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.81,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_253301",
                "name": "KA - Westchase",
                "aid": 253301,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2778623",
                        "name": "KA - Westchase",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 292,
                                "leads": 1,
                                "clicks": 13,
                                "calls": 1,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 47.37,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.45,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2807535",
                        "name": "KA - Westchase Local Print ",
                        "offer_id": null,
                        "type": "totaltrack_web_phone",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_253400",
                "name": "KA - East Brunswick",
                "aid": 253400,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2781206",
                        "name": "KA - East Brunswick",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 401,
                                "leads": 0,
                                "clicks": 17,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 41.79,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.24,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_253401",
                "name": "KA - Oakbrook Terrace",
                "aid": 253401,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2782001",
                        "name": "KA - Oakbrook Terrace",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 234,
                                "leads": 0,
                                "clicks": 17,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 40.44,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.26,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 128,
                                "leads": 0,
                                "clicks": 3,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 8.46,
                                "campaign_adjustment": 0.0,
                                "ctr": 2.34,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_253402",
                "name": "KA - Wilmington South Campus",
                "aid": 253402,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2781210",
                        "name": "KA - Wilmington South Campus",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 221,
                                "leads": 3,
                                "clicks": 17,
                                "calls": 2,
                                "web_events": 1,
                                "emails": 0,
                                "spend": 39.89,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.69,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_255292",
                "name": "KA - Lone Tree",
                "aid": 255292,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2808470",
                        "name": "KA - Lone Tree",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 222,
                                "leads": 0,
                                "clicks": 12,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 29.31,
                                "campaign_adjustment": 0.0,
                                "ctr": 5.41,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2808474",
                        "name": "KA - Lone Tree YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 226,
                                "leads": 0,
                                "clicks": 69,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 5.35,
                                "campaign_adjustment": 0.0,
                                "ctr": 30.53,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 280,
                                "leads": 0,
                                "clicks": 75,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 5.12,
                                "campaign_adjustment": 0.0,
                                "ctr": 26.79,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_255295",
                "name": "KA - Klein-Gleannloch",
                "aid": 255295,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_2808469",
                        "name": "KA - Klein-Gleannloch",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 307,
                                "leads": 0,
                                "clicks": 12,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 23.01,
                                "campaign_adjustment": 0.0,
                                "ctr": 3.91,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    },
                    {
                        "global_master_campaign_id": "USA_2808473",
                        "name": "KA - Klein-Gleannloch YouTube",
                        "offer_id": null,
                        "type": "display",
                        "status": "ended",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 259,
                                "leads": 0,
                                "clicks": 83,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 5.29,
                                "campaign_adjustment": 0.0,
                                "ctr": 32.05,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 214,
                                "leads": 0,
                                "clicks": 68,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "spend": 5.11,
                                "campaign_adjustment": 0.0,
                                "ctr": 31.78,
                                "cpc": 0.0
                            }
                        ]
                    }
                ]
            }
        ]
    }
}
```
