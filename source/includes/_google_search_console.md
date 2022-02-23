## Google Search Console

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/google_search_console/[gmaid]?[query_params]

#### API Name: google_search_console
### Usage
Use GET to retrieve information from Google Search Console API. Data will be returned for a GMAID by a specific date range determined by start date and end date. Data can be sorted. Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|Yes|Restricts the results to those occurring on or after this date|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|
|`gmaid`|Yes|Restrict results to the specified Global Master Advertiser ID|
|`sort_by`|No|Returns top 20 results. Allowed values: `clicks, impressions, postion, ctr.` Default: `clicks`|

### Metrics

#### Page
Dimension: Pages, final URL linked by a Search result after any skip redirects. 

| Metric | Description |
|---|---|
|`clicks`|Click count for the row.|
|`ctr`|Click Through Rate (CTR) for the row. Values range from 0 to 1.0, inclusive.|
|`impressions`|Impression count for the row.|
|`keys`|Complete URI string used.|
|`position`|Average position in search results.|

#### Query
Dimension: Query, the query strings that users searched for on Google.

| Metric | Description |
|---|---|
|`clicks`|Click count for the row.|
|`ctr`|Click Through Rate (CTR) for the row. Values range from 0 to 1.0, inclusive.|
|`impressions`|Impression count for the row.|
|`keys`|Query string.|
|`position`|Average position in search results.|

#### Device
Dimension: Query, the device performing search.

| Metric | Description |
|---|---|
|`clicks`|Click count for the row.|
|`ctr`|Click Through Rate (CTR) for the row. Values range from 0 to 1.0, inclusive.|
|`impressions`|Impression count for the row.|
|`keys`|DESKTOP, MOBILE, or TABLET|
|`position`|Average position in search results.|

#### Country
Dimension: Query, country search originated from.

| Metric | Description |
|---|---|
|`clicks`|Click count for the row.|
|`ctr`|Click Through Rate (CTR) for the row. Values range from 0 to 1.0, inclusive.|
|`impressions`|Impression count for the row.|
|`keys`|3-letter country code.|
|`position`|Average position in search results.|
### Examples

```
curl --location --request GET 'https://api-stage.gcion.com/apgb2b-reporting/client_reports/google_search_console/USA_123456?start_date=2020-01-01&end_date=2020-01-03' \
--header 'Authorization: token 1b01Secret'
```

# Example Response
```javascript
{
    "report_type": "google_search_console",
    "report_date": "2020-04-03",
    "start_date": "2020-01-01",
    "end_date": "2020-01-03",
    "global_master_advertiser_id": "USA_130964",
    "site_url": "www.example.com"
    "report_data": {
        "reports": [
            {
              "type": "page",
              "data": [
                {
                  "clicks": 22,
                  "ctr": 0.11055276381909548,
                  "impressions": 199,
                  "keys": [
                    "http://www.1stopsigns.com/"
                  ],
                  "position": 9.658291457286433
                }
              ]
            },
            {
              "type": "query",
              "data": [
                {
                  "clicks": 6,
                  "ctr": 0.16666666666666666,
                  "impressions": 36,
                  "keys": [
                    "1 stop signs"
                  ],
                  "position": 14.916666666666666
                },
                {
                  "clicks": 6,
                  "ctr": 0.375,
                  "impressions": 16,
                  "keys": [
                    "one stop signs"
                  ],
                  "position": 11.1875
                },
                {
                  "clicks": 1,
                  "ctr": 0.2,
                  "impressions": 5,
                  "keys": [
                    "1stop signs"
                  ],
                  "position": 7
                },
                {
                  "clicks": 1,
                  "ctr": 0.3333333333333333,
                  "impressions": 3,
                  "keys": [
                    "chandler sign company"
                  ],
                  "position": 2.666666666666667
                },
                {
                  "clicks": 1,
                  "ctr": 1,
                  "impressions": 1,
                  "keys": [
                    "retail signage"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 47,
                  "keys": [
                    "\" 1 stop signs \" 500 n 56th st unit 11, chandler, az 85226"
                  ],
                  "position": 11.106382978723405
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "1 stop solutions"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "banners and signs"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "decal shop near me"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 2,
                  "keys": [
                    "light up building signs"
                  ],
                  "position": 2.5
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "nearest sign shop"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 4,
                  "keys": [
                    "one stop sign"
                  ],
                  "position": 6.5
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "one stop sign shop"
                  ],
                  "position": 101
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "real estate signs near me"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "retail advertising agency"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "signage companies near me"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 2,
                  "keys": [
                    "signs and banners store near me"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "signs chandler"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "signs made"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 2,
                  "keys": [
                    "signs stop"
                  ],
                  "position": 8
                }
              ]
            },
            {
              "type": "device",
              "data": [
                {
                  "clicks": 12,
                  "ctr": 0.08571428571428572,
                  "impressions": 140,
                  "keys": [
                    "DESKTOP"
                  ],
                  "position": 13.214285714285714
                },
                {
                  "clicks": 10,
                  "ctr": 0.1724137931034483,
                  "impressions": 58,
                  "keys": [
                    "MOBILE"
                  ],
                  "position": 1.2241379310344827
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "TABLET"
                  ],
                  "position": 1
                }
              ]
            },
            {
              "type": "country",
              "data": [
                {
                  "clicks": 22,
                  "ctr": 0.12222222222222222,
                  "impressions": 180,
                  "keys": [
                    "usa"
                  ],
                  "position": 7.05
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "arg"
                  ],
                  "position": 101
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 2,
                  "keys": [
                    "can"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 6,
                  "keys": [
                    "gbr"
                  ],
                  "position": 1.3333333333333333
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 3,
                  "keys": [
                    "ind"
                  ],
                  "position": 41.666666666666664
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "lka"
                  ],
                  "position": 11
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "pol"
                  ],
                  "position": 101
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "tur"
                  ],
                  "position": 101
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "ukr"
                  ],
                  "position": 101
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 2,
                  "keys": [
                    "vct"
                  ],
                  "position": 1
                },
                {
                  "clicks": 0,
                  "ctr": 0,
                  "impressions": 1,
                  "keys": [
                    "vnm"
                  ],
                  "position": 101
                }
              ]
            }
        ]
    }
}
```
