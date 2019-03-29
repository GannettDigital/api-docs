## Call Connect

The Call Connect endpoint is used to create a phone call between a visitor and
an advertiser. The advertiser's phone number is determined using the given visit
ID.

### Create

### HTTP Request

| Method | URI Format |
|---|---|
| POST | https://api.reachlocalservices.com/call_connect |

### HTTP Response Codes
| Status Code | Description
|---|---|
| 200 | Successful
| 400 | Validation Error

### Post Body Parameters

Parameter | Required | Datatype | Nullable | Description
--------- | -------- | -------- | -------- | -----------
description | yes | string | no | The topic of the call (e.g building a fireplace, fixing a toaster).
visitId | yes | string | no | The ID of the visit that triggered the call connection.
visitorName | yes | string | no | The name of the visitor.
visitorPhone | yes | string | no | The phone number of the visitor. No specific format is required.

### Examples:

``` shell
# Sample cURL for the Create POST request:

curl -X POST \
  https://api.reachlocalservices.com/call_connect \
  -H 'Content-Type: application/json' \
  -H 'accept: application/json' \
  -H 'authorization: Bearer OAUTH_ACCESS_TOKEN' \
  -d '{
  "description": "creating an example",
  "visitId": "92a2e98d-a51c-4cb0-aec8-495a14470821",
  "visitorName": "John Doe",
  "visitorPhone": "(111) 222-3333"
}'

# HTTP Response Status: 200
```

``` ruby
# Sample Ruby for the Create Chat POST request:

require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/call_connect")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["accept"] = 'application/json'
request["authorization"] = 'Bearer OAUTH_ACCESS_TOKEN'
request["Content-Type"] = 'application/json'
request.body = "{\"description\": \"creating an example\", \"visitId\": \"92a2e98d-a51c-4cb0-aec8-495a14470821\", \"visitorName\": \"John Doe\", \"visitorPhone\": \"(111) 222-3333\"}"

response = http.request(request)
puts response.read_body

# HTTP Response Status: 200
```

``` java
/* Sample Java for the Create POST request: */

OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\"description\": \"creating an example\", \"visitId\": \"92a2e98d-a51c-4cb0-aec8-495a14470821\", \"visitorName\": \"John Doe\", \"visitorPhone\": \"(111) 222-3333\"}");
Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/call_connect")
  .post(body)
  .addHeader("accept", "application/json")
  .addHeader("authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Content-Type", "application/json")
  .build();

Response response = client.newCall(request).execute();

/* HTTP Response Status: 200 */
```
