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
    "site_status": {
        "active": "Active"
    },
    "global_master_advertiser_id": "TEST_1"
}
```
