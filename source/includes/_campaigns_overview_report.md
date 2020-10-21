### **Campaigns Overview**
<a name="campaigns_overview"></a>

### Resource Overview&nbsp;

| Method | URI Format |
|---|---|
| GET | /client_reports/campaigns_overview/[gmaid]|

**Usage**

Use GET to retrieve information for the Campaigns Overview report.

The data returned will include campaign performance metrics for the last 30 days and a campaign list with additional details and breakdowns per cycle.  Campaign are limited to those that have had activity within the previous year.  This means that a campaign that ended 13 months prior will not be included in the campaign list section.

The performance metrics for the last 30 days are across all running campaigns and will include:

- Total Impressions
- Total Clicks
- Total Calls
- Total Emails
- Total Web Events
- Total Chat Events

The campaign list section will list all (running, stopped and ended) campaigns with the following information for each campaign in the list:

- Campaign Name
- Campaign ID (global_master_campaign_id)
- Campaign Type
- Source
- Currency
- Start Date
- End Date
- Status
- A List of Cycles with:
  - Cycle ID
  - Start Date
  - End Date
  - Number of Impressions
  - Number of Clicks
  - Number of Leads
  - Spend
  - Budget Amount

All campaign data for the account will be provided including both Paid Media and Offer-based campaigns.

- Paid Media campaigns will include the associated `campaign_type`. Paid Media campaigns include:
  - Chat
  - Search
  - Display
  - TotalTrack
  - Facebook
  - YouTube
  - CVT/Web Events
- Offer-based campaigns include any campaign that is not Paid Media and will have a `campaign_type` of `other`. Examples of offer-based campaigns could be a Website or Client Center Organic Tracking campaign.

### Parameters&nbsp;

None

| <internal> Param | Optional | Function </internal> |
|---|---|---|
|start_date| Yes | Restricts the results to those ocurring on or after this date|
|markup_type| Yes |  Only supported value is 'percentage' |
|markup_value| Yes | "cost" fields (spend & budget) will be marked up by this pecentage |


### Response Data Details&nbsp;

