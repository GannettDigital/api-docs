## Shopping Metrics

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/shopping/[gmaid]?[query_params] |

This API can be used to retrieve metrics for Social campaigns broken down by campaign, cycle, web publisher campaign, ad set and creative.

Use GET to retrieve metrics for a Social campaign. Metrics can be returned for a GMAID for a specific date range determined by start_date and end_date. Metrics can be retrieved for a specified campaign or cycle.

The requirements for these parameters are described below.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Default | Description |
|---|---|---|---|
|start_date| yes |--|Restricts the results to those ocurring on or after this date|
|end_date| yes |--|Restricts the results to those ocurring on or before this date|
|global_master_campaign_id[]| no |--| Restrict results to one or more specific campaigns|
|interval_size|Use calendar_month or calendar_week to roll up the data points into calendar intervals (default is 1 day per interval)|
|campaign_status[]| no |running|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended|

### Response Data Details

```json
{
    "report_type": "shopping",
    "report_date": "2023-05-02",
    "earliest_date_available": "2023-04-01",
    "start_date": "2023-04-05",
    "end_date": "2023-05-01",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "name": "Shopping Campaign (Demo)",
                "global_master_campaign_id": "TEST_16077",
                "start_date": "2023-03-01",
                "end_date": null,
                "type": "shopping",
                "status": "running",
                "intervals": [
                    {
                        "customer_revenue": 125.5,
                        "purchases": 0,
                        "impressions": 1352,
                        "emails": 8,
                        "chats": 0,
                        "clicks": 12,
                        "calls": 18,
                        "spend": 25.0,
                        "budget": 30.0,
                        "start_date": "2023-04-01"
                    },
                    {
                        "customer_revenue": 125.5,
                        "purchases": 0,
                        "impressions": 1363,
                        "emails": 8,
                        "chats": 0,
                        "clicks": 20,
                        "calls": 16,
                        "spend": 25.0,
                        "budget": 30.0,
                        "start_date": "2023-04-02"
                    },
                    {
                        "customer_revenue": 125.5,
                        "purchases": 0,
                        "impressions": 1468,
                        "emails": 8,
                        "chats": 0,
                        "clicks": 10,
                        "calls": 18,
                        "spend": 25.0,
                        "budget": 30.0,
                        "start_date": "2023-04-03"
                    },
                    {
                        "customer_revenue": 125.5,
                        "impressions": 1184,
                        "emails": 7,
                        "chats": 0,
                        "clicks": 14,
                        "calls": 12,
                        "spend": 25.0,
                        "budget": 30.0,
                        "start_date": "2023-04-04"
                    },
                    {
                        "customer_revenue": 125.5,
                        "purchases": 0,
                        "impressions": 1469,
                        "emails": 5,
                        "chats": 0,
                        "clicks": 14,
                        "calls": 22,
                        "spend": 25.0,
                        "budget": 30.0,
                        "start_date": "2023-04-05"
                    }
                ]
            }
        ],
        "totals": {
            "customer_revenue": 387.5,
            "purchases": 0,
            "impressions": 39734,
            "emails": 223,
            "chats": 0,
            "clicks": 451,
            "calls": 502,
            "spend": 775.0,
            "budget": 0
        },
        "totals_per_interval": [
            {
                "customer_revenue": 125.5,
                "purchases": 0,
                "impressions": 1352,
                "emails": 8,
                "chats": 0,
                "clicks": 12,
                "calls": 18,
                "spend": 25.0,
                "budget": 30.0,
                "start_date": "2023-04-01"
            },
            {
                "customer_revenue": 125.5,
                "purchases": 0,
                "impressions": 1363,
                "emails": 8,
                "chats": 0,
                "clicks": 20,
                "calls": 16,
                "spend": 25.0,
                "budget": 30.0,
                "start_date": "2023-04-02"
            },
            {
                "customer_revenue": 125.5,
                "purchases": 0,
                "impressions": 1468,
                "emails": 8,
                "chats": 0,
                "clicks": 10,
                "calls": 18,
                "spend": 25.0,
                "budget": 30.0,
                "start_date": "2023-04-03"
            },
            {
                "customer_revenue": 125.5,
                "purchases": 0,
                "impressions": 1184,
                "emails": 7,
                "chats": 0,
                "clicks": 14,
                "calls": 12,
                "spend": 25.0,
                "budget": 30.0,
                "start_date": "2023-04-04"
            },
            {
                "customer_revenue": 125.5,
                "purchases": 0,
                "impressions": 1469,
                "emails": 5,
                "chats": 0,
                "clicks": 14,
                "calls": 22,
                "spend": 25.0,
                "budget": 30.0,
                "start_date": "2023-04-05"
            }
        ]
    },
    "global_master_advertiser_id": "TEST_1"
}
```

> Retrieve data for a specific range of dates
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/shopping/TEST_1?start_date=2016-12-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign starting on a certain date
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/shopping/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```
> Retrieve data for campaigns that are stopped and running
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/shopping/TEST_1?campaign_status[]=running&campaign_status[]=stopped&start_date=2016-10-01&end_date=2016-12-31"
```

> Response Description
**Base Report**

| Field Name | Datatype | Description |
|---|---|---|
|api_name|String|Name of the API|
|earliest_date_available|String|Earliest Data is Available|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|time_zone|String|Time Zone|
|interval_size|String|Interval Size ('none', 'day', 'calendar_week' or 'calendar_month')|
|currency|String|Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD)|
|report_data|Object|Report details|

<a name="shoppingreportdata"></a>
**Report Data Object**

| Field Name | Datatype | Description |
|---|---|---|
|campaigns|Array|All data for campigns. [Campaigns Array.](#shoppingcampaigns)|
|totals|Object|Totals data. [Totals Details.](#shoppingtotals)|
|totals_per_interval|Array|Totals per interval over multiple campaigns. [Totals Per Interval Details.](#shoppingintervals)|

<a name="shoppingcampaigns"></a>
**Campaigns Object**

|Field Name|Datatype|Description|
|---|---|---|
|name|String|Campaign name|
|global_master_campaign_id|String|Identifier for campaign|
|start_date|String|Start date for campaign|
|end_date|String|End date for campaign|
|type|String|Type of campaign|
|status|String|Status of campaign|
|intervals|Array|Data for specified interval. [Intervals Array.](#shoppingintervals)|

<a name="shoppingintervals"></a>
**Intervals Array**

|Field Name|Datatype|Description|
|---|---|---|
|customer_revenue|Float|Customer revenue for interval|
|purchases|Integer|Conversions for interval|
|start_date|String|Start date of interval|
|impressions|Integer|Impressions for interval|
|emails|Integer|Emails for interval|
|chats|Integer|Chats for interval|
|clicks|Integer|Clicks for interval|
|calls|Integer|Calls for interval|
|spend|Float|Spend for interval|
|budget|Float|Budget for interval|

<a name="shoppingtotals"></a>
**Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|customer_revenue|Float|Total customer revenue|
|purchases|Integer|Total conversions|
|impressions|Integer|Total impressions|
|emails|Integer|Total emails|
|chats|Integer|Total chats|
|clicks|Integer|Total clicks|
|calls|Integer|Total calls|
|spend|Float|Total spend|
|budget|Float|Total budget|