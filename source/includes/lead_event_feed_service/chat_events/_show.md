### Retrieve a Chat Event

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/leads/chat_events/123")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["accept"] = 'application/json'
request["authorization"] = 'Bearer OAUTH_ACCESS_TOKEN'
request["email"] = 'EMAIL_ADDRESS'

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/leads/chat_events/123")
  .get()
  .addHeader("accept", "application/json")
  .addHeader("authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("email", "EMAIL_ADDRESS")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl -X GET \
  --url ' https://api.reachlocalservices.com/leads/chat_events/123' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN' \
  --header 'email: EMAIL_ADDRESS' \
  --header 'Content-Type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "counts": {
        "unread": {
            "calls": 541,
            "chats": 556,
            "emails": 619,
            "web_events": 578,
            "total": 2294,
            "user_total": 0
        }
    },
    "id": 123,
    "event_id": "618",
    "deleted": true,
    "global_master_advertiser_id": "USA_123",
    "global_master_campaign_id": "USA_1230",
    "note": "",
    "classification": "other",
    "platform": "USA",
    "campaign_id": "1230",
    "read": false,
    "flagged": false,
    "campaign_name": "Good discounts",
    "event_uri": "https://api.reachlocalservices.com/leads/chat_events/123",
    "source": "Organic Traffic",
    "event_time": "2018-06-05T01:23:12.000Z",
    "lead_type": "",
    "lead_phone_number": "328.511.2015 x0448",
    "lead_email_address": "moriah@lubowitz.org",
    "lead_name": "Mrs. Addie Fadel",
    "transcript": "Architecto quis laborum quia. Tempore est sint magnam placeat possimus aut reiciendis."
}
```

This endpoint retrieves a chat event.

**HTTP Request**

`GET https://api.reachlocalservices.com/leads/chat_events/[id]`
