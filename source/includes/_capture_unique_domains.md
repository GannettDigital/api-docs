## Unique Domains

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.localiqservices.com/capture_reports/unique-domains?gmaid=TEST_1")

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
  .url("https://api.localiqservices.com/capture_reports/unique-domains?gmaid=TEST_1")
  .get()
  .addHeader("Authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Accept", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request GET \
  --url 'https://api.localiqservices.com/capture_reports/unique-domains?gmaid=TEST_1' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> The above command returns JSON structured like this:

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
Returns a list of unique domains that are being tracked for a given advertiser in the past 14 days. The data returned is a list of unique domains along with corresponding visit counts.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /capture_reports/unique-domains?[query_params] |

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param     | Required | Function |
|-----------|-----|---|
| gmaid     | Yes | Restrict results to the specified advertiser |

### Response Body

The body of the API response is an array of unique domain objects.

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
domain | String | no | The unique domain corresponding to the count
count | Integer | no | The total visit counts to the specified domain in the last 14 days.
