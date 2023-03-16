## Unique Domains

Returns a list of unique domains that are being tracked for a given advertiser in the past 14 days. The data returned is a list of unique domains along with corresponding visit counts.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/unique_domains/[gmaid] |


### Response Body

The body of the API response is an array of unique domain objects.

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
domain | String | no | The unique domain corresponding to the count
count | Integer | no | The total visit counts to the specified domain in the last 14 days.


```
curl --request GET \
  --url 'https://api.localiqservices.com/client_reports/unique_domains/TEST_1' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> > Example Response

```json
{
  "api_name": "unique_domain",
  "api_run_date": "2022-12-12",
  "start_date": "2022-11-28",
  "end_date": "2022-12-12",
  "time_zone": "America/Los_Angeles",
  "report_data": {
    "domains": [
      {
        "domain": "facebook.com",
        "count": 97
      },
      {
        "domain": "fifa.com",
        "count": 61
      },
      {
        "domain": "google.com",
        "count": 57
      }
    ]
  },
  "global_master_advertiser_id": "TEST_1"
}
```