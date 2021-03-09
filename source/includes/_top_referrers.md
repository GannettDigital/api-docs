### **Top Referrers**
<a name="top_referrers"></a>

Describes the distribution of referrers for an advertiser for a given time period as well as attributing the source
of the referral.  This API endpoint is the data source for the Traffic Detail Report report in client center.

### Resource Overview&nbsp;

| Method | URI Format |
|---|---|
| GET | /capture_reports/top-referrers?[query_params] |

### Parameters&nbsp;

When using the GET method, the results can be filtered using these parameters:

| Param     | Required | Function |
|-----------|-----|---|
| startTime | Yes | Restricts the results to those occurring on or after this date and time. |
| endTime   | Yes | Restricts the results to those occurring on or before this date and time. |
| gmaid     | Yes | Restrict results to the specified advertiser |

### Response Data Details&nbsp;

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.localiqservices.com/capture_reports/top-referrers?gmaid=TEST_1&startTime=2016-01-01T00:00:00Z&endTime=2017-11-2921T23:59:01Z")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["Authorization"] = 'Bearer OAUTH_ACCESS_TOKEN'
request["Accept"] = 'application/json'

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.localiqservices.com/capture_reports/top-referrers?gmaid=TEST_1&startTime=2016-01-01T00:00:00Z&endTime=2017-11-2921T23:59:01Z")
  .get()
  .addHeader("Authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Accept", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request GET \
  --url 'https://api.localiqservices.com/capture_reports/top-referrers?gmaid=TEST_1&startTime=2016-01-01T00:00:00Z&endTime=2017-11-2921T23:59:01Z' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> Example Response

```json
{
    "gmaid": "TEST_1",
    "sources": [
        {
            "name": "DIRECT",
            "master_campaign_id": null,
            "is_paid": false,
            "top_referrers": [
                {
                    "referrer_host": "",
                    "count": 55
                }
            ]
        },
        {
            "name": null,
            "master_campaign_id": "TEST_1",
            "is_paid": true,
            "top_referrers": [
                {
                    "referrer_host": "",
                    "count": 4
                },
                {
                    "referrer_host": "",
                    "count": 1
                }
            ]
        },
        {
            "name": "OTHER",
            "master_campaign_id": null,
            "is_paid": false,
            "top_referrers": [
                {
                    "referrer_host": "reachedgetesting.com",
                    "count": 3
                }
            ]
        },
        {
            "name": "SEARCH",
            "master_campaign_id": null,
            "is_paid": false,
            "top_referrers": [
                {
                    "referrer_host": "google.com",
                    "count": 3
                }
            ]
        },
        {
            "name": null,
            "master_campaign_id": "TEST_1",
            "is_paid": true,
            "top_referrers": [
                {
                    "referrer_host": "",
                    "count": 2
                }
            ]
        },
        {
            "name": null,
            "master_campaign_id": "TEST_1",
            "is_paid": true,
            "top_referrers": [
                {
                    "referrer_host": "",
                    "count": 1
                }
            ]
        }
    ]
}
```

The body of the API response is an array of source objects.

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
name | String | Yes | The type of campaign SEARCH, OTHER, DIRECT
master_campaign_id | String | Yes | The master campaign id
is_paid | boolean | No | Is the campaign a paid campaign
top_referrers | Array | No | An array of top referrer objects

**The top referrer object**

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
referrer_host | String | No | The hostname
count | Integer | No | The count of referrals from the specified host
