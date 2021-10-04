## Google Site URLs 

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/google_site_urls/[gmaid]

#### API Name: google_site_urls
### Usage
Use GET to retrieve a list of site_urls from the Google Search Console API. Data will be returned for a GMAID. Only "trusted" tokens are accepted - this report cannot be called through an API gateway. 
Advertiser must also have valid Google Oauth `access_token` on file. See [ga-credentials](https://github.com/GannettDigital/api-docs/blob/master/source/includes/_ga_credentials.md) for more information.

### Parameters

When using the GET method the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`gmaid`|Yes|Restrict results to the specified Global Master Advertiser ID|

### Report Data

#### Site Urls

A list of sites that the particular advertiser has verified in the Google Search Console system.

| Data Object | Description |
|---|---|
|`site_urls`|An unsorted array of all site urls. See [ga_credentials](https://github.com/GannettDigital/api-docs/blob/master/source/includes/_ga_credentials.md) for site_url usage.|



### Examples

```
curl --location --request GET 'https://api-stage.gcion.com/apgb2b-reporting/client_reports/google_site_urls/TEST_1' \
--header 'Authorization: secret' \
--header 'x-api-key: secret'
```

# Example Response
```javascript
{
    "report_type": "google_site_urls",
    "report_date": "2021-09-16",
    "global_master_advertiser_id": "USA_130964",
    "report_data": {
        "site_urls": [
            "https://www.brannan1.com/",
            "https://www.pwm-sales.co.uk/",
            "https://www.inexroofingco.com/",
            "https://www.looknatural.com/",
            "https://calsgaragedoors.com/",
            "https://www.landscapesbyjefferyinc.com/"
        ]
    }
}
            