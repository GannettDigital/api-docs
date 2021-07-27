## Capture External Event API


### Resource Overview

| Method | URI Format |
|---|---|
| POST | /capture_events/confirmed_calls |


| HTTPS Response Code | Description
|---|---|
| 200 | Successful
| 400 | Validation Error

Capture External Event API is a public ReachLocal external interface for vendors to use.
This endpoint is used to inform us of confirmed leads for First Party Data

### Parameters

**Post Body Parameters**

|Parameter | Required | Description|
|---|---|---|---|---|
|provider|yes|The provider of the First Party Day.  Example:  "Acme Co."|
|calls|yes, if leads not supplied|An Array of Call Objects, defined below|

**Call Object Parameters**

|Data Field|Required|Datatype|Description|
|---|---|---|---|
|gmaid|yes|string|Global Master Advertiser ID|
|phone|yes|string|Normalized phone number of the lead|
|duration|yes|number|The duration of the call in seconds|
|recording_url|yes|string|The URL address to an audio recording of the call.|
|occured_at|no|string|The date and time that the call occurred|
|tag|yes|integer|1: High Value, 2: Mid Value, 3: low Value|


> Examples

> Sample cURL for the Create Calls POST request:

``` shell
curl -X POST \
  https://api.localiqservices.com/capture_events/confirmed_calls \
  -H 'Content-Type: application/json' \
  -H 'accept: application/json' \
  -H 'authorization: Bearer OAUTH_ACCESS_TOKEN' \
  -d '{
  "provider": "ACME Co.",
  "calls":[
                  {
                      "occurred_at":"2017-03-10T01:19:23Z",
                      "gmaid":"USA_172717",
                      "phone":"8885551212",
                      "recording_url":"https://myrecording.com/12345", 
                      "duration":"180",
                      "tag":1
                  },
                    {
                      "occurred_at":"2017-02-10T01:19:23Z",
                      "gmaid":"USA_172717",
                      "phone":"+18885551212",
                      "recording_url":"https://myrecording.com/12346", 
                      "duration":"180",
                      "tag":1
                  }
              ]
}
'
# HTTP Response Status: 200

# Sample cURL for the Create Calls POST request with validation errors:

curl -X POST \
  https://api.localiqservices.com/capture_events/confirmed_calls \
  -H 'Content-Type: application/json' \
  -H 'accept: application/json' \
  -H 'authorization: Bearer OAUTH_ACCESS_TOKEN' \
  -d '{
        "provider": "",
        "calls":[
                        {
                            "occurred_at":"2017-03-10T01:19:23Z",
                            "gmaid":"USA_172717",
                            "phone":"8885551212",
                            "recording_url":"https://myrecording.com/12345", 
                            "duration":"180",
                            "tag":1
                        },
                          {
                            "occurred_at":"2017-02-10T01:19:23Z",
                            "gmaid":"USA_172717",
                            "phone":"+18885551212",
                            "recording_url":"https://myrecording.com/12346", 
                            "duration":"180",
                            "tag":1
                        }
                    ]
      }
'

# HTTP Response Status: 400
# HTTP Response Body:
# [
#     "Provider can't be blank"
# ]


```

``` ruby
# Sample Ruby for the Create Calls POST request:

require "uri"
require "json"
require "net/http"

url = URI("https://api.localiqservices.com/capture_events/confirmed_calls")

http = Net::HTTP.new(url.host, url.port);
request = Net::HTTP::Post.new(url)
request["Accept"] = "application/json"
request["authorization"] = 'Bearer OAUTH_ACCESS_TOKEN'
request["Content-Type"] = "application/json"
request.body = JSON.dump({
  "provider": "ACME Co.",
  "calls": [
    {
      "occurred_at": "2017-03-10T01:19:23Z",
      "gmaid": "USA_172717",
      "phone": "8885551212",
      "recording_url": "https://myrecording.com/12345",
      "duration": "180",
      "tag": 1
    },
    {
      "occurred_at": "2017-02-10T01:19:23Z",
      "gmaid": "USA_172717",
      "phone": "+18885551212",
      "recording_url": "https://myrecording.com/12346",
      "duration": "180",
      "tag": 1
    }
  ]
})

response = http.request(request)
puts response.read_body

# HTTP Response Status: 200

```

``` java
/* Sample Java for the Create Calls POST request: */

OkHttpClient client = new OkHttpClient().newBuilder()
  .build();
MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n    \"provider\":\"ACME Co.\",\n    \"calls\": [\n        {\n            \"occurred_at\":\"2017-03-10T01:19:23Z\",\n            \"gmaid\":\"USA_172717\",\n            \"phone\":\"8885551212\",\n            \"recording_url\":\"https://myrecording.com/12345\", \n            \"duration\":\"180\",\n            \"tag\":1\n        },\n          {\n            \"occurred_at\":\"2017-02-10T01:19:23Z\",\n            \"gmaid\":\"USA_172717\",\n            \"phone\":\"+18885551212\",\n            \"recording_url\":\"https://myrecording.com/12346\", \n            \"duration\":\"180\",\n            \"tag\":1\n        }\n    ]\n}");
Request request = new Request.Builder()
  .url("https://api.localiqservices.com/capture_events/confirmed_leads")
  .method("POST", body)
  .addHeader("Accept", "application/json")
  .addHeader("authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Content-Type", "application/json")
  .build();
Response response = client.newCall(request).execute();

/* HTTP Response Status: 200 */
```



### Resource Overview

| Method | URI Format |
|---|---|
| POST | /capture_events/chats |


| HTTPS Response Code | Description
|---|---|
| 200 | Successful
| 400 | Validation Error

Capture External Event API is a public ReachLocal external interface for vendors to use.
This endpoint is used to create a chat event.

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
|---|---|---|---|---|
|eventTime|yes|The date/time in UTC that the chat started|
|accountId|yes|A vendor supplied account identifier|
|data|yes|A JSON hash representing the attributes for the chat. See the following section for details|

This section defines the data parameter JSON hash:

|Data Field|Required|Datatype|Nullable|Description|
|---|---|---|---|---|
|provider|yes|string|no|The name of the service provider|
|visitId|yes|string|no|The Reach Local visitId of the chat user|
|chatDuration|yes|number|yes|The duration of the chat in seconds|
|chatSummary|yes|string|no|A summary of the chat|
|chatTextFull|yes|string|no|The full transcript of the chat|
|chatVisitorEmail|yes|string|no|The email address of the visitor|
|chatVisitorName|yes|string|no|The name of the chat visitor|
|chatVisitorPhone|no|string|no|The phone number for this chat visitor|
