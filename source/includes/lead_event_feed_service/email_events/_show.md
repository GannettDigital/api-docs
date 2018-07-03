### Retrieve an Email Event

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/leads/email_events/123")

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
  .url("https://api.reachlocalservices.com/leads/email_events/123")
  .get()
  .addHeader("accept", "application/json")
  .addHeader("authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl -X GET \
  --url ' https://api.reachlocalservices.com/leads/email_events/123' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN' \
  --header 'Content-Type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "counts": {
        "unread": {
            "calls": 498,
            "chats": 0,
            "emails": 542,
            "web_events": 626,
            "total": 1666,
            "user_total": 0
        }
    },
    "id": 123,
    "event_id": "608",
    "deleted": false,
    "global_master_advertiser_id": "USA_123",
    "global_master_campaign_id": "USA_1230",
    "note": "",
    "classification": "unclassified",
    "platform": "USA",
    "campaign_id": "1230",
    "read": false,
    "flagged": false,
    "campaign_name": "Amazing deals",
    "event_uri": "https://api.reachlocalservices.com/leads/email_events/123",
    "source": "Organic Traffic",
    "sender_name": "Louisa Schuster",
    "sender_email": "loren_erdman@oconnerschoen.net",
    "address": "Jeramyshire, OK",
    "event_time": "2018-06-02T02:50:45.000Z"
}
```

This endpoint retrieves an email event.

**HTTP Request**

`GET https://api.reachlocalservices.com/leads/email_events/[id]`
