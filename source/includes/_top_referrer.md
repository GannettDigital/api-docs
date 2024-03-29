### **Top Referrer**
<a name="top_referrer"></a>

Describes the distribution of referrers for an advertiser for a given time period as well as attributing the source
of the referral.  This API endpoint is the data source for the Traffic Detail Report report in client center.

### Resource Overview&nbsp;

| Method | URI Format |
|---|---|
| GET | /client_reports/top_referrer/[gmaid]?[query_params] |

### Parameters&nbsp;

When using the GET method, the results can be filtered using these parameters:

| Param     | Required | Function |
|-----------|-----|---|
| start_date | Yes | Restricts the results to those occurring on or after this date and time. |
| end_date | Yes | Restricts the results to those occurring on or before this date and time. |

### Response Data Details&nbsp;


```shell
curl --request GET \
  --url 'https://api.localiqservices.com/client_reports/top_referrer/TEST_1??start_date=2016-12-01&end_date=2016-12-31' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> Example Response

```json
{
    "api_name": "top_referrer",
    "api_run_date": "2022-11-17",
    "start_date": "2022-11-10",
    "end_date": "2022-11-15",
    "time_zone": "America/Los_Angeles",
    "global_master_advertiser_id": "TEST_1",
    "report_data": {
        "sources": [
            {
                "name": "DIRECT",
                "master_campaign_id": 1,
                "is_paid": true,
                "top_referrers": [
                    {
                        "referrer_host": "facebook.com",
                        "count": 5
                    }
                ]
            },
            {
                "name": "DIRECT",
                "master_campaign_id": 1,
                "is_paid": true,
                "top_referrers": [
                    {
                        "referrer_host": "fifa.com",
                        "count": 14
                    }
                ]
            },
            {
                "name": "SEARCH",
                "master_campaign_id": 1,
                "is_paid": true,
                "top_referrers": [
                    {
                        "referrer_host": "google.com",
                        "count": 14
                    }
                ]
            },
            {
                "name": "SEARCH",
                "master_campaign_id": -1,
                "is_paid": false,
                "top_referrers": [
                    {
                        "referrer_host": "fifa.com",
                        "count": 3
                    }
                ]
            },
            {
                "name": "SOCIAL",
                "master_campaign_id": -1,
                "is_paid": false,
                "top_referrers": [
                    {
                        "referrer_host": "fifa.com",
                        "count": 3
                    }
                ]
            },
            {
                "name": "DIRECT",
                "master_campaign_id": -1,
                "is_paid": false,
                "top_referrers": [
                    {
                        "referrer_host": "fifa.com",
                        "count": 13
                    }
                ]
            },
            {
                "name": "OTHER",
                "master_campaign_id": -1,
                "is_paid": false,
                "top_referrers": [
                    {
                        "referrer_host": "fifa.com",
                        "count": 9
                    }
                ]
            }
        ]
    }
}
```


The main body of the API response is found in the report_data object.

**Base Object**

| Field Name | Datatype | Description |
|---|---|---|
|api_name|String|Name of the API|
|api_run_date|String|Date report was run|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|time_zone|String|Time Zone|
|report_data|[Report Data Object](#topreferrerreportdata)| Report details |

<a id="topreferrerreportdata"></a>
**Report Data Object**

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
sources | Array | Yes | An array of [source objects](#top-referrers-source)|  

<a id="top-referrers-source"></a>
**Source Object**

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
name | String | Yes | The type of campaign SEARCH, OTHER, DIRECT
master_campaign_id | String | Yes | The master campaign id
is_paid | boolean | No | Is the campaign a paid campaign
top_referrers | Array | No | An array of [top referrer objects](#array-of-top-referrers)

<a id="array-of-top-referrers"></a>
**Top referrer object**

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
referrer_host | String | No | The hostname
count | Integer | No | The count of referrals from the specified host
