## Identity

The identity endpoint is used to gain insight into what resources are accessible by a user.

### Show identity

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/identities/EMAIL_ADDRESS")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["Authorization"] = 'Bearer OAUTH_ACCESS_TOKEN'
request["Accept"] = 'application/json'

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/identities/EMAIL_ADDRESS")
  .get()
  .addHeader("Authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Accept", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request GET \
  --url https://api.reachlocalservices.com/identities/EMAIL_ADDRESS \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> The above command returns JSON structured like this:

```json
{
    "bu_id": 449848,
    "user": "EMAIL_ADDRESS",
    "business_id": 2,
    "country": "USA",
    "authorized_advertisers": [
        {
            "name": "Awesome Advertiser",
            "platform": "USA",
            "gmaid": "USA_224767",
            "hipaa_protected": false
        },
        {
            "name": "ACME Corporation",
            "platform": "USA",
            "gmaid": "USA_142687",
            "hipaa_protected": false
        }
    ]
}
```
### Resource Overview

| Method | URI Format |
|---|---|
| GET | /identities/[email address] |

### Usage
This endpoint retrieves the identity of the provided user email address.

### Response Body
The body of the API response will be a JSON objects.

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
bu_id | Number | no | The unique business user id.
user | String | no | The email address of the business user.
business_id | Number | no | The unique business id that this business user belongs to.
country | String | no | The region that this business user belongs.
authorized_advertisers | Array | no | An array of JSON advertiser objects.

The advertiser is a JSON object.

Advertiser Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
name | String | no | The name of the advertiser.
platform | String | no | The platform for the advertiser.
gmaid | String | no | The global master advertiser id of the advertiser.
hipaa_protected | String | no | The advertiser's HIPAA protection status
