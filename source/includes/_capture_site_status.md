## Site Status

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/capture_reports/site-status?gmaid=USA_142687")

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
  .url("https://api.reachlocalservices.com/capture_reports/site-status?gmaid=USA_142687")
  .get()
  .addHeader("Authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Accept", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request GET \
  --url 'https://api.reachlocalservices.com/capture_reports/site-status?gmaid=USA_142687' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> The above command returns JSON structured like this:

```json
{
    "call": {
        "first_event": "2016-03-15T15:36:52Z",
        "last_event": "2018-03-26T22:47:12Z"
    },
    "chat": {
        "first_event": "2016-08-23T21:55:40Z",
        "last_event": "2017-05-18T19:48:12Z"
    },
    "email": {
        "first_event": "2017-04-22T01:50:10Z",
        "last_event": "2018-04-30T17:02:44Z"
    },
    "post": {
        "first_event": "2017-04-22T01:50:41Z",
        "last_event": "2018-04-30T17:03:38Z"
    },
    "visit": {
        "first_event": "2016-03-15T16:16:38Z",
        "last_event": "2018-05-02T16:55:15Z"
    },
    "active": "Active"
}
```
Returns an object that describes when an advertiser received the first and most recent event of type call, chat, email, post or visit.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /capture_reports/site-status?[query_params] |

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
