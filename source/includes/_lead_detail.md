### **Lead Details**
<a name="lead_details"></a>

### Resource Overview&nbsp;&nbsp;

|Method|URI Format|
|---|---|
|GET|/client_reports/lead_detail/[gmaid]?[query_params]|

Use GET to retrieve information for the Lead Details report for a given advertiser.

The report will contains calls, emails, web events, and chats broken down by day or month.
It will also contain the number of calls broken down by call duration.
A total section will contain all the calls, unique calls, calls connected, average call length, emails, web events, chats and leads for the date range specified.
Finally, the report will have a break down for calls by hour for each day of the week.

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


To specify a date range:

   - Specify start_date and end_date.
   - When specifying a campaign_cycle, do not use date range params.

### Response Data Details&nbsp;&nbsp;

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/lead_detail/TEST_1?start_date=2016-12-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/lead_detail/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31
```

> Retrieve data for a specific campaign cycle

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/lead_detail/TEST_1?campaign_cycle=TEST_1
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/lead_detail/TEST_1?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31
```

> Example Response

```json
{
    "report_type": "lead_detail",
    "report_date": "2020-10-15",
    "earliest_date_available": "2020-01-01",
    "start_date": "2020-10-10",
    "end_date": "2020-10-10",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "report_data": {
        "totals_per_interval": [
            {
                "start_date": "2020-10-10",
                "calls": 71,
                "emails": 85,
                "web_events": 86,
                "qualified_web_events": 87,
                "chats": 88
            }
        ],
        "call_duration": [
            {
                "duration": "0-29",
                "total": 14
            },
            {
                "duration": "30-59",
                "total": 15
            },
            {
                "duration": "60-119",
                "total": 15
            },
            {
                "duration": "120",
                "total": 27
            }
        ],
        "calls_by_time_and_day": {
            "saturday": {
                "0": 2,
                "1": 2,
                "2": 3,
                "3": 1,
                "4": 2,
                "5": 3,
                "6": 3,
                "7": 4,
                "8": 2,
                "9": 4,
                "10": 3,
                "11": 1,
                "12": 2,
                "13": 5,
                "14": 3,
                "15": 3,
                "16": 2,
                "17": 3,
                "18": 2,
                "19": 6,
                "20": 6,
                "21": 4,
                "22": 3,
                "23": 2
            },
            "max": 6
        },
        "totals": {
            "calls": 71,
            "unique_calls": 70,
            "calls_connected": 70,
            "average_call_length": 89.43,
            "emails": 85,
            "web_events": 86,
            "qualified_web_events": 87,
            "chats": 88,
            "leads": 417
        }
    },
    "global_master_advertiser_id": "TEST_1",
    "location": "https://api.qa.reachlocalservices.com/client_reports/lead_detail/TEST_1?end_date=2020-10-10&start_date=2020-10-10"
}

```

|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Type of report|
|report_date|String|Date report ran|
|earliest_date_available|String|How far back data is available|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|time_zone|String|Time Zone|
|interval_size|String|Interval size for report|
|report_data|Object|[Report Data Object.](#leadreportdata)|
|global_master_advertiser_id|String|Identifier for advertiser|
|location|String|Location URL|

<a name="leadreportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|totals_per_interval|Array|Lead totals broken down by day or month. [Totals Per Interval Array.](#leadtotalsinterval)|
|call_duration|Array|Call duration data. ('duration' duration range in seconds, 'totals' total calls for duration)|
|totals|Object|Totals. [Totals Object.](#leadtotals)|
|calls_by_time_and_day|Object|Call by hour by day. (day of week, hour of day)|

<a name="leadtotalsinterval"></a>
**Totals Per Interval Array**

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|Start date for interval|
|calls|Integer|Calls for interval|
|emails|Integer|Emails for interval|
|web_events|Integer|Web events for interval|
|qualified_web_events|Integer|A lead generating CVT/Web Event|
|chats|Integer|Chats for interval|

<a name="leadtotals"></a>
**Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|calls|Integer|Total calls|
|unique_calls|Integer|Total unique calls|
|calls_connected|Integer|Total calls connected|
|average_call_length|Integer|Total average call length|
|emails|Integer|Total emails|
|web_events|Integer|Total web events|
|qualified_web_events|Integer|A lead generating CVT/Web Event|
|chats|Integer|Total chats|
|leads|Integer|Total leads|

<a name="leadcycles"></a>
**Cycles Array**

|Field Name|Datatype|Description|
|---|---|---|
|campaign_cycle|String|Identifier for cycle|
|start_date|String|Start date of cycle|
|end_date|String|End date of cycle|
|name|String|Name of cycle|

