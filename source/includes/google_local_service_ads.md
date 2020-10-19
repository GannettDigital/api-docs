## Google Local Service Ads Report

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/google_local_service_ads/[gmaid]?[query_params]
```

#### Usage
Use GET to retrieve the Google Local Service Ads report for a given advertiser.

The data returned will include rating_score, total_reviews, charged_leads, phone_calls and total_cost values organized by campaign.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Function |
|---|---|---|
|`start_date`| Yes | Restricts the results to those ocurring on or after this date.|
|`end_date`| Yes | Restricts the results to those ocurring on or before this date.|

To specify a date range:

   - Specify start_date and end_date.

#### Example Local Dev Curl:
```
curl -L -X GET 'localhost:3001/client_reports/google_local_service_ads/USA_5713?start_date=2020-09-01&end_date=2020-09-02' \
-H 'Authorization: token reachanalyticsreportingservicetoken'
```

#### Example Response
```javascript
{
    "report_type": "google_local_service_ads",
    "report_date": "2020-09-10",
    "start_date": "2020-09-01",
    "end_date": "2020-09-02",
    "currency": "USD",
    "global_master_advertiser_id": "USA_5713",
    "advertiser_name": "Service Experts - Ocala, FL",
    "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/google_local_service_ads/USA_5713?end_date=2020-09-02&start_date=2020-09-01",
    "report_data": {
        "campaigns": [
            {
                "name": "Service Experts - Ocala, FL - LSA HVAC",
                "global_master_campaign_id": "USA_2773143",
                "start_date": "2020-04-30",
                "end_date": "2020-06-04",
                "type": "lsa",
                "status": "ended",
                "goals": [],
                "weekly_budget": 461.0,
                "intervals": [
                    {
                        "start_date": "2020-09-01",
                        "rating_score": 4.8,
                        "total_reviews": 192,
                        "charged_leads": 0,
                        "phone_calls": 1,
                        "total_cost": 0.0
                    },
                    {
                        "start_date": "2020-09-02",
                        "rating_score": 4.8,
                        "total_reviews": 192,
                        "charged_leads": 2,
                        "phone_calls": 2,
                        "total_cost": 50.0
                    }
                ]
            }
        ]
    }
}
```
