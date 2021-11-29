### **Marketing Activity**
<a name="marketing_activity"></a>

### Resource Overview

|Method|URI Format|
|---|---|
|GET|/client_reports/marketing_activity/[gmaid]?[query_params]|

Use GET to retrieve information from the Marketing activity API. Data can be returned for a GMAID by a specific date range determined by start date and end date.

Subtotals can be further aggregated given an interval, and will be totaled for day, calendar_week, or calendar_month. The first day of the interval will be used to denote the interval totals.

Use the master_campaign_id parameter to limit the results to a single Master Campaign ID.

<internal>Web_publisher_campaigns array will show the WPCS(offer name) with it's subtotals attributed to that chat within a campaign (for only trusted users).</internal>

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Param|Required|Function|
|---|---|---|
|start_date|Yes|Restricts the results to those occurring on or after this date|
|end_date|Yes|Restricts the results to those occurring on or before this date|
|gmaid|Yes|Restrict results to the specified Global Master Advertiser ID|
|global_master_campaign_id[]|No|Restrict results to the specified master campaign id|
|interval_size|No|Return subtotals for the given intervals within the start-end time provided. Accepts calendar_month, calendar_week, or day (Default is day)|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/marketing_activity/TEST_1?start_date=2019-10-01&end_date=2020-02-25'
```

> Retrieve data for a specific master campaign id

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/marketing_activity/TEST_1?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=TEST_1' \
```

> Retrieve data for a specific range of dates grouped by calendar week

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/marketing_activity/TEST_1?start_date=2019-10-01&end_date=2020-02-25&interval_size=calendar_week' \
```

> Retrieve data with all options together with results below

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/marketing_activity/TEST_1?start_date=2019-10-01&end_date=2020-02-25&global_master_campaign_id[]=TEST_1&interval_size=calendar_week' \
```

> Example Response

```json
{
    "api_name": "marketing_activity",
    "api_run_date": "2021-10-25",
    "start_date": "2021-05-22",
    "end_date": "2021-05-25",
    "time_zone": "America/Los_Angeles",
    "interval_size": "day",
    "report_data": {
        "campaigns": [
            {
                "global_master_campaign_id": "USA_3212412",
                "campaign_name": "SK | Slipknot Group | Heavy Metal",
                "campaign_type": "search",
                "organization": "reachlocal",
                "offer_id": 2101,
                "source": "XMO",
                "campaign_start_date": "2021-05-24",
                "campaign_end_date": "2021-06-24",
                "intervals": [
                    {
                        "start_date": "2021-05-24",
                        "visits": 6,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0,
                        "channels": {
                            "search": {
                                "visits": 5,
                                "chats": 0,
                                "calls": 0,
                                "forms": 0
                            },
                            "social": {
                              "visits": 1,
                              "chats": 0,
                              "calls": 0,
                              "forms": 0
                            }
                        }
                    }
                ],
                 "totals": {
                "total_visits": 12,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
            }
        ],
        "search": {
            "intervals": [
                {
                    "start_date": "2021-05-22",
                    "visits": 0,
                    "chats": 1,
                    "calls": 0,
                    "forms": 1
                }
            ],
             "totals": {
                "total_visits": 0,
                "total_calls": 0,
                "total_chats": 1,
                "total_forms": 1
            }
        },
        "social": {
            "intervals": [],
             "totals": {
                "total_visits": 0,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
        },
        "direct": {
            "intervals": [
                {
                    "start_date": "2021-05-22",
                    "visits": 28,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-23",
                    "visits": 9,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-24",
                    "visits": 16,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                }
            ],
             "totals": {
                "total_visits": 53,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
        },
        "directory": {
            "intervals": [],
             "totals": {
                "total_visits": 0,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
        },
        "marketplace": {
            "intervals": [],
             "totals": {
                "total_visits": 0,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
        },
        "other": {
            "intervals": [],
             "totals": {
                "total_visits": 0,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
        },
        "otherpaid": {
            "intervals": [],
             "totals": {
                "total_visits": 0,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
        },
        "totals": {
            "total_visits": 79,
            "total_calls": 0,
            "total_chats": 1,
            "total_forms": 0
        }
    },
    "global_master_advertiser_id": "USA_136048"
}
```


<internal>Example Response</internal>

