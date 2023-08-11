### Review Insights

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/business/[gmaid]/review_insights?[query_params]

#### API Name: review_insights
#### Usage
Use GET to retrieve business review insights data for a GMAID, that comes from the Premium Listing Reporting API and will be filtered by a specific date range determined by start date and end date.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

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
curl --location 'https://api.localiqservices.com/client_reports/premium_listings/business/USA_92131/review_insights?start_date=2023-7-12&end_date=2023-8-10' \
--header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings/business/review_insights",
    "report_date": "2023-08-11",
    "global_master_advertiser_id": "USA_92131",
    "report_data": {
        "facebook": {
            "averageRatingByPeriod": [],
            "interactionCountByPeriod": [],
            "totalRatingCount": 0
        },
        "google": {
            "averageRatingByPeriod": [
                {
                    "period": "2023-07-12",
                    "value": 5.0
                },
                {
                    "period": "2023-07-13",
                    "value": 5.0
                },
                {
                    "period": "2023-07-14",
                    "value": 4.17
                },
                {
                    "period": "2023-07-15",
                    "value": 5.0
                },
                {
                    "period": "2023-07-16",
                    "value": 5.0
                },
                {
                    "period": "2023-07-17",
                    "value": 5.0
                },
                {
                    "period": "2023-07-18",
                    "value": 5.0
                },
                {
                    "period": "2023-07-19",
                    "value": 4.29
                },
                {
                    "period": "2023-07-20",
                    "value": 5.0
                },
                {
                    "period": "2023-07-21",
                    "value": 4.2
                },
                {
                    "period": "2023-07-22",
                    "value": 5.0
                },
                {
                    "period": "2023-07-23",
                    "value": 5.0
                },
                {
                    "period": "2023-07-24",
                    "value": 5.0
                },
                {
                    "period": "2023-07-25",
                    "value": 5.0
                },
                {
                    "period": "2023-07-26",
                    "value": 5.0
                },
                {
                    "period": "2023-07-27",
                    "value": 4.2
                },
                {
                    "period": "2023-07-28",
                    "value": 5.0
                },
                {
                    "period": "2023-07-29",
                    "value": 5.0
                },
                {
                    "period": "2023-07-30",
                    "value": 5.0
                },
                {
                    "period": "2023-07-31",
                    "value": 4.71
                },
                {
                    "period": "2023-08-01",
                    "value": 5.0
                },
                {
                    "period": "2023-08-02",
                    "value": 3.5
                },
                {
                    "period": "2023-08-03",
                    "value": 5.0
                },
                {
                    "period": "2023-08-04",
                    "value": 4.17
                },
                {
                    "period": "2023-08-05",
                    "value": 5.0
                },
                {
                    "period": "2023-08-07",
                    "value": 5.0
                },
                {
                    "period": "2023-08-08",
                    "value": 5.0
                },
                {
                    "period": "2023-08-09",
                    "value": 5.0
                },
                {
                    "period": "2023-08-10",
                    "value": 4.2
                }
            ],
            "interactionCountByPeriod": [
                {
                    "period": "2023-07-12",
                    "count": 11
                },
                {
                    "period": "2023-07-13",
                    "count": 7
                },
                {
                    "period": "2023-07-14",
                    "count": 6
                },
                {
                    "period": "2023-07-15",
                    "count": 6
                },
                {
                    "period": "2023-07-16",
                    "count": 6
                },
                {
                    "period": "2023-07-17",
                    "count": 4
                },
                {
                    "period": "2023-07-18",
                    "count": 4
                },
                {
                    "period": "2023-07-19",
                    "count": 7
                },
                {
                    "period": "2023-07-20",
                    "count": 3
                },
                {
                    "period": "2023-07-21",
                    "count": 5
                },
                {
                    "period": "2023-07-22",
                    "count": 4
                },
                {
                    "period": "2023-07-23",
                    "count": 3
                },
                {
                    "period": "2023-07-24",
                    "count": 6
                },
                {
                    "period": "2023-07-25",
                    "count": 7
                },
                {
                    "period": "2023-07-26",
                    "count": 5
                },
                {
                    "period": "2023-07-27",
                    "count": 5
                },
                {
                    "period": "2023-07-28",
                    "count": 9
                },
                {
                    "period": "2023-07-29",
                    "count": 3
                },
                {
                    "period": "2023-07-30",
                    "count": 5
                },
                {
                    "period": "2023-07-31",
                    "count": 14
                },
                {
                    "period": "2023-08-01",
                    "count": 2
                },
                {
                    "period": "2023-08-02",
                    "count": 14
                },
                {
                    "period": "2023-08-03",
                    "count": 4
                },
                {
                    "period": "2023-08-04",
                    "count": 6
                },
                {
                    "period": "2023-08-05",
                    "count": 3
                },
                {
                    "period": "2023-08-07",
                    "count": 7
                },
                {
                    "period": "2023-08-08",
                    "count": 11
                },
                {
                    "period": "2023-08-09",
                    "count": 6
                },
                {
                    "period": "2023-08-10",
                    "count": 5
                }
            ],
            "totalRatingCount": 176
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