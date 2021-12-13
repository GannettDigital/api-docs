### **LSA Campaign Metrics**
<a name="lsa_campaigns"></a>

### Resource Overview&nbsp;&nbsp;&nbsp;

| Method | URI Format |
|---|---|
| GET | /client_reports/google_local_service_ads/[gmaid]?[query_params] |

Use GET to retrieve the Local Service Ads Campaign Metrics report for a given advertiser.

The data returned will include rating_score, total_reviews, charged_leads, phone_calls and total_cost values organized by campaign.

### Parameters&nbsp;&nbsp;&nbsp;

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Function |
|---|---|---|
|start_date| Yes | Restricts the results to those ocurring on or after this date.|
|end_date| Yes | Restricts the results to those ocurring on or before this date.|

To specify a date range:

   - Specify start_date and end_date.

### Response Data Details&nbsp;&nbsp;&nbsp;


> Retrieve data for advertiser and date range

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/google_local_service_ads/TEST_1?start_date=2020-09-01&end_date=2020-09-02' \
```

> Example Response

```javascript
{
    "report_type": "google_local_service_ads",
    "report_date": "2020-09-10",
    "start_date": "2020-09-01",
    "end_date": "2020-09-02",
    "currency": "USD",
    "global_master_advertiser_id": "USA_5713",
    "advertiser_name": "My Service Company",
    "report_data": {
        "campaigns": [
            {
                "name": "My Service Co LSA HVAC",
                "global_master_campaign_id": "USA_77777777",
                "start_date": "2020-04-30",
                "end_date": "2020-06-04",
                "type": "lsa",
                "status": "ended",
                "goals": [],
                "weekly_budget": 461.0,
                "intervals": [
                    {
                        "start_date": "2020-09-01",
                        "rating_score": 4.8,
                        "total_reviews": 192,
                        "charged_leads": 0,
                        "phone_calls": 1,
                        "total_cost": 0.0
                    },
                    {
                        "start_date": "2020-09-02",
                        "rating_score": 4.8,
                        "total_reviews": 192,
                        "charged_leads": 2,
                        "phone_calls": 2,
                        "total_cost": 50.0
                    }
                ]
            },
            {
                "name": "My Service Co LSA Plumbing",
                "global_master_campaign_id": "USA_88888888",
                "start_date": "2020-04-30",
                "end_date": "2020-06-04",
                "type": "lsa",
                "status": "ended",
                "goals": [],
                "weekly_budget": 461.0,
                "intervals": [
                    {
                        "start_date": "2020-09-01",
                        "rating_score": 4.8,
                        "total_reviews": 192,
                        "charged_leads": 0,
                        "phone_calls": 1,
                        "total_cost": 0.0
                    },
                    {
                        "start_date": "2020-09-02",
                        "rating_score": 4.8,
                        "total_reviews": 192,
                        "charged_leads": 2,
                        "phone_calls": 2,
                        "total_cost": 50.0
                    }
                ]
            }
        ]
    }
}
```

|Field Name|Datatype|Description|
|---|---|---|
|api_name|String|Name of the API|
|api_run_date|String|Date report was run|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|currency|String|Currency Type of Monetary Values Returned in Report (Example: USD, AUD, CAD)|
|global_master_advertiser_id|String|Global Master Advertiser ID|
|advertiser_name|String|Name of the Advertiser|
|report_data|Object|Report details. [Report Data Object](#lsacampaignreportdata)|

<a name="lsacampaignreportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|campaigns|Object|Data for specified campaign. [Campaigns Object](#lsacampaigns)|

<a name="lsacampaigns"></a>
**Campaigns Object**

|Field Name|Datatype|Description|
|---|---|---|
|name|String|Name of campaign|
|global_master_campaign_id|String|Identifier for campaign|
|start_date|String|Start date of campaign|
|end_date|String|End date of campaign|
|type|String|Type of campaign|
|status|String|Status of campaign|
|goals|Object|[Goals Object](#lsa_goals)|
|weekly_budget|Decimal|Weekly Budget for the campaign|
|publisher_account_id|String|Identifier for the publisher account|
|intervals|Object|Data for specified interval. [Intervals Object](#lsaintervals)|

<a name="lsa_goals"></a>
**Goals Object**

| Field Name | Datatype | Description |
|---|---|---|
|goal_type_id|String|Identifier for campaign goal type|
|goal_type|String|Name(Type) of goal type|

<a name="lsaintervals"></a>
**Intervals Object**

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|Start date of interval|
|rating_score|Decimal|Rating Score|
|total_reviews|Integer|Number numebr of Review|
|charged_leads|Integer|Number of charged leads|
|chat_sales|Integer|Number of Phone Calls|
|total_cost|Decimal|Total Cost|

