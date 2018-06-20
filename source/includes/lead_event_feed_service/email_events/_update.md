### Update a Email Event

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/leads/email_events/123.json")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Put.new(url)
request["Authorization"] = 'token lambda_token'
request["Content-Type"] = 'application/json'
request["Cache-Control"] = 'no-cache'
request.body = "{\n\t\"read\":\"true\",\n\t\"flagged\":\"true\"\n}"

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\n\t\"read\":\"true\",\n\t\"flagged\":\"true\"\n}");
Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/leads/email_events/123.json")
  .put(body)
  .addHeader("Authorization", "token lambda_token")
  .addHeader("Content-Type", "application/json")
  .addHeader("Cache-Control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl -X PUT \
  https://api.reachlocalservices.com/leads/email_events/123.json \
  -H 'Authorization: token lambda_token' \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
	"read":"true",
	"flagged":"true"
}'
```

> On success, the above command returns http status: 200 and the message, 'Email Event successfully updated.'

This endpoint updates a call event. Using the API, you can update the following properties: **`notes`**, **`classification`**, **`read`**, **`flagged`**, and **`deleted`**.

The following are valid event classification values:

* `unclassified`
* `sale`
* `lead`
* `inquiry`
* `other`

**HTTP Request**

`PUT https://api.reachlocalservices.com/leads/email_events/[id]`
