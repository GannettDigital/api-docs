**GET Leads**

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/leads?global_master_advertiser_id=GMAID")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["accept"] = 'application/json'
request["authorization"] = 'Bearer OAUTH_ACCESS_TOKEN'

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/leads?global_master_advertiser_id=GMAID")
  .get()
  .addHeader("accept", "application/json")
  .addHeader("authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl -X GET \
  --url ' https://api.reachlocalservices.com/leads?global_master_advertiser_id=GMAID' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN' \
  --header 'Content-Type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "counts": {
        "unread": {
            "calls": 3,
            "chats": 2,
            "emails": 14,
            "web_events": 14,
            "total": 33,
            "user_total": 0
        }
    }
}
```

This endpoint retrieves unread counts for lead events.

**HTTP Request**

| Method | URI Format |
|---|---|
| GET | /leads]|

**Query Parameters**

Parameter | Required | Description
--------- | -------- | -----------
global_master_advertiser_id | yes | The global master advertiser id (for example, TEST_1).
