## Chat Summary

### Resource Overview


| Method | URI Format |
|---|---|
| GET | /client_reports/chat_summary/[gmaid]?[query_params]|

### API Name: Chat Summary

### Summary

This API can be used by customers who have our chat widget on their site. The API has metrics on each chat along with traffic information (Paid Campaign/Organic).

### Usage
Use GET to retrieve information from the Chat Summary API. Data can be returned for a GMAID by a specific date range determined by start date and end date.

Subtotals will be returned for each Master Campaign ID with chat activity in the specified date range.

Subtotals can be further aggregated given an interval, and will be totaled for `day`, `calendar_week`, or `calendar_month`. The first day of the interval will be used to denote the interval totals.

Use the master_campaign_id parameter to limit the results to a single Master Campaign ID.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Function |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`gmaid`|Yes|Restrict results to the specified Global Master Advertiser ID.|
|`global_master_campaign_id[]`|No|Restrict results to the specified master campaign id.|
|`interval_size`|No|Return subtotals for the given intervals within the start-end time provided. Accepts `calendar_month`, `calendar_week`, or `day`.|

### Response Data Details

| Field Name | Datatype | Description |
|---|---|---|
|`api_name`|String|Name of the API.|
|`api_run_date`|String|Date report was run.|
|`start_date`|String|Start date of report.|
|`end_date`|String|End date of report.|
|`time_zone`|String|Time Zone.|
|`interval_size`|String|Interval Size ('none', 'day', 'calendar_week' or 'calendar_month').|
|`currency`|String|Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD).|
|`report_data`|Object|Report details. [Report Data Object](#chatreportdata).|
|`global_master_advertiser_id`|String|Global Master Advertiser ID.|

<a name="chatreportdata"></a>
#### Report Data Object
| Field Name | Datatype | Description |
|---|---|---|
|`campaigns`|Object|Data for specified campaign. [Campaigns Object](#chatcampaigns).|
|`organic`|Object|Data for organic. [Organic Object](#chatorganic).|

<a name="chatcampaigns"></a>
#### Campaigns Object
| Field Name | Datatype | Description |
|---|---|---|
|`global_master_campaign_id`|String|Identifier for campaign|
|`campaign_name`|String|Name of campaign.|
|`campaign_type`|String|Type of campaign.|
|`campaign_status`|String|Status of campaign.|
|`organization`|String|Organization.|
|`campaign_start_date`|String|Start date of campaign.|
|`campaign_end_date`|String|End date of campaign.|
|`intervals`|Object|Data for specified interval. [Intervals Object](#chatintervals).|

<a name="chatorganic"></a>
#### Organic Object
| Field Name | Datatype | Description |
|---|---|---|
|`intervals`|Object|Data for specified interval. [Intervals Object](#chatintervals)|

<a name="chatintervals"></a>
#### Intervals Object

| Field Name | Datatype | Description |
|---|---|---|
|`start_date`|String|Start date of interval|
|`non_lead_chats`|Integer|Number of non-lead chats|
|`total_chats`|Integer|Number of total chats|
|`chat_leads`|Integer|Number of chat leads|
|`chat_sales`|Integer|Number of chats marked as 'sales'|
|`chat_service`|Integer|Number of chats marked as 'service'|
|`chat_other`|Integer|Number of chats marked as 'other'|
|`call_connect`|Integer|Number of calls connected|


### Examples:

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/chat_summary/USA_123456?start_date=2019-10-01&end_date=2020-02-25'
```

> Retrieve data for a specific master campaign id

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/chat_summary/USA_123456?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=USA_1' \
```

> Retrieve data for a specific range of dates grouped by calendar week

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/chat_summary/USA_123456?start_date=2019-10-01&end_date=2020-02-25&interval_size=calendar_week' \
```

> Retrieve data with all options together with results below

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/chat_summary/USA_123456?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=USA_1&interval_size=calendar_week' \
```

> Response Description

```javascript
{
    "api_name": "chat_summary",                                        // Name of the API
    "api_run_date": "2020-04-01",                                      // Date report was run
    "start_date": "2019-10-01",                                        // Start date of report
    "end_date": "2020-02-25",                                          // End date of report
    "time_zone": "America/Los_Angeles",                                // Time Zone
    "interval_size": "none",                                           // Interval Size ('none', 'day', 'calendar_week' or 'calendar_month')
    "currency": "USD",                                                 // Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD). returned in report
    "report_data": {                                                   // Report details
        "campaigns": [                                                 // All data for campaigns
            {
                "global_master_campaign_id": "USA_1",                  // Identifier for campaign
                "campaign_name": "Campaign_1",                         // Name of campaign
                "campaign_type": "search",                             // Type of campaign
                "campaign_status": "running",                          // Status of campaign
                "organization": "reachlocal",                          // Organization
                "campaign_start_date": "2019-01-11",                   // Start date of campaign
                "campaign_end_date": null,                             // End date of campaign
                "intervals": [                                         // Data for specified interval
                    {
                        "start_date": "2019-10-01",                    // Start date of interval
                        "non_lead_chats": 0,                           // Number of non-lead chats
                        "total_chats": 6,                              // Number of total chats
                        "chat_leads": 6,                               // Number of chat leads
                        "chat_sales": 0,                               // Number of chats marked as 'sales'
                        "chat_service": 0,                             // Number of chats marked as 'service'
                        "chat_other": 2,                               // Number of chats marked as 'other'
                        "call_connect": 0                              // Number of calls connected
                    }
                ]
            }
        ],
        "organic": {                                                   // All data for organic
            "intervals": [                                             // Data for specified interval
                {
                    "start_date": "2019-10-01",                        // Start date of interval
                    "non_lead_chats": 0,                               // Number of non-lead chats
                    "total_chats": 137,                                // Number of total chats
                    "chat_leads": 137,                                 // Number of chat leads
                    "chat_sales": 0,                                   // Number of chats marked as 'sales'
                    "chat_service": 0,                                 // Number of chats marked as 'service'
                    "chat_other": 1,                                   // Number of chats marked as 'other'
                    "call_connect": 0                                  // Number of calls connected
                }
            ]
        }
    },
    "global_master_advertiser_id": "USA_172716"                        // Global Master Advertiser ID
}
```
