## CVT Events

### Resource Overview


| Method | URI Format |
|---|---|
| GET | /client_reports/cvt_events/[gmaid]?[query_params]|

### API Name: CVT Events
### Usage
Use GET to retrieve web event activity for all CVT events for a given gmaid.

The data returned will include web events from each campaign with web event name, web event url, and web event interval data of CVT counts, qualified and non-qualified web events, and high web events.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Function |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`global_master_campaign_id[]`|No|Restricts results to all campaigns with given master campaign id|
|`interval_size`|No|Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`campaign_status[]`|No|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` or `ended`|


To specify a date range:

   - Specify start_date and end_date.

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25'
```

> Retrieve data for a specific master campaign id

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=USA_1' \
```

> Retrieve data for a specific range of dates limited to ended campaigns

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25&campaign_status[]=ended' \
--header 'Authorization: reachanalyticsreportingservicetoken'
```

> Retrieve data for a specific range of dates grouped by calendar week

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25&interval_size=calendar_week' \
```

> Retrieve data with all options together with results below

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=USA_1&interval_size=calendar_week&campaign_status[]=running' \
```

> Response Description

```javascript
{
    "report_type": "cvt_events",                // Report Type
    "report_date": "2020-12-15",                // Date Report was Run
    "earliest_date_available": "2020-11-01",    // Earliest Date Data is Available
    "start_date": "2020-11-20",                 // Start Date of Report
    "end_date": "2020-11-21",                   // End Date of Report
    "time_zone": "America/Los_Angeles",         // Time Zone of Report
    "interval_size": "day",                     // Interval Size Report is Broken Into
    "currency": "USD",                          // Currency of Report
    "report_data": {
        "campaigns": [
            {
                "name": "Display Campaign (Demo)",            // Campaign name
                "global_master_campaign_id": "TEST_1898330",  // Identifier for campaign
                "start_date": "2020-11-03",                   // Start date for campaign
                "end_date": null,                             // End date for campaign
                "type": "display",                            // Type of campaign
                "status": "running",                          // Current campaign status
                "organization": "reachlocal",                 // Organization
                "web_events": [
                    {
                        "cvt_type": "Unknown",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "qualified_web_events": 9,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "qualified_web_events": 4,
                                "high_web_events": 0
                            }
                        ]
                    },
                    {
                        "web_event_name": "Form Submitted (Demo)",  // Name of web event
                        "web_event_url": "www.rl-demo.com",         // Web event url
                        "cvt_type": "Submit",                       // CVT Type
                        "entry_type": 7,                            // Entry Type
                        "intervals": [                              // Array of intervals
                            {
                                "date": "2020-11-20",
                                "qualified_web_events": 1,
                                "high_web_events": 1
                            },
                            {
                                "date": "2020-11-21",
                                "non_qualified_web_events": 4,
                                "high_web_events": 0
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Search Campaign (Demo)",
                "global_master_campaign_id": "TEST_1898333",
                "start_date": "2020-11-03",
                "end_date": null,
                "type": "search",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "cvt_type": "Unknown",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "qualified_web_events": 3,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "qualified_web_events": 1,
                                "high_web_events": 0
                            }
                        ]
                    },
                    {
                        "cvt_type": "Unknown",
                        "entry_type": 7,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "non_qualified_web_events": 6,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "non_qualified_web_events": 6,
                                "high_web_events": 0
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Totaltrack Web Phone Campaign (Demo)",
                "global_master_campaign_id": "TEST_1898373",
                "start_date": "2020-11-04",
                "end_date": null,
                "type": "totaltrack",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "cvt_type": "Unknown",
                        "entry_type": 7,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "non_qualified_web_events": 2,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "non_qualified_web_events": 3,
                                "high_web_events": 0
                            }
                        ]
                    },
                    {
                        "cvt_type": "Unknown",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "qualified_web_events": 5,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "qualified_web_events": 4,
                                "high_web_events": 0
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Totaltrack Web Campaign (Demo)",
                "global_master_campaign_id": "TEST_1898376",
                "start_date": "2020-11-04",
                "end_date": null,
                "type": "totaltrack",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "cvt_type": "Unknown",
                        "entry_type": 7,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "non_qualified_web_events": 4,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "non_qualified_web_events": 5,
                                "high_web_events": 0
                            }
                        ]
                    },
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Request",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "qualified_web_events": 3,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "qualified_web_events": 5,
                                "high_web_events": 0
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Other Campaign (Demo)",
                "global_master_campaign_id": "TEST_1898379",
                "start_date": "2020-11-04",
                "end_date": null,
                "type": "other",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "cvt_type": "Unknown",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "qualified_web_events": 3,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "qualified_web_events": 5,
                                "high_web_events": 0
                            }
                        ]
                    },
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Request",
                        "entry_type": 7,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "non_qualified_web_events": 2,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "non_qualified_web_events": 2,
                                "high_web_events": 0
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Chat Campaign (Demo)",
                "global_master_campaign_id": "TEST_1898382",
                "start_date": "2020-11-04",
                "end_date": null,
                "type": "chat",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "cvt_type": "Unknown",
                        "entry_type": 7,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "non_qualified_web_events": 5,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "qualified_web_events": 2,
                                "high_web_events": 2
                            }
                        ]
                    },
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Request",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "qualified_web_events": 5,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "qualified_web_events": 3,
                                "high_web_events": 0
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Xmedia Campaign (Demo)",
                "global_master_campaign_id": "TEST_1898396",
                "start_date": "2020-11-04",
                "end_date": null,
                "type": "xmedia",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "cvt_type": "Unknown",
                        "entry_type": 7,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "non_qualified_web_events": 5,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "non_qualified_web_events": 3,
                                "high_web_events": 0
                            }
                        ]
                    },
                    {
                        "cvt_type": "Unknown",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-11-20",
                                "qualified_web_events": 3,
                                "high_web_events": 0
                            },
                            {
                                "date": "2020-11-21",
                                "qualified_web_events": 3,
                                "high_web_events": 0
                            }
                        ]
                    }
                ]
            }
        ]
    },
    "global_master_advertiser_id": "TEST_1"
}
```
