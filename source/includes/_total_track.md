### **TotalTrack**
<a name="total_track"></a>

### Resource Overview&nbsp;&nbsp;

|Method|URI Format|
|---|---|
|GET|/client_reports/total_track/[gmaid]?[query_params]|

Use GET to retrieve information for the TotalTrack report for a given advertiser.

The data returned will include leads, clicks, calls, web_events and email values organized by campaign and campaign_cycle.

### Parameters&nbsp;&nbsp;

When using the GET method, the results can be filtered using these parameters:

|Param|Function|
|---|---|
|start_date|Restricts the results to those occurring on or after this date|
|end_date|Restricts the results to those occurring on or before this date|
|global_master_campaign_id[]|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=TEST_1,TEST_2|
|campaign_status[]|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended. This should be a comma separated string. Ex: campaign_status[]=running,stopped|
|campaign_cycle|Restrict results to a single campaign cycle|
|interval_size|Use calendar_month or calendar_week to roll up the data points into calendar intervals (default is 1 day per interval)|
|include_cycles|Set to true or false on whether to include cycle nesting.  Default value is false|

To specify a date range:

   - Specify start_date and end_date.
   - When specifying a `campaign_cycle`, do not use date range params.

### Response Data Details&nbsp;&nbsp;

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/total_track/TEST_1?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/total_track/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/total_track/TEST_1?campaign_cycle=TEST_1
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/total_track/TEST_1?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date with cycle nesting

```
curl -g -H "Authorization: Bearer Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/total_track/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31&include_cycles=true
```

> Example Response

```json
{
    "totaltrack_type": "totaltrack_web_phone",
    "report_type": "total_track",
    "report_date": "2020-10-16",
    "earliest_date_available": "2020-01-01",
    "start_date": "2020-10-10",
    "end_date": "2020-10-10",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "name": "Totaltrack Phone Campaign (Demo)",
                "global_master_campaign_id": "TEST_691183",
                "start_date": "2020-01-01",
                "end_date": null,
                "type": "totaltrack",
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_719047",
                        "start_date": "2020-10-07",
                        "end_date": null,
                        "intervals": [
                            {
                                "start_date": "2020-10-10",
                                "leads": 28,
                                "clicks": 10,
                                "calls": 10,
                                "web_events": 9,
                                "emails": 9
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Totaltrack Web Phone Campaign (Demo)",
                "global_master_campaign_id": "TEST_691187",
                "start_date": "2020-01-01",
                "end_date": null,
                "type": "totaltrack",
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_719092",
                        "start_date": "2020-10-07",
                        "end_date": null,
                        "intervals": [
                            {
                                "start_date": "2020-10-10",
                                "leads": 23,
                                "clicks": 10,
                                "calls": 6,
                                "web_events": 7,
                                "emails": 10
                            }
                        ]
                    }
                ]
            },
            {
                "name": "Totaltrack Web Campaign (Demo)",
                "global_master_campaign_id": "TEST_691190",
                "start_date": "2020-01-01",
                "end_date": null,
                "type": "totaltrack",
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_719136",
                        "start_date": "2020-10-07",
                        "end_date": null,
                        "intervals": [
                            {
                                "start_date": "2020-10-10",
                                "leads": 23,
                                "clicks": 14,
                                "calls": 5,
                                "web_events": 9,
                                "emails": 9
                            }
                        ]
                    }
                ]
            }
        ],
        "totals": {
            "clicks": 34,
            "calls": 21,
            "web_events": 25,
            "emails": 28,
            "leads": 74
        },
        "totals_per_interval": [
            {
                "start_date": "2020-10-10",
                "leads": 74,
                "clicks": 34,
                "calls": 21,
                "web_events": 25,
                "emails": 28
            }
        ]
    },
    "global_master_advertiser_id": "TEST_1",
    "location": "https://api.localiqservices.com/client_reports/total_track/TEST_1?end_date=2020-10-10&include_cycles=true&start_date=2020-10-10"
}
```

|Field Name|Datatype|Description|
|---|---|---|
|totaltrack_type|String|Indicates if Response is for web only, phone only, or both web and phone (totaltrack_web, totaltrack_phone, totaltrack_web_phone)|
|report_type|String|Name of the API|
|report_date|String|Date report was run|
|earliest_date_available|String|Earliest Data is Available|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|time_zone|String|Time Zone|
|interval_size|String|Interval Size ('none', 'day', 'calendar_week' or 'calendar_month')|
|currency|String|Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD)|
|report_data|Object|Report details|
|global_master_advertiser_id|String|Identifier for advertiser|
|location|String|Location URL|

**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|campaigns|Object|Data for specified campaign|
|totals|Object|Data for Overall Totals|
|totals_per_interval|Object|Overall Totals Broken Down by Interval|

**Campaigns Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|name|String|No|Campaign Name|
|global_master_campaign_id|String|No|Unique Identifier for Campaign|
|start_date|String|No|Campaign Start Date|
|end_date|String|Yes|Campaign End Date|
|type|String|No|Type of Campaign|
|status|String|No|Status of Campaign|
|cycles|Cycle[]|No|Array of Cycle|
|intervals|Interval[]|No|Array of Interval|

**Cycles Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|campaign_cycle|String|No|Unique Identifier for Cycle|
|start_date|String|No|Cycle Start Date|
|end_date|String|Yes|Cycle End Date|
|intervals|Interval[]|No|Array of Interval|


**Intervals Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|start_date|String|No|Start Date for Interval|
|leads|Int|No|Leads for Interval|
|clicks|Int|No|Clicks for Interval|
|calls|Int|No|Calls for Interval|
|web_events|Int|No|Web Events for Interval|
|emails|Int|No|Emails for Interval|

**Totals Object**

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|leads|Int|No|Total Leads|
|clicks|Int|No|Total Clicks|
|calls|Int|No|Total Calls|
|web_events|Int|No|Total Web Events|
|emails|Int|No|Total Emails|

**Totals Per Interval Object**

This is an Interval object across all campaigns.
