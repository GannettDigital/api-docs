### **Yelp Ad Metrics**
<a name="yelp_ad_metrics"></a>

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/yelp_ad_metrics/[gmaid]?[query_params] |

Use GET to retrieve yelp_ad_metrics performance metrics. 

The data returned will include ad_driven_bookmarks, ad_driven_cta_clicks, ad_driven_check_ins, ad_driven_directions_and_map_views, ad_driven_messages_to_business, ad_driven_user_photos, ad_driven_url_clicks, ad_driven_biz_page_views, ad_driven_rapc_initiated


### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function|
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|
|`global_master_campaign_id[]`|Restrict results to one or more specific campaigns.|
|`interval_size`| Use `calendar_month` or `calendar_week` to roll up the data points into calendar intervals (default is 1 day per interval) or `none` to remove intervals entirely from the response.|

### Response Data Details

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/yelp_ad_metrics/TEST_1?start_date=2020-03-10&end_date=2020-03-10"
```

> Retrieve data for a specific range of dates
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/yelp_ad_metrics/TEST_1?start_date=2016-12-01&end_date=2016-12-31"
```
> Retrieve data for a specific campaign starting on a certain date
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/yelp_ad_metrics/TEST_1?global_master_campaign_id[]=USA_14&start_date=2016-10-01&end_date=2016-12-31"
```

> Retrieve data for a specific range of dates based on the interval size
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/yelp_ad_metrics/TEST_1?interval_size=day&start_date=2016-10-01&end_date=2016-12-31"
```

```

>  Example Response

```javascript
{
    "report_type": "yelp_ad_metrics",
    "report_date": "2024-06-10",
    "earliest_date_available": null,
    "start_date": "2024-06-03",
    "end_date": "2024-06-05",
    "time_zone": "America/Los_Angeles",
    "global_master_advertiser_id": "USA_332659",
    "report_data": {
        "campaigns": [
            {
                "name": "Patty's Linen Rentals | SEM",
                "global_master_campaign_id": "USA_3583934",
                "start_date": "2022-01-13",
                "end_date": null,
                "type": "search",
                "intervals": [
                    {
                        "ad_driven_bookmarks": 0,
                        "ad_driven_cta_clicks": 0,
                        "ad_driven_check_ins": 0,
                        "ad_driven_directions_and_map_views": 0,
                        "ad_driven_messages_to_business": 0,
                        "ad_driven_user_photos": 0,
                        "ad_driven_url_clicks": 4,
                        "ad_driven_biz_page_views": 0,
                        "ad_driven_rapc_initiated": 0,
                        "start_date": "2024-06-03"
                    }
                ]
            }
        ],
        "totals": {
            "ad_driven_bookmarks": 0,
            "ad_driven_cta_clicks": 0,
            "ad_driven_check_ins": 0,
            "ad_driven_directions_and_map_views": 0,
            "ad_driven_messages_to_business": 0,
            "ad_driven_user_photos": 0,
            "ad_driven_url_clicks": 4,
            "ad_driven_biz_page_views": 0,
            "ad_driven_rapc_initiated": 0
        },
        "totals_per_interval": [
            {
                "ad_driven_bookmarks": 0,
                "ad_driven_cta_clicks": 0,
                "ad_driven_check_ins": 0,
                "ad_driven_directions_and_map_views": 0,
                "ad_driven_messages_to_business": 0,
                "ad_driven_user_photos": 0,
                "ad_driven_url_clicks": 4,
                "ad_driven_biz_page_views": 0,
                "ad_driven_rapc_initiated": 0,
                "start_date": "2024-06-03"
            }
        ]
    }
}
```


**yelp_ad_metrics**

|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the API|
|report_date|String|Date report was run|
|earliest_date_available|String|How far back data is available|
|start_date|String|Start Date|
|end_date|String|End Date|
|time_zone|String|Time Zone of Data|
|interval_size|String|Interval Size (none, day, calendar_week, or calendar_month)|
|global_master_advertiser_id|String|Identifier for Advertiser|
|report_data|Object|[Report Data Object (with Campaigns)](#yamcampaignsreportdata)|

<a name="yamcampaignsreportdata"></a>
**Report Data Object (with Campaigns)**

|Field Name|Datatype|Description|
|---|---|---|---|
|totals|Object|Object of totals details. [Totals Object](#yamtotals)|
|campaigns|Object|Object of campaigns details. [Campaigns Object](#yamcampaigns)|
|totals_per_interval|Array|Totals per interval over multiple campaigns. [Totals Per Interval Details.](#yamtotalsperinterval)|

<a name="yamtotals"></a>
**Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|ad_driven_bookmarks|Integer|Total of ad_driven_bookmarks|
|ad_driven_cta_clicks|Integer|Total of ad_driven_cta_clicks|
|ad_driven_check_ins|Integer|Total of ad_driven_check_ins|
|ad_driven_directions_and_map_views|Integer|Total of ad_driven_directions_and_map_views|
|ad_driven_messages_to_business|Integer|Total of ad_driven_messages_to_business|
|ad_driven_user_photos|Integer|Total of ad_driven_user_photos|
|ad_driven_url_clicks|Integer|Total of ad_driven_url_clicks|
|ad_driven_biz_page_views|Integer|Total of ad_driven_biz_page_views|
|ad_driven_rapc_initiated|Integer|Total of ad_driven_rapc_initiated|

<a name="yamintervals"></a>
**Intervals Object**

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|Start Date of interval|
|ad_driven_bookmarks|Integer|Number of ad_driven_bookmarks|
|ad_driven_cta_clicks|Integer|Number of ad_driven_cta_clicks|
|ad_driven_check_ins|Integer|Number of ad_driven_check_ins|
|ad_driven_directions_and_map_views|Integer|Number of ad_driven_directions_and_map_views|
|ad_driven_messages_to_business|Integer|Number of ad_driven_messages_to_business|
|ad_driven_user_photos|Integer|Number of ad_driven_user_photos|
|ad_driven_url_clicks|Integer|Number of ad_driven_url_clicks|
|ad_driven_biz_page_views|Integer|Number of ad_driven_biz_page_views|
|ad_driven_rapc_initiated|Integer|Number of ad_driven_rapc_initiated|

<a name="yamcampaigns"></a>
**Campaigns Object**

|Field Name|Datatype|Description|
|---|---|---|
|name|String|Campaign Name|
|global_master_campaign_id|String|Unique Identifier for Campaign|
|start_date|String|Campaign Start Date|
|end_date|String|Campaign End Date<br>**The field is nullable**|
|type|String|Type of Campaign|
|status|String|Status of Campaign|
|intervals|Object|Object of interval details. [Campaign Interval Object](#yamintervals)|