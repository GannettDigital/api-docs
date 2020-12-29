### **Web Event Metrics**
<a name="web_event_metrics"></a>

### Resource Overview&nbsp;&nbsp;&nbsp;


| Method | URI Format |
|---|---|
| GET | /client_reports/cvt_events/[gmaid]?[query_params]|

This is an API that can be used by customers who have indicated that certain pages or actions of specific importance will benefit the performance of campaigns through more informed and meaningful conversions. All metrics are reported against the CVT/Web Event.

Web Events fall under these categories: ‘Request’, ‘Submit’ and ’unknown”.
* A 'Request' Web Event is usually informational, in some cases, it can have a post-click activity that can generate a lead.
* A 'Submit' CVT/Web Event is lead-generating. Metrics tied to a 'Request' CVT/Web Event are considered 'non-qualified', whereas metrics tied to a 'Submit' CVT/Web Event are considered 'qualified'.
* An 'Unknown’ Web Event is one where the URL & name are missing. This happens periodically when a campaign cycles and a visitor triggers the web event while our system is renewing the web events data for the new cycle. From a metrics perspective, the web event occurred but we don’t know which one was triggered.

Use GET to retrieve web event activity for all CVT/Web Events for a given gmaid.

The data returned will include CVT/Web Events from each campaign with web event name, web event url, and metrics for the interval requested.

### Parameters&nbsp;&nbsp;&nbsp;

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Function |
|---|---|---|
|start_date|Yes|Restricts the results to events occurring on or after this date|
|end_date|Yes|Restricts the results to events occurring on or before this date|
|global_master_campaign_id[]|No|Restricts results to all campaigns with given master campaign id|
|interval_size|No|Use calendar_month or calendar_week to roll up the data points into calendar intervals (default is 1 day per interval)|
|campaign_status[]|No|Restrict results to all campaigns with given status values.  Allowed values are running, stopped or ended|

To specify a date range:

   - Specify start_date and end_date.

### Response Data Details&nbsp;&nbsp;&nbsp;

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/TEST_1?start_date=2019-10-01&end_date=2020-02-25'
```

> Retrieve data for a specific master campaign id

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/TEST_1?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=TEST_1' \
```

> Retrieve data for a specific range of dates limited to ended campaigns

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/TEST_1?start_date=2019-10-01&end_date=2020-02-25&campaign_status[]=ended' \
```

> Retrieve data for a specific range of dates grouped by calendar week

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/TEST_1?start_date=2019-10-01&end_date=2020-02-25&interval_size=calendar_week' \
```

> Retrieve data with all options together with results below

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/TEST_1?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=TEST_1&interval_size=calendar_week&campaign_status[]=running' \
```

> Example Response

