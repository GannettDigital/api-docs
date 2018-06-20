### Retrieve User Info

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/leads/user_info")

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
  .url("https://api.reachlocalservices.com/leads/user_info")
  .get()
  .addHeader("accept", "application/json")
  .addHeader("authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl -X GET \
  --url ' https://api.reachlocalservices.com/leads/user_info' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN' \
  --header 'Content-Type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "bu_id": 789,
    "user": "test1@email.com",
    "business_id": 123,
    "country": "USA",
    "authorized_advertisers": [
        {
            "name": "Superior Sales",
            "gmaid": "USA_123",
            "hipaa_protected": false,
            "feed_types": [
                "call_events",
                "email_events",
                "web_events"
            ]
        },
        {
            "name": "Lake Street Market",
            "gmaid": "USA_124",
            "hipaa_protected": false,
            "feed_types": [
                "call_events",
                "chat_events",
                "email_events",
                "web_events"
            ]
        }
    ],
    "users": [
        {
            "buid": 678,
            "email": "test1@email.com",
            "business_id": 123,
            "name": "Jim Johnson"
        },
        {
            "buid": 789,
            "email": "test2@email.com",
            "business_id": 123,
            "name": "Carol Smith"
        }
    ]
}
```

This endpoint retrieves business information for the authenticated user.

**HTTP Request**

`GET https://api.reachlocalservices.com/leads/user_info`
