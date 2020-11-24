### Review Insights

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/business/[gmaid]/review_insights?[query_params]

#### API Name: review_insights
#### Usage
Use GET to retrieve information from the Uberall API.  Data will be returned for a GMAID by a specific date range determined by start date and end date.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

This report will show the facebook and google metrics for the particular gmaid for the interval between the start_date and the end_date. Every metric would contain a name property and a data property in which would be shown how many times (count) the metrics has been used for the particular period (interval_size). In the case of the example it would show the usage count of the metrics for a DAY between the start_date and the end_date. 

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|yes|Restricts the results to those occurring on or after this date|
|`end_date`|yes|Restricts the results to those occurring on or before this date.|
|`interval_size`|No| How to group the results, one of: HOUR (only for ACTIONS_PHONE), DAY, WEEK, MONTH or YEAR (DEFAULT DAY)|

#### Examples

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/client_reports/premium_listings/business/GMAID/review_insights' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings_business_review_insights",
    "report_date": "2020-04-03",
    "global_master_advertiser_id": "USA_130964",
    "report_data": {
        "facebook":{
            "averageRatingByPeriod":[
                {
                    "period": "2010-11-23",
                    "value": 3.0
                },
                {
                    "period": "2013-06-05",
                    "value": 2.0
                }
            ],
            "interactionCountByPeriod":[
                {
                    "period": "2010-06-10",
                    "count": 1
                },
                {
                    "period": "2010-10-13",
                    "count": 1
                }
            ]
        },
       "google":{
            "averageRatingByPeriod":[
                {
                    "period": "2010-11-23",
                    "value": 3.0
                },
                {
                    "period": "2013-06-05",
                    "value": 2.0
                }
            ],
            "interactionCountByPeriod":[
                {
                    "period": "2010-06-10",
                    "count": 1
                },
                {
                    "period": "2010-10-13",
                    "count": 1
                }
            ]
        }
    }
}
```
|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the Report|
|report_date|String|Date report was run|
|report_data|Object|Report details. [Report Data Object](#reviewinsightsreportdata)|

<a name="reviewinsightsreportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|facebook|Object|Data for specified facebook review insights. [Facebook Object](#reviewinsights)|
|google|Object|Data for specified google review insights. [Google Object](#reviewinsights)|

<a name="reviewinsights"></a>
**Review Insights Object**


|Field Name|Datatype|Description|
|---|---|---|
|averageRatingByPeriod|Array|An array of averageRatingByPeriod objects [averageRatingByPeriod ](https://uberall.com/en/developers/resources#TimeSeriesSegment)|
|interactionCountByPeriod|Array|An array of interactioncountbyperiod (The number of reviews and photos unread by period DEFAULT DAY (COULD BE ALSO HOUR, MONTH, WEEK, YEAR)) objects