```json
{
    "report_type": "cvt_events",
    "report_date": "2020-10-14",
    "earliest_date_available": "2020-10-10",
    "start_date": "2019-10-10",
    "end_date": "2020-10-10",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "name": "Display Campaign (Demo)",
                "global_master_campaign_id": "TEST_1",
                "start_date": "2020-10-10",
                "end_date": null,
                "type": "display",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Submit",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "qualified_web_events": 3,
                                "high_web_events": 3
                            }
                        ]
                    },                    {
                        "cvt_type": "Unknown",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "qualified_web_events": 1,
                                "high_web_events": 1
                            }
                        ]
                    },
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Submit",
                        "entry_type": 7,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "qualified_web_events": 3,
                                "high_web_events": 3
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Search Campaign (Demo)",
                "global_master_campaign_id": "TEST_4",
                "start_date": "2020-10-10",
                "end_date": null,
                "type": "search",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Request",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "qualified_web_events": 3,
                                "high_web_events": 0
                            }
                        ]
                    },
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Submit",
                        "entry_type": 7,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "qualified_web_events": 6,
                                "high_web_events": 6
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Totaltrack Web Phone Campaign (Demo)",
                "global_master_campaign_id": "TEST_10",
                "start_date": "2020-10-10",
                "end_date": null,
                "type": "totaltrack",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Request",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "qualified_web_events": 6,
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
                                "date": "2020-10-10",
                                "non_qualified_web_events": 3
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Totaltrack Web Campaign (Demo)",
                "global_master_campaign_id": "TEST_13",
                "start_date": "2020-10-10",
                "end_date": null,
                "type": "totaltrack",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Request",
                        "entry_type": 7,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "non_qualified_web_events": 4
                            }
                        ]
                    },
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Submit",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "qualified_web_events": 3,
                                "high_web_events": 3
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Other Campaign (Demo)",
                "global_master_campaign_id": "TEST_16",
                "start_date": "2020-10-10",
                "end_date": null,
                "type": "other",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Request",
                        "entry_type": 7,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "non_qualified_web_events": 5
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
                                "date": "2020-10-10",
                                "qualified_web_events": 2,
                                "high_web_events": 0
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Chat Campaign (Demo)",
                "global_master_campaign_id": "TEST_19",
                "start_date": "2020-10-10",
                "end_date": null,
                "type": "chat",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Request",
                        "entry_type": 7,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "non_qualified_web_events": 1
                            }
                        ]
                    },
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Submit",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "qualified_web_events": 5,
                                "high_web_events": 5
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Xmedia Campaign (Demo)",
                "global_master_campaign_id": "TEST_34",
                "start_date": "2020-10-10",
                "end_date": null,
                "type": "xmedia",
                "status": "running",
                "organization": "reachlocal",
                "web_events": [
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Submit",
                        "entry_type": 8,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "qualified_web_events": 8,
                                "high_web_events": 8
                            }
                        ]
                    },
                    {
                        "web_event_name": "Form Submitted (Demo)",
                        "web_event_url": "www.rl-demo.com",
                        "cvt_type": "Submit",
                        "entry_type": 7,
                        "intervals": [
                            {
                                "date": "2020-10-10",
                                "qualified_web_events": 2,
                                "high_web_events": 2
                            }
                        ]
                    }
                ]
            }
        ]
    },
    "global_master_advertiser_id": "TEST_1",
    "location": "https://api.reachlocalservices.com/client_reports/cvt_events//TEST_1?end_date=2020-10-10&start_date=2019-10-10"
}
```

| Field Name | Datatype | Description |
|---|---|---|
|report_type|String|Report Type|
|report_date|String|Date Report was Run|
|earliest_date_available|String|Earliest Date Data is Available|
|start_date|String|Start Date of Report|
|end_date|String|End Date of Report|
|time_zone|String|Time Zone of Report|
|interval_size|String|Interval Size Report is Broken Into|
|currency|String|Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD)|
|report_data|Object|[Report Data Object](#cvtreportdata)|

<a name="cvtreportdata"></a>
**Report Data Object**

| Field Name | Datatype | Description |
|---|---|---|
|campaigns|Object|[Campaigns Object](#cvtcampaigns)|
|global_master_advertiser_id|String|Global Master Advertiser ID|
|location|String|Location URL|

<a name="cvtcampaigns"></a>
**Campaigns Object**

| Field Name | Datatype | Description |
|---|---|---|
|name|String|Campaign name|
|global_master_campaign_id|String|Identifier for campaign|
|start_date|String|Start date for campaign|
|end_date|String|End date for campaign|
|type|String|Type of campaign|
|status|String|Current campaign status|
|organization|String|Organization|
|web_events|Object|[Web Events Object](#cvtwebevents)|

<a name="cvtwebevents"></a>
**Web Events Object**

| Field Name | Datatype | Description |
|---|---|---|
|web_event_name|String|Name of web event|
|web_event_url|String|Web event url|
|cvt_type|String|Request, Submit, or Unknown|
|entry_type|Integer|7 (does not generate a lead event) or 8 (generates a lead event)|
|intervals|Object|[Intervals Object](#cvtintervals)|

<a name="cvtintervals"></a>
**Intervals Object**

| Field Name | Datatype | Description |
|---|---|---|
|date|String|Date for interval|
|non_qualified_web_events|Integer|A non-lead generating CVT/Web Event|
|qualified_web_events|Integer|A lead generating CVT/Web Event|
|high_web_events|Integer|A Request or Submit marked as high-value|
