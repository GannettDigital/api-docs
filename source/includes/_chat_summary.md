### **Chat Summary**
<a name="chat_summary"></a>

### Resource Overview


|Method|URI Format|
|---|---|
|GET|/client_reports/chat_summary/[gmaid]?[query_params]|

This API can be used by customers who have our chat widget on their site. The API has metrics on each chat along with traffic information (Paid Campaign/Organic).

Use GET to retrieve information from the Chat Summary API. Data can be returned for a GMAID by a specific date range determined by start date and end date.

Subtotals will be returned for each Master Campaign ID with chat activity in the specified date range.

Subtotals can be further aggregated given an interval, and will be totaled for day, calendar_week, or calendar_month. The first day of the interval will be used to denote the interval totals.

Use the master_campaign_id parameter to limit the results to a single Master Campaign ID.

<internal>Web_publisher_campaigns array will show the WPCS(offer name) with it's subtotatals attributed to that chat within a campaign (for only trusted users).</internal>

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Param|Required|Function|
|---|---|---|
|start_date|Yes|Restricts the results to those occurring on or after this date|
|end_date|Yes|Restricts the results to those occurring on or before this date|
|gmaid|Yes|Restrict results to the specified Global Master Advertiser ID|
|global_master_campaign_id[]|No|Restrict results to the specified master campaign id|
|interval_size|No|Return subtotals for the given intervals within the start-end time provided. Accepts calendar_month, calendar_week, or day|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/chat_summary/TEST_1?start_date=2019-10-01&end_date=2020-02-25'
```

> Retrieve data for a specific master campaign id

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/chat_summary/TEST_1?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=TEST_1' \
```

> Retrieve data for a specific range of dates grouped by calendar week

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/chat_summary/TEST_1?start_date=2019-10-01&end_date=2020-02-25&interval_size=calendar_week' \
```

> Retrieve data with all options together with results below

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/chat_summary/TEST_1?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=TEST_1&interval_size=calendar_week' \
```

> Example Response

