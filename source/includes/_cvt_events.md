## Web Event Metrics

### Resource Overview


| Method | URI Format |
|---|---|
| GET | /client_reports/cvt_events/[gmaid]?[query_params]|

### API Name: CVT/Web Events

### Summary

This is an API that can be used by customers who have indicated that certain pages or actions of specific importance will benefit the performance of campaigns through more informed and meaningful conversions. All metrics are reported against the CVT/Web Event.

Web Events fall under two categories: 'Request' and 'Submit'. A 'Request' Web Event is usually informational, in some cases, it can have a post-click activity that can generate a lead. A 'Submit' CVT/Web Event is lead-generating. Metrics tied to a 'Request' CVT/Web Event are considered 'non-qualified', whereas metrics tied to a 'Submit' CVT/Web Event are considered 'qualified'.

### Usage
Use GET to retrieve web event activity for all CVT/Web Events for a given gmaid.

The data returned will include CVT/Web Events from each campaign with web event name, web event url, and metrics for the interval requested.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Function |
|---|---|---|
|`start_date`|Yes|Restricts the results to events occurring on or after this date.|
|`end_date`|Yes|Restricts the results to events occurring on or before this date.|
|`global_master_campaign_id[]`|No|Restricts results to all campaigns with given master campaign id|
|`interval_size`|No|Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval)|
|`campaign_status[]`|No|Restrict results to all campaigns with given status values.  Allowed values are `running`, `stopped` or `ended`|

To specify a date range:

   - Specify start_date and end_date.

### Response Data Details

| Field Name | Datatype | Description |
|---|---|---|
|`report_type`|String|Report Type.|
|`report_date`|String|Date Report was Run.|
|`earliest_date_available`|String|Earliest Date Data is Available.|
|`start_date`|String|Start Date of Report.|
|`end_date`|String|End Date of Report.|
|`time_zone`|String|Time Zone of Report.|
|`interval_size`|String|Interval Size Report is Broken Into.|
|`currency`|String|Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD).|
|`report_data`|Object|[Report Data Object](#cvtreportdata).|

<a name="cvtreportdata"></a>
#### Report Data Object

| Field Name | Datatype | Description |
|---|---|---|
|`campaigns`|Object|[Campaigns Object](#cvtcampaigns).|
|`global_master_advertiser_id`|String|Global Master Advertiser ID.|
|`location`|URL||

<a name="cvtcampaigns"></a>
#### Campaigns Object
| Field Name | Datatype | Description |
|---|---|---|
|`name`|String|Campaign name.|
|`global_master_campaign_id`|String|Identifier for campaign.|
|`start_date`|String|Start date for campaign.|
|`end_date`|String|End date for campaign.|
|`type`|String|Type of campaign.|
|`status`|String|Current campaign status.|
|`organization`|String|Organization.|
|`web_events`|Object|[Web Events Object](#cvtwebevents).|

<a name="cvtwebevents"></a>
#### Web Events Object
| Field Name | Datatype | Description |
|---|---|---|
|`web_event_name`|String|Name of web event.|
|`web_event_url`|URL|Web event url.|
|`cvt_type`|String|`Request` or `Submit`.|
|`entry_type`|Integer|`7` (does not generate a lead event) or `8` (generates a lead event).|
|`intervals`|Object|[Intervals Object](#cvtintervals).|

<a name="cvtintervals"></a>
#### Intervals Object
| Field Name | Datatype | Description |
|---|---|---|
|`date`|String|Date for interval|
|`non_qualified_web_events`|Integer|A non-lead generating CVT/Web Event.|
|`qualified_web_events`|Integer|A lead generating CVT/Web Event.|
|`high_web_events`|Integer|A `Request` or `Submit` marked as high-value.|

### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25'
```

> Retrieve data for a specific master campaign id

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=USA_1' \
```

> Retrieve data for a specific range of dates limited to ended campaigns

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25&campaign_status[]=ended' \
```

> Retrieve data for a specific range of dates grouped by calendar week

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25&interval_size=calendar_week' \
```

> Retrieve data with all options together with results below

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/cvt_events/USA_123456?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=USA_1&interval_size=calendar_week&campaign_status[]=running' \
```

> Response Description

```javascript
{
  "report_type": "cvt_events",                    // Report Type
  "report_date": "2020-02-26",                    // Date Report was Run
  "earliest_date_available": "2018-03-03",        // Earliest Date Data is Available
  "start_date": "2019-10-01",                     // Start Date of Report
  "end_date": "2020-02-25",                       // End Date of Report
  "time_zone": "America/Los_Angeles",             // Time Zone of Report    
  "interval_size": "calendar_week",               // Interval Size Report is Broken Into
  "currency": "USD",                              // Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD).
  "report_data": {
    "campaigns": [
      {
        "name": "Ad_Campaign_1",                  // Campaign name
        "global_master_campaign_id": "USA_1",     // Identifier for campaign
        "start_date": "2016-07-10",               // Start date for campaign
        "end_date": "2016-10-24",                 // End date for campaign
        "type": "Search",                         // Type of campaign
        "status": "running",                      // Current campaign status
        "organization": "reachlocal",             // Organization
        "web_events": [
          {
            "web_event_name": "*Book my appointment button clicked",  // Name of web event
            "web_event_url": "https://www.bookanappointment.com",     // Web event url
            "cvt_type": "Request",
            "entry_type": 7,
            "intervals": [
                {
                    "date": "2019-09-30",
                    "non_qualified_web_events": 4
                },
                {
                    "date": "2019-10-07",
                    "non_qualified_web_events": 4
                },
                {
                    "date": "2019-10-14",
                    "non_qualified_web_events": 1
                }
            ]
          },
          {
            "web_event_name": "*Request a callback form submitted",
            "web_event_url": "https://www.bookanappointment.com/callme",
            "cvt_type": "Submit",
            "entry_type": 8,
            "intervals": [
                {
                    "date": "2019-09-30",
                    "qualified_web_events": 1,
                    "high_web_events": 1
                },
                {
                    "date": "2019-10-07",
                    "qualified_web_events": 1,
                    "high_web_events": 1
                },
                {
                    "date": "2019-10-14",
                    "qualified_web_events": 1,
                    "high_web_events": 1
                }
            ]
          },
          {
            "web_event_name": "*New Pages",
            "web_event_url": "https://www.bookanappointment.com/searchnew.aspx",
            "cvt_type": "Request",
            "entry_type": 8,
            "intervals": [
                {
                    "date": "2020-02-01",
                    "qualified_web_events": 2,
                    "high_web_events": 0
                },
                {
                    "date": "2020-02-03",
                    "qualified_web_events": 1,
                    "high_web_events": 0
                },
                {
                    "date": "2020-02-04",
                    "qualified_web_events": 1,
                    "high_web_events": 0
                },
                {
                    "date": "2020-02-05",
                    "qualified_web_events": 2,
                    "high_web_events": 0
                },
                {
                    "date": "2020-02-08",
                    "qualified_web_events": 2,
                    "high_web_events": 0
                }
            ]
          },
        ]
      }
    ]
  },
  "global_master_advertiser_id": "USA_123456",  // Global Master Advertiser ID
  "location": "https://api.reachlocalservices.com/client_reports/cvt_events/USA_190076?campaign_status%5B%5D=running&end_date=2020-02-25&global_master_campaign_id%5B%5D=USA_2772377&interval_size=calendar_week&start_date=2019-10-01"
}
```
