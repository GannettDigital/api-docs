**Delete a Web Event**

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.localiqservices.com/leads/web_events/123")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Delete.new(url)
request["Authorization"] = 'token lambda_token'
request["Cache-Control"] = 'no-cache'
request["Postman-Token"] = '2c318938-465d-ccb3-c55e-99fa5d598ead'

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.localiqservices.com/leads/web_events/123")
  .delete(null)
  .addHeader("Authorization", "token lambda_token")
  .addHeader("Cache-Control", "no-cache")
  .addHeader("Postman-Token", "4f5580de-fde9-5a2e-e664-ae79e55393e6")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl -X DELETE \
  https://api.localiqservices.com/leads/web_events/123 \
  -H 'Authorization: token lambda_token' \
  -H 'Cache-Control: no-cache'
```

> On success, the above command returns http status: 200



This endpoint marks a web event as deleted.

**HTTP Request**

| Method | URI Format |
|---|---|
| DELETE | /leads/web_events/[id]|