```json
{
    "api_name": "chat_summary",
    "api_run_date": "2020-10-16",
    "start_date": "2020-10-10",
    "end_date": "2020-10-10",
    "time_zone": "America/Los_Angeles",
    "interval_size": "none",
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "global_master_campaign_id": "TEST_691177",
                "campaign_name": "Display Campaign (Demo)",
                "campaign_type": "display",
                "campaign_status": "running",
                "organization": "reachlocal",
                "campaign_start_date": "2020-01-01",
                "campaign_end_date": null,
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "non_lead_chats": 0,
                        "total_chats": 7,
                        "chat_leads": 7,
                        "chat_sales": 7,
                        "chat_service": 0,
                        "chat_other": 0,
                        "call_connect": 0
                    }
                ]
            },
            {
                "global_master_campaign_id": "TEST_691180",
                "campaign_name": "Search Campaign (Demo)",
                "campaign_type": "search",
                "campaign_status": "running",
                "organization": "reachlocal",
                "campaign_start_date": "2020-01-01",
                "campaign_end_date": null,
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "non_lead_chats": 0,
                        "total_chats": 10,
                        "chat_leads": 10,
                        "chat_sales": 10,
                        "chat_service": 0,
                        "chat_other": 0,
                        "call_connect": 0
                    }
                ]
            },
            {
                "global_master_campaign_id": "TEST_691183",
                "campaign_name": "Totaltrack Phone Campaign (Demo)",
                "campaign_type": "totaltrack_phone",
                "campaign_status": "running",
                "organization": "reachlocal",
                "campaign_start_date": "2020-01-01",
                "campaign_end_date": null,
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "non_lead_chats": 0,
                        "total_chats": 9,
                        "chat_leads": 9,
                        "chat_sales": 9,
                        "chat_service": 0,
                        "chat_other": 0,
                        "call_connect": 0
                    }
                ]
            },
            {
                "global_master_campaign_id": "TEST_691187",
                "campaign_name": "Totaltrack Web Phone Campaign (Demo)",
                "campaign_type": "totaltrack_web_phone",
                "campaign_status": "running",
                "organization": "reachlocal",
                "campaign_start_date": "2020-01-01",
                "campaign_end_date": null,
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "non_lead_chats": 0,
                        "total_chats": 5,
                        "chat_leads": 5,
                        "chat_sales": 5,
                        "chat_service": 0,
                        "chat_other": 0,
                        "call_connect": 0
                    }
                ]
            },
            {
                "global_master_campaign_id": "TEST_691190",
                "campaign_name": "Totaltrack Web Campaign (Demo)",
                "campaign_type": "totaltrack_web",
                "campaign_status": "running",
                "organization": "reachlocal",
                "campaign_start_date": "2020-01-01",
                "campaign_end_date": null,
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "non_lead_chats": 0,
                        "total_chats": 7,
                        "chat_leads": 7,
                        "chat_sales": 7,
                        "chat_service": 0,
                        "chat_other": 0,
                        "call_connect": 0
                    }
                ]
            },
            {
                "global_master_campaign_id": "TEST_691195",
                "campaign_name": "Other Campaign (Demo)",
                "campaign_type": "other",
                "campaign_status": "running",
                "organization": "reachlocal",
                "campaign_start_date": "2020-01-01",
                "campaign_end_date": null,
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "non_lead_chats": 0,
                        "total_chats": 6,
                        "chat_leads": 6,
                        "chat_sales": 6,
                        "chat_service": 0,
                        "chat_other": 0,
                        "call_connect": 0
                    }
                ]
            },
            {
                "global_master_campaign_id": "TEST_691205",
                "campaign_name": "Chat Campaign (Demo)",
                "campaign_type": "chat",
                "campaign_status": "running",
                "organization": "reachlocal",
                "campaign_start_date": "2020-01-01",
                "campaign_end_date": null,
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "non_lead_chats": 0,
                        "total_chats": 9,
                        "chat_leads": 9,
                        "chat_sales": 9,
                        "chat_service": 0,
                        "chat_other": 0,
                        "call_connect": 0
                    }
                ]
            },
            {
                "global_master_campaign_id": "TEST_691211",
                "campaign_name": "Facebook Campaign (Demo)",
                "campaign_type": "display",
                "campaign_status": "running",
                "organization": "reachlocal",
                "campaign_start_date": "2020-01-01",
                "campaign_end_date": null,
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "non_lead_chats": 0,
                        "total_chats": 8,
                        "chat_leads": 8,
                        "chat_sales": 8,
                        "chat_service": 0,
                        "chat_other": 0,
                        "call_connect": 0
                    }
                ]
            },
            {
                "global_master_campaign_id": "TEST_691217",
                "campaign_name": "Geofence Campaign (Demo)",
                "campaign_type": "display",
                "campaign_status": "running",
                "organization": "reachlocal",
                "campaign_start_date": "2020-01-01",
                "campaign_end_date": null,
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "non_lead_chats": 0,
                        "total_chats": 6,
                        "chat_leads": 6,
                        "chat_sales": 6,
                        "chat_service": 0,
                        "chat_other": 0,
                        "call_connect": 0
                    }
                ]
            },
            {
                "global_master_campaign_id": "TEST_691223",
                "campaign_name": "Youtube Campaign (Demo)",
                "campaign_type": "display",
                "campaign_status": "running",
                "organization": "reachlocal",
                "campaign_start_date": "2020-01-01",
                "campaign_end_date": null,
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "non_lead_chats": 0,
                        "total_chats": 8,
                        "chat_leads": 8,
                        "chat_sales": 8,
                        "chat_service": 0,
                        "chat_other": 0,
                        "call_connect": 0
                    }
                ]
            },
            {
                "global_master_campaign_id": "TEST_691233",
                "campaign_name": "Xmedia Campaign (Demo)",
                "campaign_type": "xmedia",
                "campaign_status": "running",
                "organization": "reachlocal",
                "campaign_start_date": "2020-01-01",
                "campaign_end_date": null,
                "intervals": [
                    {
                        "start_date": "2020-10-10",
                        "non_lead_chats": 0,
                        "total_chats": 5,
                        "chat_leads": 5,
                        "chat_sales": 5,
                        "chat_service": 0,
                        "chat_other": 0,
                        "call_connect": 0
                    }
                ]
            }
        ],
        "organic": {
            "intervals": [
                {
                    "start_date": "2020-10-10",
                    "non_lead_chats": 0,
                    "total_chats": 0,
                    "chat_leads": 0,
                    "chat_sales": 0,
                    "chat_service": 0,
                    "chat_other": 0,
                    "call_connect": 0
                }
            ]
        }
    },
    "global_master_advertiser_id": "TEST_1"
}
```

