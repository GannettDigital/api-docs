## Site status

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/lsa/[gmaid]?[query_params] |

Use GET to retrieve site status. Data can be returned for a GMAID. Data is an object of call, visit, post and chat first and last events in date time format and also a flag "active" for the status of the site.


### Response Data Details

> Retrieve data for a gmaid
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.localiqservices.com/client_reports/site_status/TEST_1
```

> Example Response

```javascript
{
    "report_type": "site_status",
    "report_date": "2022-11-23",
    "time_zone": "America/Los_Angeles",
    "global_master_advertiser_id": "USA_258209",
    "report_data": {
        "call": {
            "first_event": "2020-11-24T14:27:50.000+00:00",
            "last_event": "2022-11-18T17:16:46.000+00:00"
        },
        "visit": {
            "first_event": "2020-11-21T01:24:43.000+00:00",
            "last_event": "2022-11-22T22:57:38.000+00:00"
        },
        "post": {
            "first_event": "2021-01-12T19:31:14.000+00:00",
            "last_event": "2022-11-09T11:06:52.000+00:00"
        },
        "chat": {
            "first_event": "2020-11-28T16:55:02.000+00:00",
            "last_event": "2021-01-14T21:55:02.000+00:00"
        },
        "active": "Active"
    }
}
```

