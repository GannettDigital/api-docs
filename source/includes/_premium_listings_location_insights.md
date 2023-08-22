### Insights

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/[gmaid]/location/[id]/insights?[query_params]

#### API Name: premium_listings_location_insights
#### Usage
Use GET to retrieve location insights data , that comes from the Premium Listing Reporting API.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

This report will show one of facebook, google, bing, yelp_api (or all of them) metrics for the particular id for.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|No|Restricts the results to those occurring on or after this date|
|`end_date`|No|Restricts the results to those occurring on or before this date.|
|`interval_size`|No| How to group the results, one of: HOUR (only for ACTIONS_PHONE), DAY, WEEK, MONTH or YEAR (DEFAULT DAY)|
|`types`|No| An array that filters the insights result for one of (facebook, bing, google, yelp_api)|

#### Examples

```
curl --location 'https://api.localiqservices.com/client_reports/premium_listings/USA_92131/location/2800302/insights' \
--header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings/location/insights",
    "report_date": "2023-08-11",
    "report_data": {
        "facebook": {
            "metrics": []
        },
        "google": {
            "metrics": [
                {
                    "name": "QUERIES_CHAIN",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 0
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "QUERIES_DIRECT",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 0
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "QUERIES_INDIRECT",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 0
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "VIEWS_MAPS",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 6
                        },
                        {
                            "period": "2023-08-05",
                            "count": 5
                        }
                    ]
                },
                {
                    "name": "VIEWS_SEARCH",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 26
                        },
                        {
                            "period": "2023-08-05",
                            "count": 22
                        }
                    ]
                },
                {
                    "name": "ACTIONS_WEBSITE",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 6
                        },
                        {
                            "period": "2023-08-05",
                            "count": 9
                        }
                    ]
                },
                {
                    "name": "ACTIONS_PHONE",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 10
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "ACTIONS_DRIVING_DIRECTIONS",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 2
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "PHOTOS_VIEWS_MERCHANT",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 0
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "PHOTOS_VIEWS_CUSTOMERS",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 0
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "LOCAL_POST_VIEWS_SEARCH",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 0
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "LOCAL_POST_ACTIONS_CALL_TO_ACTION",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 0
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "BUSINESS_IMPRESSIONS_DESKTOP_MAPS",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 3
                        },
                        {
                            "period": "2023-08-05",
                            "count": 1
                        }
                    ]
                },
                {
                    "name": "BUSINESS_IMPRESSIONS_MOBILE_MAPS",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 3
                        },
                        {
                            "period": "2023-08-05",
                            "count": 4
                        }
                    ]
                },
                {
                    "name": "BUSINESS_IMPRESSIONS_DESKTOP_SEARCH",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 13
                        },
                        {
                            "period": "2023-08-05",
                            "count": 3
                        }
                    ]
                },
                {
                    "name": "BUSINESS_IMPRESSIONS_MOBILE_SEARCH",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 13
                        },
                        {
                            "period": "2023-08-05",
                            "count": 19
                        }
                    ]
                },
                {
                    "name": "BUSINESS_CONVERSATIONS",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 0
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "BUSINESS_DIRECTION_REQUESTS",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 2
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "CALL_CLICKS",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 10
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "WEBSITE_CLICKS",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 6
                        },
                        {
                            "period": "2023-08-05",
                            "count": 9
                        }
                    ]
                },
                {
                    "name": "BUSINESS_BOOKINGS",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 0
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "BUSINESS_FOOD_ORDERS",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 0
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "BUSINESS_FOOD_MENU_CLICKS",
                    "data": [
                        {
                            "period": "2023-08-04",
                            "count": 0
                        },
                        {
                            "period": "2023-08-05",
                            "count": 0
                        }
                    ]
                }
            ]
        },
        "bing": {
            "metrics": []
        },
        "yelp": {
            "metrics": []
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
|yelp|Object|Data for specified yelp insights. [Yelp Object](https://uberall.com/en/developers/apiDocumentation#_api_dashboard_insightsData-GET)|
|bing|Object|Data for specified bing insights. [Bing Object](https://uberall.com/en/developers/apiDocumentation#_api_dashboard_insightsData-GET)|