## Business Daily Metrics

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/business_daily_metrics/[business_id]?[query_params]
```

#### Usage
Use GET to retrieve daily business metrics for a given business.

The data returned will include impressions and clicks for each interval, broken out by advertiser and campaign.

The business_id needs to include the region so that it is globally unique (USA_6338 or CAN_6338, not 6338)

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Function |
|---|---|
|`start_date`|Restricts the results to those ocurring on or after this date.|
|`end_date`|Restricts the results to those ocurring on or before this date.|


To specify a date range:

   - Specify start_date and end_date.

#### Example Local Dev Curls:
###### Retrieve data for a specific range of dates
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_daily_metrics/USA_105569?start_date=2016-12-01&end_date=2016-12-31"
```
###### Retrieve data for a specific campaign starting on a certain date
```
curl -g -H "Authorization: token reachanalyticsreportingservicetoken"  "localhost:3001/client_reports/business_daily_metrics/USA_105569?start_date=2016-10-01&end_date=2016-12-31"
```

#### Response Description
```javascript
{
    "report_type": "business_daily_metrics",
    "report_date": "2019-07-18",
    "business_id": "USA_6338",
    "business_name": "Kiddie Academy",
    "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/business_daily_metrics/USA_6338?end_date=2019-06-15&start_date=2019-06-14",
    "start_date": "2019-06-14",
    "end_date": "2019-06-15",
    "report_data": {
        "advertisers": [
            {
                "global_master_advertiser_id": "USA_78724",
                "name": "KA - Albany",
                "aid": 78724,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465183",
                        "name": "KA - Albany",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 306,
                                "leads": 0,
                                "clicks": 14,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "chats": 0,
                                "spend": 18.25,
                                "campaign_adjustment": 0.0,
                                "ctr": 4.58,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "chats": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78731",
                "name": "KA - Elkridge",
                "aid": 78731,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465191",
                        "name": "KA - Elkridge",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 126,
                                "leads": 0,
                                "clicks": 9,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "chats": 0,
                                "spend": 10.54,
                                "campaign_adjustment": 0.0,
                                "ctr": 7.14,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "chats": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            },
            {
                "global_master_advertiser_id": "USA_78733",
                "name": "KA - Kent Island",
                "aid": 78733,
                "campaigns": [
                    {
                        "global_master_campaign_id": "USA_465051",
                        "name": "KA - Kent Island",
                        "offer_id": 666,
                        "type": "search",
                        "status": "running",
                        "currency": "USD",
                        "intervals": [
                            {
                                "start_date": "2019-06-14",
                                "impressions": 56,
                                "leads": 0,
                                "clicks": 7,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "chats": 0,
                                "spend": 25.37,
                                "campaign_adjustment": 0.0,
                                "ctr": 12.5,
                                "cpc": 0.0
                            },
                            {
                                "start_date": "2019-06-15",
                                "impressions": 0,
                                "leads": 0,
                                "clicks": 0,
                                "calls": 0,
                                "web_events": 0,
                                "emails": 0,
                                "chats": 0,
                                "spend": 0.0,
                                "campaign_adjustment": 0.0,
                                "ctr": 0,
                                "cpc": 0
                            }
                        ]
                    }
                ]
            }
        ]
    }
            
}
```