```json
{
    "api_name": "marketing_activity",
    "api_run_date": "2021-10-25",
    "start_date": "2021-05-22",
    "end_date": "2021-05-25",
    "time_zone": "America/Los_Angeles",
    "interval_size": "calendar_week",
    "report_data": {
        "campaigns": [
            {
                "global_master_campaign_id": "USA_77777777",
                "campaign_name": "FC | Real Madrid | Football Club",
                "campaign_type": "search",
                "organization": "reachlocal",
                "offer_id": 2101,
                "source": "XMO",
                "campaign_start_date": "2021-05-24",
                "campaign_end_date": "2021-06-24",
                "intervals": [
                    {
                        "start_date": "2021-05-24",
                        "visits": 6,
                        "chats": 0,
                        "calls": 0,
                        "forms": 0
                    }
                ],
                 "totals": {
                "total_visits": 6,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
            }
        ],
        "search": {
            "intervals": [
                {
                    "start_date": "2021-05-17",
                    "visits": 0,
                    "chats": 1,
                    "calls": 0,
                    "forms": 1
                }
            ],
             "totals": {
                "total_visits": 0,
                "total_calls": 0,
                "total_chats": 1,
                "total_forms": 1
            }
        },
        "social": {
            "intervals": [],
             "totals": {
                "total_visits": 0,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
        },
        "direct": {
            "intervals": [
                {
                    "start_date": "2021-05-17",
                    "visits": 37,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                },
                {
                    "start_date": "2021-05-24",
                    "visits": 16,
                    "chats": 0,
                    "calls": 0,
                    "forms": 0
                }
            ],
             "totals": {
                "total_visits": 53,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
        },
        "directory": {
            "intervals": [],
             "totals": {
                "total_visits": 0,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
        },
        "marketplace": {
            "intervals": [],
             "totals": {
                "total_visits": 0,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
        },
        "other": {
            "intervals": [],
             "totals": {
                "total_visits": 0,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
        },
        "otherpaid": {
            "intervals": [],
             "totals": {
                "total_visits": 0,
                "total_calls": 0,
                "total_chats": 0,
                "total_forms": 0
            }
        },
        "totals": {
            "total_visits": 79,
            "total_calls": 0,
            "total_chats": 1,
            "total_forms": 0
        }
    },
    "global_master_advertiser_id": "USA_16556777"
}
```


|Field Name|Datatype|Description|
|---|---|---|
|api_name|String|Name of the API|
|api_run_date|String|Date report was run|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|time_zone|String|Time Zone|
|interval_size|String|Interval Size ('none', 'day', 'calendar_week' or 'calendar_month')|
|report_data|Object|Report details. [Report Data Object](#marketingactivityreportdata)|
|global_master_advertiser_id|String|Global Master Advertiser ID|

<a name="marketingactivityreportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|campaigns|Object|chat counts for chats attributed to paid campaigns. [Campaigns Object](#marketingactivitycampaigns)|
|search|Object|chat, visit, call, form counts attributed to organic sources (Organic search) [Search Object](#marketingactivitysearch)|
|social|Object|chat, visit, call, form counts attributed to organic sources (Organic social) [Social Object](#marketingactivitysocial)|
|direct|Object|chat, visit, call, form counts attributed to organic sources (Organic direct) [Direct Object](#marketingactivitydirect)|
|directory|Object|chat, visit, call, form counts attributed to organic sources (Organic directory) [Directory Object](#marketingactivitydirectory)|
|marketplace|Object|chat, visit, call, form counts attributed to marketplace sources (Marketplace) [Marketplace Object](#marketingactivitymarketplace)|
|other|Object|chat, visit, call, form counts attributed to organic sources (Other) [Other Object](#marketingactivityother)|
|otherpaid|Object|chat, visit, call, form counts attributed to organic sources (Other paid) [Otherpaid Object](#marketingactivityotherpaid)|
|totals|Object|Totals of vists, cals, chats and forms for each type [Totals Object](#marketingactivitytotals)|


<a name="chatcampaigns"></a>
**Campaigns Object**

|Field Name|Datatype|Description|
|---|---|---|
|global_master_campaign_id|String|Identifier for campaign|
|campaign_name|String|Name of campaign|
|campaign_type|String|Type of campaign|
|campaign_status|String|Status of campaign|
|organization|String|Organization|
|offer_id|String|Offer id of the campaign|
|source|String|Source of the campaign|
|campaign_start_date|String|Start date of campaign|
|campaign_end_date|String|End date of campaign|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|
|totals|Object|Totals of vists, cals, chats and forms for each type [Totals Object](#marketingactivitytotals)|

<a name="marketingactivitysearch"></a>
**Search Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|
|totals|Object|Totals of vists, cals, chats and forms for each type [Totals Object](#marketingactivitytotals)|

<a name="marketingactivitysocial"></a>
**Social Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|
|totals|Object|Totals of vists, cals, chats and forms for each type [Totals Object](#marketingactivitytotals)|

<a name="marketingactivitydirect"></a>
**Direct Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|
|totals|Object|Totals of vists, cals, chats and forms for each type [Totals Object](#marketingactivitytotals)|

<a name="marketingactivitydirectory"></a>
**Directory Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|
|totals|Object|Totals of vists, cals, chats and forms for each type [Totals Object](#marketingactivitytotals)|

<a name="marketingactivitymarketplace"></a>
**Marketplace Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|
|totals|Object|Totals of vists, cals, chats and forms for each type [Totals Object](#marketingactivitytotals)|

<a name="marketingactivityother"></a>
**Other Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|
|totals|Object|Totals of vists, cals, chats and forms for each type [Totals Object](#marketingactivitytotals)|

<a name="marketingactivityotherpaid"></a>
**Otherpaid Object**

|Field Name|Datatype|Description|
|---|---|---|
|intervals|Object|Data for specified interval. [Intervals Object](#marketingactivityintervals)|
|totals|Object|Totals of vists, cals, chats and forms for each type [Totals Object](#marketingactivitytotals)|

<a name="marketingactivityintervals"></a>
**Intervals Object**

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|Start date of interval|
|visits|Integer|Number of total visits|
|chats|Integer|Number of total chat|
|calls|Integer|Number of total calls|
|forms|Integer|Number of total forms and emails|

<a name="marketingactivitytotals"></a>
**Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|total_visits|Integer|Number of total visits|
|total_calls|Integer|Number of total calls|
|total_chats|Integer|Number of total chats|
|total_forms|Integer|Number of total forms|
