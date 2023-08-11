### Insights

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/business/[gmaid]/insights?[query_params]

#### API Name: business_insights
#### Usage
Use GET to retrieve business insights data for a GMAID, that comes from the Premium Listing Reporting API and will be filtered by a specific date range determined by start date and end date.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

This report will show the facebook and google metrics for the particular gmaid for the interval between the start_date and the end_date. Every metric would contain a name property and a data property in which would be shown how many times (count) the metrics has been used for the particular period (interval_size). In the case of the example it would show the usage count of the metrics for a DAY between the start_date and the end_date. 

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`interval_size`|No| How to group the results, one of: HOUR (only for ACTIONS_PHONE), DAY, WEEK, MONTH or YEAR (DEFAULT DAY)|

#### Examples

```
curl --location 'https://api.localiqservices.com/client_reports/premium_listings/business/USA_92131/insights?start_date=2023-7-11&end_date=2023-8-9' \
--header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings/business/insights",
    "report_date": "2023-08-11",
    "global_master_advertiser_id": "USA_92131",
    "report_data": {
        "facebook": {
            "metrics": [
                {
                    "name": "PAGE_CONSUMPTIONS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 272
                        },
                        {
                            "period": "2023-08-02",
                            "count": 251
                        }
                    ]
                },
                {
                    "name": "PAGE_FAN_ADDS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "PAGE_FAN_REMOVES",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 2043
                        },
                        {
                            "period": "2023-08-02",
                            "count": 2043
                        }
                    ]
                },
                {
                    "name": "PAGE_IMPRESSIONS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 14838
                        },
                        {
                            "period": "2023-08-02",
                            "count": 12571
                        }
                    ]
                },
                {
                    "name": "PAGE_IMPRESSIONS_ORGANIC",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "PAGE_IMPRESSIONS_PAID",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 14544
                        },
                        {
                            "period": "2023-08-02",
                            "count": 11970
                        }
                    ]
                },
                {
                    "name": "PAGE_IMPRESSIONS_VIRAL",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 87
                        },
                        {
                            "period": "2023-08-02",
                            "count": 249
                        }
                    ]
                },
                {
                    "name": "PAGE_POSTS_IMPRESSIONS_ORGANIC",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 245
                        },
                        {
                            "period": "2023-08-02",
                            "count": 569
                        }
                    ]
                },
                {
                    "name": "PAGE_POSTS_IMPRESSIONS_PAID",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 14544
                        },
                        {
                            "period": "2023-08-02",
                            "count": 11970
                        }
                    ]
                },
                {
                    "name": "PAGE_POSTS_IMPRESSIONS_VIRAL",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 87
                        },
                        {
                            "period": "2023-08-02",
                            "count": 249
                        }
                    ]
                },
                {
                    "name": "POST_IMPRESSIONS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "PAGE_POST_ENGAGEMENTS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_THIRTEEN_TO_SEVENTEEN_FEMALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_EIGHTEEN_TO_TWENTY_FOUR_FEMALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 13
                        },
                        {
                            "period": "2023-08-02",
                            "count": 13
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_TWENTY_FIVE_TO_THIRTY_FOUR_FEMALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 86
                        },
                        {
                            "period": "2023-08-02",
                            "count": 86
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_THIRTY_FIVE_TO_FORTY_FOUR_FEMALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 255
                        },
                        {
                            "period": "2023-08-02",
                            "count": 255
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_FORTY_FIVE_TO_FIFTY_FOUR_FEMALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 271
                        },
                        {
                            "period": "2023-08-02",
                            "count": 271
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_FIFTY_FIVE_TO_SIXTY_FOUR_FEMALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 264
                        },
                        {
                            "period": "2023-08-02",
                            "count": 264
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_SIXTY_FIVE_PLUS_FEMALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 264
                        },
                        {
                            "period": "2023-08-02",
                            "count": 264
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_THIRTEEN_TO_SEVENTEEN_MALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_EIGHTEEN_TO_TWENTY_FOUR_MALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 18
                        },
                        {
                            "period": "2023-08-02",
                            "count": 18
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_TWENTY_FIVE_TO_THIRTY_FOUR_MALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 89
                        },
                        {
                            "period": "2023-08-02",
                            "count": 89
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_THIRTY_FIVE_TO_FORTY_FOUR_MALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 189
                        },
                        {
                            "period": "2023-08-02",
                            "count": 189
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_FORTY_FIVE_TO_FIFTY_FOUR_MALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 180
                        },
                        {
                            "period": "2023-08-02",
                            "count": 180
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_FIFTY_FIVE_TO_SIXTY_FOUR_MALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 148
                        },
                        {
                            "period": "2023-08-02",
                            "count": 148
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_SIXTY_FIVE_PLUS_MALE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 153
                        },
                        {
                            "period": "2023-08-02",
                            "count": 153
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_THIRTEEN_TO_SEVENTEEN_UNDISCLOSED",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_EIGHTEEN_TO_TWENTY_FOUR_UNDISCLOSED",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 1
                        },
                        {
                            "period": "2023-08-02",
                            "count": 1
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_TWENTY_FIVE_TO_THIRTY_FOUR_UNDISCLOSED",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 2
                        },
                        {
                            "period": "2023-08-02",
                            "count": 2
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_THIRTY_FIVE_TO_FORTY_FOUR_UNDISCLOSED",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 96
                        },
                        {
                            "period": "2023-08-02",
                            "count": 96
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_FORTY_FIVE_TO_FIFTY_FOUR_UNDISCLOSED",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 4
                        },
                        {
                            "period": "2023-08-02",
                            "count": 4
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_FIFTY_FIVE_TO_SIXTY_FOUR_UNDISCLOSED",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 3
                        },
                        {
                            "period": "2023-08-02",
                            "count": 3
                        }
                    ]
                },
                {
                    "name": "PAGE_FANS_GENDER_AGE_SIXTY_FIVE_PLUS_UNDISCLOSED",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 7
                        },
                        {
                            "period": "2023-08-02",
                            "count": 7
                        }
                    ]
                }
            ]
        },
        "google": {
            "metrics": [
                {
                    "name": "QUERIES_CHAIN",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "QUERIES_DIRECT",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "QUERIES_INDIRECT",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "VIEWS_MAPS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 625
                        },
                        {
                            "period": "2023-08-02",
                            "count": 642
                        }
                    ]
                },
                {
                    "name": "VIEWS_SEARCH",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 3395
                        },
                        {
                            "period": "2023-08-02",
                            "count": 3318
                        }
                    ]
                },
                {
                    "name": "ACTIONS_WEBSITE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 439
                        },
                        {
                            "period": "2023-08-02",
                            "count": 482
                        }
                    ]
                },
                {
                    "name": "ACTIONS_PHONE",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 416
                        },
                        {
                            "period": "2023-08-02",
                            "count": 416
                        }
                    ]
                },
                {
                    "name": "ACTIONS_DRIVING_DIRECTIONS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 192
                        },
                        {
                            "period": "2023-08-02",
                            "count": 252
                        }
                    ]
                },
                {
                    "name": "PHOTOS_VIEWS_MERCHANT",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "PHOTOS_VIEWS_CUSTOMERS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "LOCAL_POST_VIEWS_SEARCH",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "LOCAL_POST_ACTIONS_CALL_TO_ACTION",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "BUSINESS_IMPRESSIONS_DESKTOP_MAPS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 89
                        },
                        {
                            "period": "2023-08-02",
                            "count": 114
                        }
                    ]
                },
                {
                    "name": "BUSINESS_IMPRESSIONS_MOBILE_MAPS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 536
                        },
                        {
                            "period": "2023-08-02",
                            "count": 528
                        }
                    ]
                },
                {
                    "name": "BUSINESS_IMPRESSIONS_DESKTOP_SEARCH",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 1431
                        },
                        {
                            "period": "2023-08-02",
                            "count": 1450
                        }
                    ]
                },
                {
                    "name": "BUSINESS_IMPRESSIONS_MOBILE_SEARCH",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 1964
                        },
                        {
                            "period": "2023-08-02",
                            "count": 1868
                        }
                    ]
                },
                {
                    "name": "BUSINESS_CONVERSATIONS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "BUSINESS_DIRECTION_REQUESTS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 192
                        },
                        {
                            "period": "2023-08-02",
                            "count": 252
                        }
                    ]
                },
                {
                    "name": "CALL_CLICKS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 416
                        },
                        {
                            "period": "2023-08-02",
                            "count": 416
                        }
                    ]
                },
                {
                    "name": "WEBSITE_CLICKS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 439
                        },
                        {
                            "period": "2023-08-02",
                            "count": 482
                        }
                    ]
                },
                {
                    "name": "BUSINESS_BOOKINGS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "BUSINESS_FOOD_ORDERS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
                    ]
                },
                {
                    "name": "BUSINESS_FOOD_MENU_CLICKS",
                    "data": [
                        {
                            "period": "2023-08-01",
                            "count": 0
                        },
                        {
                            "period": "2023-08-02",
                            "count": 0
                        }
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
|facebook|Object|Data for specified facebook insights. [Facebook Object](#insights)|
|google|Object|Data for specified google insights. [Google Object](#insights)|


<a name="insights"></a>
**Insights Object**


|Field Name|Datatype|Description|
|---|---|---|
|metrics|Array|An array of insights metrics objects. [Insights Metrics](#metrics)|

<a name="metrics"></a>
**Metrics Array**

|Field Name|Datatype|Description|
|---|---|---|
|name|String|Name of metric|
|data|Array|An array of metrics data| [Metrics Data Array](#metricsdataarray)|

<a name="metricsdataarray"></a>
**Metrics Data Array**

|Field Name|Datatype|Description|
|---|---|---|
|period|String|Date string of the period for which this metric was applied|
|count|Integer|number of times the metric was applied|