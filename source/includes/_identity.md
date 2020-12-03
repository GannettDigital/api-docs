## Identity API
<a name="identity_api"></a>

The identity endpoint is used to gain insight into what resources are accessible by a user.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /identities/v3?[params] |

**Usage**

Get a list of advertisers filtered by query params. This endpoint also returns a list of possible business users that match the email address, in the case of multiple similar email addresses. The results of this query are cached for 15 minutes.

### Parameters

| Param | Required | Default | Function |
|---|---|---|---|
|user| Yes | -- | Restricts the results to advertisers authorized for the given business user |
|exclude_inactive| No |false| Returns only active advertisers |
| page| No | 1 | Return a specified page of results |
| page_size | No | 5000 | Number of results per page |

### Response Data Details

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/identities/v3?user=EMAIL_ADDRESS")

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
  .url("https://api.reachlocalservices.com/identities/v3?user=EMAIL_ADDRESS")
  .get()
  .addHeader("Authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Accept", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request GET \
  --url https://api.reachlocalservices.com/identities/v3?user=EMAIL_ADDRESS \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> Example Response

```json
https://api.reachlocalservices.com/identities/v3?user=test@test3.com

{
    "bu_id": 1,
    "user": "EMAIL_ADDRESS",
    "business_id": 1,
    "country": "USA",
    "advertiser_count": 2,
    "page": 1,
    "page_size": 5000,
    "authorized_advertisers": [
        {
            "name": "Test Advertiser 1",
            "gmaid": "TEST_1",
            "platform": "TEST",
            "hipaa_protected": false,
            "business_id": 1,
            "business_name": "Test Name 1",
            "business_user_id": 1,
            "privilege_level": 3,
            "advertiser_id": 1,
            "active_state": 2
        },
        {
            "name": "Test Advertiser 2",
            "gmaid": "TEST_2",
            "platform": "TEST",
            "hipaa_protected": true,
            "business_id": 2,
            "business_name": "Test Name 2",
            "business_user_id": 2,
            "privilege_level": 3,
            "advertiser_id": 2,
            "active_state": 2
        }
    ],
    "users": [
        {
            "platform": "TEST",
            "buid": 1,
            "email": "EMAIL_ADDRESS",
            "business_id": 2,
            "name": "test",
            "privilege_level": 3
        }
    ]
}
```

The body of the API response will be a JSON object.

Field Name | Datatype | Description
---------- | -------- | -----------
bu_id | Number | The unique business user id.
user | String | The email address of the business user.
business_id | Number| The unique business id that this business user belongs to.
country | String | The region that this business user belongs.
advertiser_count | String | The region that this business user belongs.
page | String | The region that this business user belongs.
page_size | String | The region that this business user belongs.
authorized_advertisers | Array | An array of JSON advertiser objects.
users | Array | An array of JSON user objects.

**Authorized Advertiser**

Advertiser Field Name | Datatype | Description
---------- | -------- | -----------
name | String | The name of the advertiser.
platform | String | The platform for the advertiser.
gmaid | String | The global master advertiser id of the advertiser.
hipaa_protected | String | The advertiser's HIPAA protection status
business_id | Number | The unique business id that this advertiser belongs to.
business_user_id | Number | The unique business_user id that is the primary user for this advertiser.
privilege_level | Number | privilege level.
adveritser_id | Number | The advertiser_id for this advertiser.  Not necessarily the same as the numerical portion of the gmaid.
active_state | Number | 0: Advertiser not active.  1: Advertiser not active, but in grace period.  2: Advertiser is active.

**User**

Advertiser Field Name | Datatype | Description
---------- | -------- | -----------
platform | String | The platform for the advertiser.
bu_id | Number | The unique business user id.
email | String | The global master advertiser id of the advertiser.
business_id | Number| The unique business id that this business user belongs to.
name | String | The name of the user.
privilege_level | Number | privilege level.

