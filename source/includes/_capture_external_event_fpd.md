## First Party Data_Confirmed Calls


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
|provider|yes|The provider of the First Party Data.  Example:  "Acme Co."|
|calls|yes, if leads not supplied|An Array of Call Objects, defined below|

**Call Object Parameters**

|Data Field|Required|Datatype|Description|
|---|---|---|---|
|gmaid|yes|string|Global Master Advertiser ID|
|phone|yes|string|Normalized phone number of the lead|
|duration|yes|number|The duration of the call in seconds|
|recording_url|yes|string|The URL address to an audio recording of the call.|
|occurred_at|no|string|The date and time that the call occurred|
|tag|yes|integer|1: High Value, 2: Mid Value, 3: Low Value|


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
