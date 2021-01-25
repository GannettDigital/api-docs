### Insights

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/location/[id]/insights?[query_params]

#### API Name: premium_listings_location_insights
#### Usage
Use GET to retrieve location insights data , that comes from the Premium Listing Reporting API.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

This report will show on of the facebook, google, bing, yelp_api (or all of them) metrics for the particular id for.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|No|Restricts the results to those occurring on or after this date|
|`end_date`|No|Restricts the results to those occurring on or before this date.|
|`types`|No| An array that filtrs the insights result for one of (facebook, bing, google, yelp_api)|

#### Examples

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/client_reports/premium_listings/location/ID/insights' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings/location/insights",
    "report_date": "2020-04-03",
    "report_data": {
        "facebook":{
            "metrics":[]
        },
        "yelp":{
            "metrics":[]
        },
        "bing":{
            "metrics":[]
        },
       "google":{
            "metrics": [
                {
                    "name": "QUERIES_CHAIN",
                    "data": [
                        {
                            "period": "2020-04-19",
                            "count": 0
                        },
                        {
                            "period": "2020-04-20",
                            "count": 0
                        },
                        {
                            "period": "2020-04-21",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "VIEWS_SEARCH",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 19
                        },
                        {
                            "period": "2020-04-02",
                            "count": 20
                        }
                    ]
                },
                {
                    "name": "ACTIONS_WEBSITE",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 1
                        },
                        {
                            "period": "2020-04-02",
                            "count": 1
                        },
                        
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "ACTIONS_DRIVING_DIRECTIONS",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 2
                        },
                        {
                            "period": "2020-04-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "PHOTOS_VIEWS_MERCHANT",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 56
                        },
                        {
                            "period": "2020-04-02",
                            "count": 48
                        }
                    ]
                },
                {
                    "name": "PHOTOS_VIEWS_CUSTOMERS",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 0
                        },
                        {
                            "period": "2020-04-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "LOCAL_POST_VIEWS_SEARCH",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 0
                        },
                        {
                            "period": "2020-04-02",
                            "count": 0
                        },
                        {
                            "period": "2020-04-03",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "LOCAL_POST_ACTIONS_CALL_TO_ACTION",
                    "data": [
                        {
                            "period": "2020-04-01",
                            "count": 0
                        },
                        {
                            "period": "2020-04-02",
                            "count": 0
                        },
                        {
                            "period": "2020-04-03",
                            "count": 0
                        },
                    ]
                }
            ]
        }
    }
}
```
Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the Report|
|report_date|String|Date report was run|
|report_data|Object|Report details. [Report Data Object](#insightsreportdata)|

<a name="insightsreportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|facebook|Object|Data for specified facebook insights. [Facebook Object](https://uberall.com/en/developers/apiDocumentation#_api_dashboard_insightsData-GET)|
|google|Object|Data for specified google insights. [Google Object](https://uberall.com/en/developers/apiDocumentation#_api_dashboard_insightsData-GET)|
|yelp|Object|Data for specified yelp insights. [Google Object](https://uberall.com/en/developers/apiDocumentation#_api_dashboard_insightsData-GET)|
|bing|Object|Data for specified bing insights. [Google Object](https://uberall.com/en/developers/apiDocumentation#_api_dashboard_insightsData-GET)|