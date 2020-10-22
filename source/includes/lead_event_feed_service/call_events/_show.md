**Retrieve a Call Event**

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/leads/call_events/123")

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
  .url("https://api.reachlocalservices.com/leads/call_events/123")
  .get()
  .addHeader("accept", "application/json")
  .addHeader("authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl -X GET \
  --url ' https://api.reachlocalservices.com/leads/call_events/123' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN' \
  --header 'Content-Type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "counts": {
        "unread": {
            "calls": 0,
            "chats": 0,
            "emails": 0,
            "web_events": 0,
            "total": 0,
            "user_total": 0
        }
    },
    "id": 123,
    "event_id": "547",
    "deleted": false,
    "global_master_advertiser_id": "TEST_1",
    "global_master_campaign_id": "TEST_1",
    "note": "",
    "classification": "inquiry",
    "platform": "USA",
    "campaign_id": "1230",
    "read": false,
    "flagged": false,
    "campaign_name": "Killer sales",
    "event_uri": "https://api.reachlocalservices.com/leads/call_events/123",
    "source": "Organic Traffic",
    "caller_phone_number": "720-807-2624",
    "call_recording_url": "http://www.rl_record.com/548",
    "event_time": "2018-04-24T19:45:21.000Z",
    "call_duration": 638,
    "caller_name": "Jamarcus Bahringer"
}
```

This endpoint retrieves a call event.

**HTTP Request**

| Method | URI Format |
|---|---|
| GET | /leads/call_events/[id]|
