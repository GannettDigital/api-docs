### **Video Activity**
<a name="activity"></a>

### Resource Overview&nbsp;

|Method|URI Format|
|---|---|
|GET|/client_reports/video_activity/[gmaid]?[query_params]|

This is a Video Activity API that can be used by customers that have display campaigns from either the ReachLocal or Gannett brand. Data is returned for a GMAID for a specific date range determined by start_date and end_date. Data can also be returned in specified intervals by using the interval_size param. The requirements for these parameters are described below. When data is unavailable, corresponding property will not be present in the response. For example, if we do not have data for a creative, it will not be present in the response.

### Parameters&nbsp;

When using the GET method, the results can be filtered using these parameters:

|Parameter|Required|Description|
|---|---|---|
|start_date|Yes|Restricts the results to those occurring on or after this date|
|end_date|Yes|Restricts the results to those occurring on or before this date|
|interval_size|No|Specifies the type of interval: day, calendar_week, or calendar_month <br>**Default value: day**|
|global_master_campaign_id[]|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=TEST_1,TEST_2|
|campaign_cycle|Restrict results to a single campaign cycle|
|campaign_status[]|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended. This should be a comma separated string. Ex: campaign_status[]=running,stopped|

### Response Data Details&nbsp;

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/video_activity/TEST_1?start_date=2021-12-15&end_date=2022-01-15
```

> Retrieve data with intervals

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/video_activity/TEST_1?start_date=2021-12-15&end_date=2022-01-15&interval_size=calendar_week
```

> Example Response

```json
{
    "report_type": "video_activity",
    "report_date": "2022-01-27",
    "earliest_date_available": "2020-12-15",
    "start_date": "2022-01-03",
    "end_date": "2022-01-16",
    "time_zone": "America/Los_Angeles",
    "interval_size": "calendar_week",
    "currency": "USD",
    "report_data": {
        "campaigns": [
            {
                "name": "GCI0732132141-01_Audience_Auto",
                "global_master_campaign_id": "TEST_1001",
                "start_date": "2021-12-15",
                "end_date": "2022-12-14",
                "type": "gannett",
                "status": "running",
                "creatives": [
                    {
                        "publisher_id": 1777,
                        "publisher_name": "Simpli.fi Remarketing",
                        "publisher_creative_id": 3231883,
                        "name": "CPT12237903H_1.mp4",
                        "url": "https://adspreview.simpli.fi/ads/live/324324543/3231883/4123f0.mp4",
                        "intervals": [
                            {
                                "start_date": "2022-01-03",
                                "impressions": 2962,
                                "clicks": 2,
                                "start": 1713,
                                "first_quartile": 1701,
                                "midpoint": 1691,
                                "third_quartile": 1673,
                                "complete": 1670,
                                "full_screen": 4,
                                "mute": 9,
                                "pause": 4,
                                "resume": 6,
                                "website_conversions": 0,
                                "walk_ins": 2
                            }
                        ]
                    },
                    {
                        "publisher_id": 1777,
                        "publisher_name": "Simpli.fi Remarketing",
                        "publisher_creative_id": 3231884,
                        "name": "CPT1928401H.mp4",
                        "url": "https://adspreview.simpli.fi/ads/live/324324543/3231884/99928.mp4",
                        "intervals": [
                            {
                                "start_date": "2022-01-03",
                                "impressions": 2962,
                                "clicks": 2,
                                "start": 1149,
                                "first_quartile": 1148,
                                "midpoint": 1139,
                                "third_quartile": 1123,
                                "complete": 1114,
                                "full_screen": 2,
                                "mute": 10,
                                "pause": 2,
                                "resume": 4,
                                "website_conversions": 0,
                                "walk_ins": 0
                            }
                        ]
                    }
                ]
            },
            {
                "name": "GCI0732132141-03_Audience_Auto",
                "global_master_campaign_id": "TEST_1002",
                "start_date": "2021-12-15",
                "end_date": "2022-12-14",
                "type": "gannett",
                "status": "running",
                "creatives": [
                    {
                        "publisher_id": 1777,
                        "publisher_name": "Simpli.fi Remarketing",
                        "publisher_creative_id": 3231885,
                        "name": "CPT88334564051H.mp4",
                        "url": "https://adspreview.simpli.fi/ads/live/324324543/3231885/e2c223ca.mp4",
                        "intervals": [
                            {
                                "start_date": "2022-01-03",
                                "impressions": 4109,
                                "clicks": 13,
                                "start": 3570,
                                "first_quartile": 2603,
                                "midpoint": 2222,
                                "third_quartile": 1984,
                                "complete": 1759,
                                "full_screen": 8,
                                "mute": 150,
                                "pause": 1042,
                                "resume": 620,
                                "website_conversions": 0,
                                "walk_ins": 0
                            },
                            {
                                "start_date": "2022-01-10",
                                "impressions": 5972,
                                "clicks": 10,
                                "start": 3413,
                                "first_quartile": 2764,
                                "midpoint": 2467,
                                "third_quartile": 2281,
                                "complete": 2082,
                                "full_screen": 4,
                                "mute": 236,
                                "pause": 491,
                                "resume": 214,
                                "website_conversions": 0,
                                "walk_ins": 0
                            }
                        ]
                    },
                    {
                        "publisher_id": 1777,
                        "publisher_name": "Simpli.fi Remarketing",
                        "publisher_creative_id": 3231886,
                        "name": "CPT1953723432457H.mp4",
                        "url": "https://adspreview.simpli.fi/ads/live/2691669/3231886/6b2340d.mp4",
                        "intervals": [
                            {
                                "start_date": "2022-01-10",
                                "impressions": 4937,
                                "clicks": 10,
                                "start": 2201,
                                "first_quartile": 1816,
                                "midpoint": 1643,
                                "third_quartile": 1532,
                                "complete": 1452,
                                "full_screen": 7,
                                "mute": 189,
                                "pause": 204,
                                "resume": 35,
                                "website_conversions": 0,
                                "walk_ins": 0
                            }
                        ]
                    }
                ]
            }
        ],
        "totals": {
            "impressions": 47022,
            "clicks": 69,
            "start": 27399,
            "first_quartile": 24604,
            "midpoint": 23365,
            "third_quartile": 22503,
            "complete": 21789,
            "full_screen": 74,
            "mute": 815,
            "pause": 2509,
            "resume": 1327,
            "website_conversions": 2,
            "walk_ins": 2
        },
        "totals_per_interval": [
            {
                "start_date": "2022-01-03",
                "impressions": 20098,
                "clicks": 39,
                "start": 13330,
                "first_quartile": 11625,
                "midpoint": 10905,
                "third_quartile": 10418,
                "complete": 10020,
                "full_screen": 38,
                "mute": 366,
                "pause": 1779,
                "resume": 1061,
                "website_conversions": 1,
                "walk_ins": 2
            },
            {
                "start_date": "2022-01-10",
                "impressions": 26924,
                "clicks": 30,
                "start": 14069,
                "first_quartile": 12979,
                "midpoint": 12460,
                "third_quartile": 12085,
                "complete": 11769,
                "full_screen": 36,
                "mute": 449,
                "pause": 730,
                "resume": 266,
                "website_conversions": 1,
                "walk_ins": 0
            }
        ]
    },
    "global_master_advertiser_id": "TEST_1"
}
```

