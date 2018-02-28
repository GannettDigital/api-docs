# Capture External Event

Capture External Event API is a public ReachLocal external interface for vendors to use.

## Authorization - Capture

All requests must include an [Authorization](#authentication) header.

The email address used to obtain the OAuth access token must be associated with the GMAID of the requested advertiser.  If it is not, the API will return an HTTP response with status code 403 and the following body:

`{ "message": "Forbidden" }`

## Create Chat Event

This endpoint is used to create a chat event.

### HTTP Request

| Method | URI Format |
|---|---|
| POST | https://api.reachlocalservices.com/capture_events/chats |

### HTTP Response Codes
| Status Code | Description
|---|---|
| 200 | Successful
| 400 | Validation Error 

### Post Body Parameters

Parameter | Required | Datatype | Nullable | Description
--------- | -------- | -------- | -------- | -----------
eventTime | yes  | string | no | The date/time in UTC that the chat started.
advertiserId | yes  | string | no | The global master advertiser id (for example, USA_142687).
data | yes | string | no | A JSON hash representing the attributes for the chat. See the following section for detail.

This section defines the data parameter JSON hash.

Data Field | Required | Datatype | Nullable | Description
--------- | -------- | -------- | -------- | -----------
provider | yes | string | no | The name of the service provider i.e. Nanorep.
visitId | yes | string | no | The Reach Local visitId of the chat user.
chatDuration | yes | number | yes | The duration of the chat in seconds.
chatSummary | yes | string | no | A summary of the chat.
chatTextFull | yes | string | no | The full text of the chat.
chatVisitorEmail |yes | string | no | The email address of the visitor.
chatVisitorName | yes | string | no | The name of the chat visitor.
chatVisitorPhone | yes | string | no | The phone number for this chat visitor.

### Examples:



``` shell
# Sample cURL for the Create Chat POST request:

curl -X POST \
  https://api.reachlocalservices.com/capture_events/chats \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -H 'Postman-Token: 37301914-7914-da1c-66ab-9ea0066ae3fb' \
  -H 'accept: application/json' \
  -H 'authorization: Token test_token' \
  -d '{
  "eventTime": "2017-03-10T01:19:23Z",
  "advertiserId": "USA_523846",
  "data":  
    {
        "provider": "NanoRep",
        "visitId": "bd4567f4-9b90-42e6-b282-7767af1ba581",          
        "chatDuration": 261.58,
        "chatSummary": "Do you have any specials going on?",
        "chatTextFull": "u000a[2/13/2017 10:55:24 AM] elaine: Hello, thanks for contacting St. Louis Car Dealership. My name is elaine, may I have your name?u000a  [3/9/2017 8:17:50 PM] System: All users have left the chat.",
        "chatVisitorEmail": "minneapple@gmail.com",
        "chatVisitorName": "Bob",
        "chatVisitorPhone": "6592009999"
    }
       
}
'
# HTTP Response Status: 200

# Sample cURL for the Create Chat POST request with validation errors:

curl -X POST \
  https://api.reachlocalservices.com/capture_events/chats \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -H 'Postman-Token: 37301914-7914-da1c-66ab-9ea0066ae3fb' \
  -H 'accept: application/json' \
  -H 'authorization: Token test_token' \
  -d '{
  "eventTime": "2017-03-10T01:19:23Z",
  "advertiserId": "USA_523846",
  "data":  
    {
        "provider": null,
        "visitId": "bd4567f4-9b90-42e6-b282-7767af1ba581",          
        "chatDuration": 261.58,
        "chatSummary": "Do you have any specials going on?",
        "chatTextFull": "u000a[2/13/2017 10:55:24 AM] elaine: Hello, thanks for contacting St. Louis Car Dealership. My name is elaine, may I have your name?u000a  [3/9/2017 8:17:50 PM] System: All users have left the chat.",
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

url = URI("https://api.reachlocalservices.com/capture_events/chats")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["accept"] = 'application/json'
request["authorization"] = 'Token test_token'
request["Cache-Control"] = 'no-cache'
request["Postman-Token"] = 'd2af928d-7ef3-5186-74a8-bb657a31a198'
request["Content-Type"] = 'application/json'
request.body = "{\n  \"eventTime\": \"2017-03-10T01:19:23Z\",\n  \"advertiserId\": \"USA_523846\",\n  \"data\":  \n    {\n        \"provider\": \"NanoRep\",\n        \"visitId\": \"bd4567f4-9b90-42e6-b282-7767af1ba581\",          \n        \"chatDuration\": 261.58,\n        \"chatSummary\": \"Do you have any specials going on?\",\n        \"chatTextFull\": \"u000a[2/13/2017 10:55:24 AM] elaine: Hello, thanks for contacting St. Louis Car Dealership. My name is elaine, may I have your name?u000a  [3/9/2017 8:17:50 PM] System: All users have left the chat.\",\n        \"chatVisitorEmail\": \"minneapple@gmail.com\",\n        \"chatVisitorName\": \"Bob\",\n        \"chatVisitorPhone\": \"6592009999\"\n    }\n       \n}\n"

response = http.request(request)
puts response.read_body

# HTTP Response Status: 200

```

``` java
/* Sample Java for the Create Chat POST request: */

OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n  \"eventTime\": \"2017-03-10T01:19:23Z\",\n  \"advertiserId\": \"USA_523846\",\n  \"data\":  \n    {\n        \"provider\": \"NanoRep\",\n        \"visitId\": \"bd4567f4-9b90-42e6-b282-7767af1ba581\",          \n        \"chatDuration\": 261.58,\n        \"chatSummary\": \"Do you have any specials going on?\",\n        \"chatTextFull\": \"u000a[2/13/2017 10:55:24 AM] elaine: Hello, thanks for contacting St. Louis Car Dealership. My name is elaine, may I have your name?u000a  [3/9/2017 8:17:50 PM] System: All users have left the chat.\",\n        \"chatVisitorEmail\": \"minneapple@gmail.com\",\n        \"chatVisitorName\": \"Bob\",\n        \"chatVisitorPhone\": \"6592009999\"\n    }\n       \n}\n");
Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/capture_events/chats")
  .post(body)
  .addHeader("accept", "application/json")
  .addHeader("authorization", "Token test_token")
  .addHeader("Cache-Control", "no-cache")
  .addHeader("Postman-Token", "7e05e080-4568-2af8-04a0-241b574e3cc0")
  .addHeader("Content-Type", "application/json")
  .build();

Response response = client.newCall(request).execute();

/* HTTP Response Status: 200 */
```
