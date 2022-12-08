## Site status
<a name="lips_site_status"></a>

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /site_status/[gmaid]

Use GET to retrieve site status. Data is returned for a GMAID. Data is an object of call, form and chat first and last events in date time format and also a flag "active" for the status of the site.


### Response Data Details

> Retrieve data for a gmaid
```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://data-connect-lips.ganettdigital.com/site_status/TEST_1
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
        "form": {
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
