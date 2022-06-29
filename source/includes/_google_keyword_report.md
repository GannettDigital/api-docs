### **Google Keyword Performance**

### Resource Overview&nbsp;&nbsp;&nbsp;

|Method|URI Format|
|---|---|
|GET|/client_reports/google_keyword/[gmaid]?[query_params]|

Use GET to retrieve information for the Keyword Google Compliance Report.  Data can be returned in different intervals determined by the range. The requirements for these parameters are described below.

The data returned will include google only totals for impressions, clicks, click-through-rate (CTR), media_cost, keywords, and average position.  It will also show breakdowns per keyword for clicks, media cost, impressions, average position, first page cost-per-click (CPC) and top page cost-per-click.  Data will be returned in pages, controlled by the parameters page and page_size.  The first page is page 1.  Default values of 1 and 15 will be used if not specified.  Data is sorted in alphabetical order by keyword.

**Note: This API will not provide an Average page position from 1/1/2020 onward in the response.**

### Parameters&nbsp;&nbsp;&nbsp;

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|start_date|Yes|Restricts the results to those occurring on or after this date.|
|end_date|Yes|Restricts the results to those occurring on or before this date.|
|global_master_campaign_id[]|No|Restrict results to one or more specific campaigns. This should be a comma separated string. Ex: global_master_campaign_id[]=USA_123,USA_456|
|campaign_status[]|No|Restrict results to all campaigns with given status values.  Allowed values are running, stopped and ended`. This should be a comma separated string. Ex: campaign_status[]=running,stopped|
|page_size|No|Restrict number of keywords in result.<br>**Default value: 15** |
|page|No|Specifies which page of results to return.<br>**Default value: 1** | |
|sort_by|No|Specifies what column to sort by.  Valid columns are: keyword, clicks, media cost, impressions, avg_position, first_page_cpc, top_page_cpc. <br>**Default value: keyword**|
|sort_dir|No|Specifies the sort direction.  Can be either asc or desc. <br>**Default value: asc**|

### Response Data Details&nbsp;&nbsp;&nbsp;

> Retrieve data for a specific range of dates

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.localiqservices.com/client_reports/google_keyword/TEST_1?start_date=2016-12-01&end_date=2016-12-31&page=1&page_size=15"
```

> Retrieve data for a specific campaign starting on a certain date

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.localiqservices.com/client_reports/google_keyword/TEST_1?global_master_campaign_id[]=TEST_1&start_date=2016-10-01&end_date=2016-12-31&page=1&page_size=15"
```

> Retrieve data for campaigns that are stopped and running

```
curl -g -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.localiqservices.com/client_reports/google_keyword/TEST_1?&campaign_status[]=running,stopped&start_date=2016-10-01&end_date=2016-12-31&page=1&page_size=15"
```

> Example Response

```json
{
    "report_type": "google_keyword",
    "report_date": "2020-10-15",
    "earliest_date_available": "2020-01-01",
    "start_date": "2020-10-10",
    "end_date": "2020-10-10",
    "time_zone": "America/Los_Angeles",
    "report_data": {
        "totals": {
            "clicks": 17,
            "media_cost": 918.68,
            "impressions": 1065,
            "ctr": 1.6,
            "keywords": 2
        },
         "unattributed_totals": {
            "clicks": 12,
            "impressions": 62,
            "ctr": 19.35
        },
        "keywords": [
            {
                "keyword": "Keyword (Demo) 1 Location (Demo) 1",
                "clicks": 6,
                "media_cost": 0,
                "impressions": 383,
                "first_page_cpc": 7.34,
                "top_page_cpc": 16
            },
            {
                "keyword": "Keyword (Demo) 2 Location (Demo) 2",
                "clicks": 11,
                "media_cost": 0,
                "impressions": 682,
                "first_page_cpc": 7.34,
                "top_page_cpc":15
            }
        ],
         "unattributed_keywords": [
            {
                "type": "search",
                "clicks": 12,
                "impressions": 62,
                "ctr": 19.35
            }
        ]
    },
    "global_master_advertiser_id": "TEST_1",
    "page": 1,
    "page_size": 25
}

```

|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the API|
|report_date|String|Date report was run|
|earliest_date_available|String|Earliest Data is Available|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|time_zone|String|Time Zone|
|report_data|Object|Report details object containing Totals object and Campaigns array. [Report Data Object](#keywordreportdata)|
|global_master_advertiser_id|String|Identifier for advertiser|
|page|Integer|Page Number|
|page_size|Integer|Number of keywords on page|

<a name="keywordreportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|keywords|Array|Array of [Keyword Object](#keywordobject)|
|unattributed_keywords|Array|Array of [Keyword Object](#unattributedkeywordobject)|
|totals|Object|[Total Object](#totalobject)|
|unattributed_totals|Object|[Total Object](#unattributedtotalobject)|

<a name="keywordobject"></a>
**Keyword Object**

|Field Name|Datatype|Description|
|---|---|---|
|keyword|Integer|Keyword Name|
|type|Integer|Keyword Type (search/display)|
|clicks|Float|Clicks for Keyword|
|media_cost|Float|cost|
|impressions|Integer|Impressions for Keyword|
|ctr|Float|Click through Rate for Keyword|

<a name="unattributedkeyword"></a>
**Unattributed Keyword Object**

|Field Name|Datatype|Description|
|---|---|---|
|type|Integer|Keyword Type (search/display)|
|clicks|Float|Clicks for Keyword|
|impressions|Integer|Impressions for Keyword|
|ctr|Float|Click through Rate for Keyword|

<a name="totalobject"></a>
**Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|keywords|Integer|Number of total keywords regardless of page|
|clicks|Float|Overall Clicks|
|media_cost|Float|cost|
|impressions|Integer|Overall Impressions|
|ctr|Float|Overall Click through Rate|

<a name="unattributedtotalkeyword"></a>
**Unattributed Totals Object**

|Field Name|Datatype|Description|
|---|---|---|
|clicks|Float|Overall Clicks|
|impressions|Integer|Overall Impressions|
|ctr|Float|Overall Click through Rate|