|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the API|
|report_date|String|Date report was run|
|earliest_date_available|String|How far back data is available|
|start_date|String|Start Date|
|end_date|String|End Date|
|time_zone|String|Time Zone of Data|
|interval_size|String|Interval Size (none, day, calendar_week, or calendar_month)|
|currency|String|Currency for Advertiser|
|global_master_advertiser_id|String|Identifier for Advertiser|
|report_data|Object|[Report Data Object (with Campaigns)](#vacampaignsreportdata)|

<a name="vacampaignsreportdata"></a>
**Report Data Object (with Campaigns)**

|Field Name|Datatype|Description|
|---|---|---|---|
|totals|Object|Object of totals details. [Totals Object](#vatotals)|
|campaigns|Object|Object of campaigns details. [Campaigns Object](#vacampaigns)|
|totals_per_interval|Array|Totals per interval over multiple campaigns. [Totals Per Interval Details.](#vatotalsperinterval)|

<a name="vatotals"></a>
**Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|impressions|Integer|Total impressions|
|clicks|Integer|Total clicks|
|start|Integer|Number of Start Video Views|
|first_quartile|Integer|Number of Video Views Played to 25 percent|
|midpoint|Integer|Number of Video Views Played to 50 percent|
|third_quartile|Integer|Number of Video Views Played to 75 percent|
|complete|Integer|Number of Completed Views|
|full_screen|Integer|Number of Full-Screen Video Views|
|mute|Integer|Number of Muted Video Views|
|pause|Integer|Number of Paused Video Views|
|resume|Integer|Number of Resumed Video Views|
|website_conversions|Integer|Number of Website Conversions|
|walk_ins|Integer|Number of Walk Ins|

<a name="vaintervals"></a>
**Intervals Object**

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|Start Date of interval|
|impressions|Integer|Total impressions|
|clicks|Integer|Total clicks|
|start|Integer|Number of Start Video Views|
|first_quartile|Integer|Number of Video Views Played to 25 percent|
|midpoint|Integer|Number of Video Views Played to 50 percent|
|third_quartile|Integer|Number of Video Views Played to 75 percent|
|complete|Integer|Number of Completed Views|
|full_screen|Integer|Number of Full-Screen Video Views|
|mute|Integer|Number of Muted Video Views|
|pause|Integer|Number of Paused Video Views|
|resume|Integer|Number of Resumed Video Views|
|website_conversions|Integer|Number of Website Conversions|
|walk_ins|Integer|Number of Walk Ins|

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
|creatives|Object|Object of creatives details. [Campaign Creatives Object](#vacampaigncreatives)|

<a name="vacampaigncreatives"></a>
**Campaign Creatives Object**

|Field Name|Datatype|Description|
|---|---|---|
|publisher_id|Integer|Identifier for Publisher|
|publisher_name|String|Name of Publisher|
|publisher_creative_id|Integer|Identifier for Creative|
|creative_name | String | Name of creative<br>**The field is nullable**|
|url | String | URL for creative preview<br>**The field is nullable** |
|creatives|Object|Object of creatives details. [Campaign Creatives Object](#vacampaigncreatives)|

<a name="vatotalsperinterval"></a>
**Totals Per Interval Object**

This is an Interval object across all campaigns.
