### **LSA Campaign Metrics Rollup**
<a name="lsa_campaign_rollup"></a>

### Resource Overview&nbsp;

| Method | URI Format |
|---|---|
| GET | /leads/lsa_events/campaign_rollup?[query_params] |

Use GET to retrieve Local Service Ads metrics rolled up by camapgin for a given advertiser.

### Parameters&nbsp;

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Function |
|---|---|---|
|global_master_advertiser_id| Yes | Only leads for the specified advertiser will be returned.|
|start_date| Yes | Restricts the results to those ocurring on or after this date.|
|end_date| Yes | Restricts the results to those ocurring on or before this date.|

To specify a date range:

   - Specify start_date and end_date.

### Response Data Details&nbsp;

> Retrieve data for advertiser and date range

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/leads/lsa_events/campaign_rollup?start_date=2020-09-27&end_date=2020-09-28&global_master_advertiser_id=TEST_123' \

```

> Example Response

```javascript
{
    "global_master_advertiser_id": "TEST_123",
    "start_date": "2020-09-01",
    "end_date": "2020-09-31",
    "campaigns": [
        {
            "global_master_campaign_id": "TEST_1230",
            "campaign_name": "GCI | LSA | Bedrock HVAC",
            "campaign_type": "lsa",
            "lead_counts": [
                {
                    "lead_type": "MESSAGE",
                    "charged_lead_count": 0,
                    "not_charged_lead_count": 4,
                    "total_lead_count": 4,
                    "total_lead_price": 0.0
                },
                {
                    "lead_type": "PHONE_CALL",
                    "charged_lead_count": 91,
                    "not_charged_lead_count": 8,
                    "total_lead_count": 99,
                    "total_lead_price": 2275.0
                }
            ]
        },
        {
            "global_master_campaign_id": "TEST_1231",
            "campaign_name": "GCI | LSA | Bedrock Plumbing",
            "campaign_type": "lsa",
            "lead_counts": [
                {
                    "lead_type": "MESSAGE",
                    "charged_lead_count": 0,
                    "not_charged_lead_count": 3,
                    "total_lead_count": 3,
                    "total_lead_price": 0.0
                },
                {
                    "lead_type": "PHONE_CALL",
                    "charged_lead_count": 159,
                    "not_charged_lead_count": 7,
                    "total_lead_count": 166,
                    "total_lead_price": 3975.0
                }
            ]
        },
        {
            "global_master_campaign_id": "TEST_1233",
            "campaign_name": "GCI | LSA | Bedrock Electrical",
            "campaign_type": "lsa",
            "lead_counts": [
                {
                    "lead_type": "MESSAGE",
                    "charged_lead_count": 0,
                    "not_charged_lead_count": 3,
                    "total_lead_count": 3,
                    "total_lead_price": 0.0
                },
                {
                    "lead_type": "PHONE_CALL",
                    "charged_lead_count": 72,
                    "not_charged_lead_count": 4,
                    "total_lead_count": 76,
                    "total_lead_price": 1080.0
                }
            ]
        }
    ]
}
```


|Field Name|Datatype|Description|
|---|---|---|
|global_master_advertiser_id|String|Global Master Advertiser ID|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|campaigns|Object|Campaign details. [Campaign Detail Object](#lsacampaigndata)|


<a name="lsacampaigndata"></a>
**Campaign Detail Object**

|Field Name|Datatype|Description|
|---|---|---|
|global_master_campaign_id|String|ID Of campaign|
|campaign_name|String|The name of the campaign|
|campaign_type|String|The type of campaign|
|lead_counts|Object|Metrics for each lead type. [Lead Type Detail Object](#lsaleadtypemetrics)|

<a name="lsaleadtypemetrics"></a>
**Lead Type Metrics**

|Field Name|Datatype|Description|
|---|---|---|
|lead_type|String|The type of lead|
|charged_lead_count|Integer|The number of leads of this type for this campaign that were charged|
|not_charged_lead_count|Integer|The number of leads of this type for this campaign that were not charged|
|total_lead_count|Integer|The total number of leads of this type for this campaign|
|total_lead_price|Integer|The price for the charged leads|
