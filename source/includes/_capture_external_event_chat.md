## Capture External Events - Chat

### Resource Overview

The Capture External Event - Chat endpoint is used to send chat events to LocaliQ.


| Method | URI Format |
|---|---|
| POST | /capture_events/chats |


| HTTPS Response Code | Description
|---|---|
| 200 | Successful
| 400 | Validation Error


### Parameters

> Examples

> Sample cURL for the Create Chat POST request:

``` shell
curl -X POST \
  https://api.localiqservices.com/capture_events/chats \
  -H 'Content-Type: application/json' \
  -H 'accept: application/json' \
  -H 'authorization: Bearer OAUTH_ACCESS_TOKEN' \
  -d '{
  "eventTime": "2017-03-10T01:19:23Z",
  "accountId": "123456789",
  "data":
    {
        "provider": "SomeCompany",
        "visitId": "bd4567f4-9b90-42e6-b282-7767af1ba581",
        "chatDuration": 261.58,
        "chatSummary": "Do you have any specials going on?",
        "chatTextFull": "\u000a[2/13/2017 10:55:24 AM] elaine: Hello, thanks for contacting St. Louis Car Dealership. My name is elaine, may I have your name?\u000a  [3/9/2017 8:17:50 PM] System: All users have left the chat.",
        "chatVisitorEmail": "minneapple@gmail.com",
        "chatVisitorName": "Bob",
        "chatVisitorPhone": "6592009999"
    }

}
'
# HTTP Response Status: 200

# Sample cURL for the Create Chat POST request with validation errors:

curl -X POST \
  https://api.localiqservices.com/capture_events/chats \
  -H 'Content-Type: application/json' \
  -H 'accept: application/json' \
  -H 'authorization: Bearer OAUTH_ACCESS_TOKEN' \
  -d '{
  "eventTime": "2017-03-10T01:19:23Z",
  "accountId": "123456789",
  "data":
    {
        "provider": null,
        "visitId": "bd4567f4-9b90-42e6-b282-7767af1ba581",
        "chatDuration": 261.58,
        "chatSummary": "Do you have any specials going on?",
        "chatTextFull": "\u000a[2/13/2017 10:55:24 AM] elaine: Hello, thanks for contacting St. Louis Car Dealership. My name is elaine, may I have your name?\u000a  [3/9/2017 8:17:50 PM] System: All users have left the chat.",
        "chatVisitorEmail": "minneapple@gmail.com",
        "chatVisitorName": "Bob",
        "chatVisitorPhone": "6592009999"
    }

}
'

# HTTP Response Status: 400
# HTTP Response Body:
# [
#     "Provider can't be blank"
# ]


```

``` ruby
# Sample Ruby for the Create Chat POST request:

require 'uri'
require 'net/http'

url = URI("https://api.localiqservices.com/capture_events/chats")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["accept"] = 'application/json'
request["authorization"] = 'Bearer OAUTH_ACCESS_TOKEN'
request["Content-Type"] = 'application/json'
request.body = "{\n  \"eventTime\": \"2017-03-10T01:19:23Z\",\n  \"accountId\": \"123456789\",\n  \"data\":  \n    {\n        \"provider\": \"SomeCompany\",\n        \"visitId\": \"bd4567f4-9b90-42e6-b282-7767af1ba581\",          \n        \"chatDuration\": 261.58,\n        \"chatSummary\": \"Do you have any specials going on?\",\n        \"chatTextFull\": \"\u000a[2/13/2017 10:55:24 AM] elaine: Hello, thanks for contacting St. Louis Car Dealership. My name is elaine, may I have your name?\u000a  [3/9/2017 8:17:50 PM] System: All users have left the chat.\",\n        \"chatVisitorEmail\": \"minneapple@gmail.com\",\n        \"chatVisitorName\": \"Bob\",\n        \"chatVisitorPhone\": \"6592009999\"\n    }\n       \n}\n"

response = http.request(request)
puts response.read_body

# HTTP Response Status: 200

```

``` java
/* Sample Java for the Create Chat POST request: */

OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n  \"eventTime\": \"2017-03-10T01:19:23Z\",\n  \"accountId\": \"1213456789\",\n  \"data\":  \n    {\n        \"provider\": \"SomeCompany\",\n        \"visitId\": \"bd4567f4-9b90-42e6-b282-7767af1ba581\",          \n        \"chatDuration\": 261.58,\n        \"chatSummary\": \"Do you have any specials going on?\",\n        \"chatTextFull\": \"\u000a[2/13/2017 10:55:24 AM] elaine: Hello, thanks for contacting St. Louis Car Dealership. My name is elaine, may I have your name?\u000a  [3/9/2017 8:17:50 PM] System: All users have left the chat.\",\n        \"chatVisitorEmail\": \"minneapple@gmail.com\",\n        \"chatVisitorName\": \"Bob\",\n        \"chatVisitorPhone\": \"6592009999\"\n    }\n       \n}\n");
Request request = new Request.Builder()
  .url("https://api.localiqservices.com/capture_events/chats")
  .post(body)
  .addHeader("accept", "application/json")
  .addHeader("authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Content-Type", "application/json")
  .build();

Response response = client.newCall(request).execute();

/* HTTP Response Status: 200 */
```

**Post Body Parameters**

|Parameter | Required | Description|
|---|---|---|
|eventTime|yes|The date/time in UTC that the chat started|
|accountId|yes|A vendor supplied account identifier|
|data|yes|A JSON hash representing the attributes for the chat. See the following section for details|

This section defines the data parameter JSON hash:

|Data Field|Required|Description|
|---|---|---|
|provider|yes|The name of the service provider|
|visitId|yes|The LocaliQ visitId of the chat user|
|chatDuration|yes|The duration of the chat in seconds|
|chatSummary|yes|A summary of the chat|
|chatTextFull|yes|The full transcript of the chat|
|chatVisitorEmail|yes|The email address of the visitor|
|chatVisitorName|yes|The name of the chat visitor|
|chatVisitorPhone|no|The phone number for this chat visitor|

| HTTPS Response Code | Description
|---|---|
| 200 | Successful
| 400 | Validation Error
