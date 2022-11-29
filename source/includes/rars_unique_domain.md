## Unique Domain

Returns a list of unique domains that are being tracked for a given advertiser in the past 14 days. The data returned is a list of unique domains along with corresponding visit counts.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/unique-domain/[gmaid] |


### Response Body

The body of the API response is an array of unique domain objects.

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
domain | String | no | The unique domain corresponding to the count
count | Integer | no | The total visit counts to the specified domain in the last 14 days.


```
curl --request GET \
  --url 'https://api.localiqservices.com/client_reports/unique-domain/TEST_1' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> > Example Response

```json
[
    {
        "domain": "example.com",
        "count": 80
    },
    {
        "domain": "admin.example.com",
        "count": 1
    },
    {
        "domain": "www.example.com",
        "count": 1281
    }
]
```