> The following command returns an example JSON structure:

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.reachlocalservices.com/client_reports/campaigns_overview/TEST_1"
```
> Example Response

```json
{
    "report_type": "campaigns_overview",
    "report_date": "2020-10-12",
    "start_date": "2019-10-12",
    "end_date": "2020-10-12",
    "time_zone": "America/Los_Angeles",
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "name": "Lsa Campaign (Demo)",
                "global_master_campaign_id": "TEST_207095",
                "type": "lsa",
                "source": "Local Services Ads",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_207102",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 0,
                        "clicks": 0,
                        "leads": 0,
                        "spend": 75.0,
                        "budget": 500.0
                    }
                ]
            },
            {
                "name": "Xmedia Campaign (Demo)",
                "global_master_campaign_id": "TEST_207085",
                "type": "xmedia",
                "source": "Omnichannel - Smart",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_207086",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 3568,
                        "clicks": 56,
                        "leads": 83,
                        "spend": 75.0,
                        "budget": 500.0
                    }
                ]
            },
            {
                "name": "Youtube Campaign (Demo)",
                "global_master_campaign_id": "TEST_207082",
                "type": "youtube",
                "source": "YouTube Advertising",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_207083",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 3437,
                        "clicks": 41,
                        "leads": 85,
                        "spend": 75.0,
                        "budget": 500.0
                    }
                ]
            },
            {
                "name": "Geofence Campaign (Demo)",
                "global_master_campaign_id": "TEST_207079",
                "type": "display",
                "source": "ReachDisplay GeoFence",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_207080",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 3988,
                        "clicks": 37,
                        "leads": 91,
                        "spend": 75.0,
                        "budget": 500.0
                    }
                ]
            },
            {
                "name": "Facebook Campaign (Demo)",
                "global_master_campaign_id": "TEST_207073",
                "type": "facebook",
                "source": "Facebook",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_207074",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 3869,
                        "clicks": 49,
                        "leads": 87,
                        "spend": 75.0,
                        "budget": 500.0
                    }
                ]
            },
            {
                "name": "Chat Campaign (Demo)",
                "global_master_campaign_id": "TEST_207070",
                "type": "chat",
                "source": "Live Chat",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_207071",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 3805,
                        "clicks": 52,
                        "leads": 94,
                        "spend": 75.0,
                        "budget": 500.0
                    }
                ]
            },
            {
                "name": "Other Campaign (Demo)",
                "global_master_campaign_id": "TEST_207067",
                "type": "other",
                "source": "Organic Traffic",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_207068",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 4027,
                        "clicks": 39,
                        "leads": 99,
                        "spend": 75.0,
                        "budget": 500.0
                    }
                ]
            },
            {
                "name": "Totaltrack Web Campaign (Demo)",
                "global_master_campaign_id": "TEST_207064",
                "type": "totaltrack",
                "source": "Campaign Tracking Only (TotalTrack)",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_207065",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 3693,
                        "clicks": 52,
                        "leads": 91,
                        "spend": 75.0,
                        "budget": 500.0
                    }
                ]
            },
            {
                "name": "Totaltrack Web Phone Campaign (Demo)",
                "global_master_campaign_id": "TEST_207061",
                "type": "totaltrack",
                "source": "Campaign Tracking Only (TotalTrack)",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_207062",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 3641,
                        "clicks": 44,
                        "leads": 94,
                        "spend": 75.0,
                        "budget": 500.0
                    }
                ]
            },
            {
                "name": "Totaltrack Phone Campaign (Demo)",
                "global_master_campaign_id": "TEST_207058",
                "type": "totaltrack",
                "source": "Campaign Tracking Only (TotalTrack)",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_207059",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 3548,
                        "clicks": 46,
                        "leads": 93,
                        "spend": 75.0,
                        "budget": 500.0
                    }
                ]
            },
            {
                "name": "Search Campaign (Demo)",
                "global_master_campaign_id": "TEST_207054",
                "type": "search",
                "source": "Search Engine Marketing",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_207055",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 3695,
                        "clicks": 41,
                        "leads": 95,
                        "spend": 75.0,
                        "budget": 500.0
                    }
                ]
            },
            {
                "name": "Display Campaign (Demo)",
                "global_master_campaign_id": "TEST_207051",
                "type": "display",
                "source": "Targeted Display",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_207052",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 3915,
                        "clicks": 45,
                        "leads": 97,
                        "spend": 75.0,
                        "budget": 500.0
                    }
                ]
            },
            {
                "name": "Gannett Display Campaign (Demo)",
                "global_master_campaign_id": "TEST_-207076",
                "type": "gannett_display",
                "source": "Gannett Display",
                "start_date": "2020-10-10",
                "end_date": null,
                "status": "running",
                "cycles": [
                    {
                        "campaign_cycle": "TEST_-207077",
                        "start_date": "2020-10-10",
                        "end_date": null,
                        "impressions": 3704,
                        "clicks": 52,
                        "leads": null,
                        "spend": 0.0,
                        "budget": 0.0
                    }
                ]
            }
        ],
        "totals": {
            "calls": 250,
            "chats": 252,
            "clicks": 554,
            "emails": 251,
            "web_events": 256,
            "impressions": 44890
        }
    },
    "global_master_advertiser_id": "TEST_1",
    "location": "https://api.reachlocalservices.com/client_reports/campaigns_overview/TEST_1"
}
```

| Field Name | Datatype | Description |
|------------------------------------------|---|---|
|report_type|String|Type of report|
|report_date|String|Date report ran|
|start_date|String|Start Date|
|end_date|String|End Date|
|time_zone|String|Time Zone of Data|
|currency|String|Currency of report|
|report_data|Object|Report details object containing Totals object and Campaigns array. [Report Data Object](#campaignreportdata)|
|global_master_advertiser_id|String|Identifier for advertiser|
|location|String|Location URL|

<a name="campaignreportdata"></a>
#### Report Data Object

| Field Name | Datatype | Description |
|---|---|---|
|totals|Object|Object of totals details. [Totals Object](#campaigntotals)|
|campaigns|Array|Array of campaigns with campaign details. [Campaigns Object](#campaignsdetails)|

<a name="campaigntotals"></a>
#### Totals Object (Running campaign performance totals for the last 30 days )

| Field Name | Datatype | Description |
|---|---|---|
|impressions|Integer|Total impressions|
|clicks|Integer|Total click events|
|calls|Integer|Total call events|
|emails|Integer|Total email events|
|web_events|Integer|Total web events|
|chats|Integer|Total chat events|

<a name="campaignsdetails"></a>
#### Campaigns Object

| Field Name | Datatype | Description |
|---|---|---|
|name|String|Campaign name|
|global_master_campaign_id|String|Identifier for campaign|
|type|String|Type of campaign|
|source|String|Source of campaign|
|currency|String|Type of currency used|
|start_date|String|Start date for campaign|
|end_date|String|End date for campaign|
|status|String|campaign status|
|cycles|Object|Data for cycles. [Cycles Object](#campaignscycles)|

<a name="campaignscycles"></a>
#### Cycles Object

| Field Name | Datatype | Description |
|---|---|---|
|campaign_cycle|String|Identifier for cycle|
|start_date|String|Start date for cycle|
|end_date|String|End date for cycle|
|impressions|Integer|Total Impressions for cycle|
|clicks|Integer|Total Clicks for cycle|
|leads|Integer|Total Leads for cycle|
|spend|Integer|Total Spend/Cost of cycle|
|budget|Integer|Total Budget of cycle|

