### **Campaign Optimization**

#### Resource Overview&nbsp;

|Method|URI Format|
|---|---|
|GET|/client_reports/campaign_optimization/[gmaid]?[query_params]|

Campaign Optimization Monitoring, giving clients the ability to track campaign optimizations, ie: the number tweaks/optimizations to a campaign
#### Parameters&nbsp;

When using the GET method, the results can be filtered using these parameters:

|Parameter|Required|Description|
|---|---|---|
|start_date|Yes|Restricts the results to those occurring on or after this date|
|end_date|Yes|Restricts the results to those occurring on or before this date|
|global_master_campaign_id[]|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=TEST_1,TEST_2|
|campaign_status[]|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended. This should be a comma separated string. Ex: campaign_status[]=running,stopped|

#### Response Data Details&nbsp;

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/video_activity/TEST_1?start_date=2021-12-15&end_date=2022-01-15
```

> Example Response

```json
{
    "report_type": "campaign_optimization",
    "report_date": "2022-01-27",
    "start_date": "2022-01-03",
    "end_date": "2022-01-16",
    "time_zone": "America/Los_Angeles",
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "name": "GCI0732132141-01_Audience_Auto",
                "global_master_campaign_id": "TEST_1001",
                "type": "gannett",
                "status": "running",
                "metrics": {
                    "bid_updates": 123123,
                    "budget_updates": 32322,
                    "ad_updates": 21323,
                    "keyword_updates": 1232,
                    "keyword_deletes": 123,
                    "manual_adjustments": 32,
                    "automatic_adjustments": 23
                },
            },
        ],
        "totals": {
            "bid_updates": 123123,
            "budget_updates": 32322,
            "ad_updates": 21323,
            "keyword_updates": 1232,
            "keyword_deletes": 123,
            "manual_adjustments": 32,
            "automatic_adjustments": 23
        }
    },
    "global_master_advertiser_id": "TEST_1"
}
```

|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the API|
|report_date|String|Date report was run|
|start_date|String|Start Date|
|end_date|String|End Date|
|global_master_advertiser_id|String|Identifier for Advertiser|
|report_data|Object|[Report Data Object (with Campaigns)](#vacampaignsreportdata)|

<a name="campaign_optimization_data"></a>
**Optimization Data Object (with Campaigns)**

|Field Name|Datatype|Description|
|---|---|---|---|
|totals|Object|Object of totals details. [Totals Object](#vatotals)|
|campaigns|Object|Object of campaigns details. [Campaigns Object](#vacampaigns)|

<a name="vatotals"></a>
**Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|bid_updates|Integer|Total Bid updates|
|budget_updates|Integer|Total Budget updates|
|ad_updates|Integer|Total Ad updates|
|keyword_updates|Integer|Total Keyword updates|
|keyword_deletes|Integer|Total Keyword deletes|
|manual_adjustments|Integer|Total Manual Adjustments|
|automated_adjustments|Integer|Total Automated Adjustments|

<a name="vacampaigns"></a>
**Campaigns Object**

|Field Name|Datatype|Description|
|---|---|---|
|name|String|Campaign Name|
|global_master_campaign_id|String|Unique Identifier for Campaign|
|start_date|String|Campaign Start Date|
|end_date|String|Campaign End Date<br>**The field is nullable**|
|type|String|Type of Campaign|
|status|String|Status of Campaign|
|metrics|Object|Object of metrics details. [Campaign Optimizatiom Metrics Object](#campaignmetrics)|

<a name="campaignmetrics"></a>
**Campaign Optimization metrics Object**

|Field Name|Datatype|Description|
|---|---|---|
|bid_updates|Integer|Bid updates|
|budget_updates|Integer|Budget updates|
|ad_updates|Integer|Ad updates|
|keyword_updates|Integer|Keyword updates|
|keyword_deletes|Integer|Keyword deletes|
|manual_adjustments|Integer|Manual Adjustments|
|automated_adjustments|Integer|Automated Adjustments|