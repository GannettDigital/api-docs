## Register CRM Webhooks
This endpoint supports integration with CRM products. It enables registrtation for webhook callbacks when new contacts or contact interactions occur.  It requires the the following parameters for a successful response Gmaid (advertiser ID).

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/crm/webhooks?global_master_advertiser_id=USA_142687")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["Authorization"] = 'OAUTH_ACCESS_TOKEN'
request["Content-Type"] = 'application/json'
request.body = "{ \"event_type\": \"new_contact\", \"url\": \"https://my.webhook.site/new_contact\", \"authorization\": \"token jokin\" }"

response = http.request(request)
puts response.read_body
```

```java
OOkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{ \"event_type\": \"new_contact\", \"url\": \"https://my.webhook.site/new_contact\", \"authorization\": \"token jokin\" }");
Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/crm/webhooks?global_master_advertiser_id=USA_142687")
  .post(body)
  .addHeader("Authorization", "OAUTH_ACCESS_TOKEN")
  .addHeader("Content-Type", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request POST \
  --url 'https://api.reachlocalservices.com/crm/webhooks?global_master_advertiser_id=USA_142687' \
  --header 'Authorization: OAUTH_ACCESS_TOKEN' \
  --header 'Content-Type: application/json' \
  --data '{ "event_type": "new_contact", "url": "https://my.webhook.site/9995ad74-3c32-4e6c-aa8f-25da0fd419d9/new_contact", "authorization": "token jokin" }'
```

> The above command returns JSON structured like this:

```json
{
    "id": "84+USA_142687"
}
```

This ID will be needed in the event the user chooses to de-register the webhook.

### HTTP Request

`POST https://api.reachlocalservices.com/crm/webhooks`

### Query Parameters

Parameter | Required | Default | Description
--------- | -------- |-------- | -----------
global\_master\_advertiser\_id | yes | none | The global master advertiser id (for example, USA_142687).

### Response Body
The body of the API response will the id of the webhook.

#### MetaData
Field Name | Description
---------- | -----------
id | identifier of the webhook registration.


## De-register CRM Webhook

This endpoint De-registers a webhook created using the above register webhook method.  The ID returned by the register method is used to de-register the webhook.

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/crm/webhooks/84+USA_142687")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Delete.new(url)
request["Authorization"] = 'OAUTH_ACCESS_TOKEN'
request["Content-Type"] = 'application/json'

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/crm/webhooks/84+USA_142687")
  .delete(null)
  .addHeader("Authorization", "OAUTH_ACCESS_TOKEN")
  .addHeader("Content-Type", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request DELETE \
  --url 'https://api.reachlocalservices.com/crm/webhooks/84+USA_142687' \
  --header 'Authorization: OAUTH_ACCESS_TOKEN' \
  --header 'Content-Type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "id": "84+USA_142687"
}
```

### HTTP Request

`DELETE https://api.reachlocalservices.com/crm/webhooks/[id]`

### Response Status Code

A response status code of 200 indicates that the webhook was successfully de-registered.
A response status code of 404 indicates that the webhook ID was not found.

### Response Body
The body of the API response will the id of the webhook that was deleted.

#### MetaData
Field Name | Description
---------- | -----------
id | identifier of the webhook registration.