<internal>
# Example Response
```javascript
{
    "api_name": "chat_summary",
    "api_run_date": "2020-03-18",
    "start_date": "2020-02-14",
    "end_date": "2020-02-29",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "global_master_campaign_id": "USA_1777858",
                "campaign_name": "Orange Paper CHAT",
                "campaign_type": "chat",
                "campaign_status": "ended",
                "organization": "reachlocal",
                "campaign_start_date": "2017-04-07",
                "campaign_end_date": "2019-01-03",
                "intervals": [
                    {
                        "start_date": "2020-02-19",
                        "non_lead_chats": 0,
                        "total_chats": 1,
                        "chat_leads": 1,
                        "chat_sales": 0,
                        "chat_service": 0,
                        "chat_other": 1,
                        "call_connect": 0
                    }
                ]
            },
            {
                "global_master_campaign_id": "USA_2705608",
                "campaign_name": "Orange Paper TEST DO NOT DELETE - ALVIN",
                "campaign_type": "search",
                "campaign_status": "running",
                "organization": "reachlocal",
                "campaign_start_date": "2019-01-11",
                "campaign_end_date": null,
                "intervals": [
                    {
                        "start_date": "2020-02-14",
                        "non_lead_chats": 0,
                        "total_chats": 1,
                        "chat_leads": 1,
                        "chat_sales": 1,
                        "chat_service": 0,
                        "chat_other": 0,
                        "call_connect": 0
                    },
                    {
                        "start_date": "2020-02-25",
                        "non_lead_chats": 0,
                        "total_chats": 1,
                        "chat_leads": 1,
                        "chat_sales": 0,
                        "chat_service": 0,
                        "chat_other": 1,
                        "call_connect": 0
                    }
                ],
                "web_publisher_campaigns": [
                    {
                        "web_publisher_campaign_id": "USA_2808669",
                        "name": "Google DMA",
                        "tactic": "Google",
                        "start_date": "2020-10-02",
                        "end_date": null,
                        "external_account_id": 1990521940,
                        "external_account_name": "google_B1_A136048_1@reachlocal.biz",
                        "channel": "search",
                        "intervals": [
                            {
                                "start_date": "2020-09-02",
                                "non_lead_chats": 0,
                                "total_chats": 1,
                                "chat_leads": 1,
                                "chat_sales": 1,
                                "chat_service": 0,
                                "chat_other": 0,
                                "call_connect": 0
                            },
                            {
                                "start_date": "2020-09-04",
                                "non_lead_chats": 0,
                                "total_chats": 1,
                                "chat_leads": 1,
                                "chat_sales": 1,
                                "chat_service": 0,
                                "chat_other": 0,
                                "call_connect": 0
                            },
                            {
                                "start_date": "2020-09-06",
                                "non_lead_chats": 0,
                                "total_chats": 1,
                                "chat_leads": 1,
                                "chat_sales": 1,
                                "chat_service": 0,
                                "chat_other": 0,
                                "call_connect": 0
                            },
                            {
                                "start_date": "2020-09-08",
                                "non_lead_chats": 0,
                                "total_chats": 2,
                                "chat_leads": 2,
                                "chat_sales": 1,
                                "chat_service": 1,
                                "chat_other": 0,
                                "call_connect": 0
                            },
                            {
                                "start_date": "2020-09-09",
                                "non_lead_chats": 0,
                                "total_chats": 1,
                                "chat_leads": 1,
                                "chat_sales": 1,
                                "chat_service": 0,
                                "chat_other": 0,
                                "call_connect": 0
                            }
                        ]
                    }
                ]
            }
        ],
        "organic": {
            "intervals": [
                {
                    "start_date": "2020-02-14",
                    "non_lead_chats": 0,
                    "total_chats": 2,
                    "chat_leads": 2,
                    "chat_sales": 2,
                    "chat_service": 0,
                    "chat_other": 0,
                    "call_connect": 0
                },
                {
                    "start_date": "2020-02-24",
                    "non_lead_chats": 0,
                    "total_chats": 3,
                    "chat_leads": 3,
                    "chat_sales": 2,
                    "chat_service": 0,
                    "chat_other": 0,
                    "call_connect": 0
                }
            ]
        }
    },
    "global_master_advertiser_id": "USA_172716"
}
```
</internal>


