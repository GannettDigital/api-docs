## Premium Listings Business

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/business/[gmaid]/review_insights?[query_params]

#### API Name: premium_listings_business
### Usage
Use GET to retrieve information from the Uberall API.  Data will be returned for a GMAID by a specific date range determined by start date and end date.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|yes|Restricts the results to those occurring on or after this date|
|`end_date`|yes|Restricts the results to those occurring on or before this date.|
|`interval_size`|No| How to group the results, one of: HOUR (only for ACTIONS_PHONE), DAY, WEEK, MONTH or YEAR (DEFAULT DAY)|

### Examples

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/client_reports/premium_listings/business/GMAID/review_insights' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

# Example Response
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
