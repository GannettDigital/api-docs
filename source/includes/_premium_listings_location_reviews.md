### Reviews

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/location/[id]/reviews

#### API Name: premium_listings_location_reviews
#### Usage
Use GET to retrieve business review insights data for a GMAID, that comes from the Premium Listing Reporting API and will be filtered by a specific date range determined by start date and end date.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

This report will show the facebook and google metrics for the particular gmaid for the interval between the start_date and the end_date. Every metric would contain a name property and a data property in which would be shown how many times (count) the metrics has been used for the particular period (interval_size). In the case of the example it would show the usage count of the metrics for a DAY between the start_date and the end_date. 

#### Examples

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/client_reports/premium_listings/location/GMAID/reviews' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings/location/reviews",
    "report_date": "2020-04-03",
    "report_data": {
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
```
|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the Report|
|report_date|String|Date report was run|
|report_data|Object|Report details. [Report Data Object](https://uberall.com/en/developers/apiDocumentation#_api_dashboard_customerFeedback-GET)|