|Field Name|Datatype|Description|
|---|---|---|
|api_name|String|Name of the API|
|api_run_date|String|Date report was run|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|time_zone|String|Time Zone|
|interval_size|String|Interval Size ('none', 'day', 'calendar_week' or 'calendar_month')|
|currency|String|Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD)|
|report_data|Object|Report details. [Report Data Object](#chatreportdata)|
|global_master_advertiser_id|String|Global Master Advertiser ID|

<a name="chatreportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|campaigns|Object|Data for specified campaign. [Campaigns Object](#chatcampaigns)|
|organic|Object|Data for organic. [Organic Object](#chatorganic)|

<a name="chatcampaigns"></a>
**Campaigns Object**

|Field Name|Datatype|Description|
|---|---|---|
|global_master_campaign_id|String|Identifier for campaign|
|campaign_name|String|Name of campaign|
|campaign_type|String|Type of campaign|
|campaign_status|String|Status of campaign|
|organization|String|Organization|
|campaign_start_date|String|Start date of campaign|
|campaign_end_date|String|End date of campaign|
|intervals|Object|Data for specified interval. [Intervals Object](#chatintervals)|
|<internal>web_publisher_campaigns|Array|array of web_publisher_campaign objects [Web Publisher Campaign Object](#webpublishercampaign)</internal>|

<a name="chatorganic"></a>
**Organic Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#chatintervals)|

<a name="chatintervals"></a>
**Intervals Object**

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|Start date of interval|
|non_lead_chats|Integer|Number of non-lead chats|
|total_chats|Integer|Number of total chats|
|chat_leads|Integer|Number of chat leads|
|chat_sales|Integer|Number of chats marked as 'sales'|
|chat_service|Integer|Number of chats marked as 'service'|
|chat_other|Integer|Number of chats marked as 'other'|
|call_connect|Integer|Number of calls connected|

<internal>
<a name="webpublishercampaign"></a>
**Web Publisher Campaign Object**
</internal>

|<internal>Field Name|Datatype|Description</internal>|
|---|---|---|
|web_publisher_campaign_id|Integer|Id of web publisher campaign|
|name|String|Name of web publisher campaign|
|tactic|String|Tactic of web publisher campaign|
|start_date|String|Start date of web publisher campaign|
|end_date|String|End date of web publisher campaign|
|external_account_id|String|External account id|
|external_account_name|String|Name of external account|
|channel|String|Channel of the web publisher campaign|
|intervals|Array|Data for specified interval. [Intervals Object](#chatintervals)|
