## Identity API
<a name="identity_api"></a>

The identity endpoint is used to gain insight into the resources that are accessible by an advertiser.  It will return advertisers that the user is authorized to retrieve data for, the active state of the advertisers, and the privilege details used to determine HIPAA access.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /identities/v3?[params] |

**Usage**

Get a list of advertisers filtered by query params. This endpoint also returns a list of possible business users that match the email address, in the case of multiple similar email addresses. The results of this query are cached for 15 minutes.

### Parameters

| Param | Required | Description |
|---|---|---|
|user| Yes | Restricts the results to advertisers authorized for the given business user |
| business_id |No|The unique business id that this advertiser belongs to.|
| active_state |No|Array of active states that can include: 0: Advertiser not active. 1: Advertiser not active, but in grace period. 2: Advertiser is active|
| page| No | Return a specified page of results. <br><b>Default value: 1</b> |
| page_size | No | Number of results per page <br><b>Default value: 5000</b> |
 
<% if false %>
| gmaid |No|Identifier for advertiser|
| advertiser_id |No|This is an ID assigned to a client at the time of sale. This is an internal LocaliQ data construct used for internal purposes|
| cobrand_id |No|An ID used to uniquely identify a cobrand; given to a collection of of business or BID. This is an internal LocaliQ data construct used for internal purposes|
| exclude_inactive | No | Returns only active advertisers <br><b>Default value: true</b>|
| advertiser_code |No|Non-unique identifier. This is an internal LocaliQ data construct used for internal purposes|
| business_category |No|LocaliQ’s categorization of the client’s business e.g. Home & Home improvement, Real Estate, Automotive-For Sale etc|
| business_sub_category |No|LocaliQ’s sub categorization within client’s business category. e.g. Real Estate -- Inspection, Real Estate -- Appraisers, Automobile Dealer (General - New), Automobile Dealer (General - Used) etc|
| advertiser_name |No|Restrict results to one or more specific advertiser with the given advertiser name|
| business_name |No|Restrict results to one or more specific advertiser with the given business name|
<% end %>

### Response Data Details

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.localiqservices.com/identities/v3?user=EMAIL_ADDRESS")

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
  .url("https://api.localiqservices.com/identities/v3?user=EMAIL_ADDRESS")
  .get()
  .addHeader("Authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Accept", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request GET \
  --url https://api.localiqservices.com/identities/v3?user=EMAIL_ADDRESS \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> Example Response

```json
https://api.localiqservices.com/identities/v3?user=test@test3.com

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
            "active_state": 2,
            "cobrand_id": 1123213,
            "cobrand_name": "test"
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
            "active_state": 2,
            "cobrand_id": 1123213,
            "cobrand_name": "test"
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

```shell
curl --request GET \
  --url https://api.localiqservices.com/identities/v3?user=EMAIL_ADDRESS&business_id=15 \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> Example Response

```json
https://api.localiqservices.com/identities/v3?user=test@test3.com

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
            "business_id": 15,
            "business_name": "Test Name 1",
            "business_user_id": 1,
            "privilege_level": 3,
            "advertiser_id": 1,
            "active_state": 2,
            "cobrand_id": 1123213,
            "cobrand_name": "test"
        },
        {
            "name": "Test Advertiser 2",
            "gmaid": "TEST_2",
            "platform": "TEST",
            "hipaa_protected": true,
            "business_id": 15,
            "business_name": "Test Name 2",
            "business_user_id": 2,
            "privilege_level": 3,
            "advertiser_id": 2,
            "active_state": 2,
            "cobrand_id": 1123213,
            "cobrand_name": "test"
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

```shell
curl --request GET \
  --url https://api.localiqservices.com/identities/v3?user=EMAIL_ADDRESS&active_state[]=0 \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> Example Response

```json
https://api.localiqservices.com/identities/v3?user=test@test3.com

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
            "active_state": 0,
            "cobrand_id": 1123213,
            "cobrand_name": "test"
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
            "active_state": 0,
            "cobrand_id": 1123213,
            "cobrand_name": "test"
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
business_name | Number | The business name of this advertiser.
business_user_id | Number | The unique business_user id that is the primary user for this advertiser.
privilege_level | Number | privilege level.
advertiser_id | Number | The advertiser_id for this advertiser.  Not necessarily the same as the numerical portion of the gmaid.
active_state | Number | 0: Advertiser not active.  1: Advertiser not active, but in grace period.  2: Advertiser is active.
cobrand_name | Number | Name given to a collection of of business or BID.  This is an internal LocaliQ data construct used to aggregate like businesses e.g. partner, Gannett etc.
cobrand_id | Number | An ID used to  uniquely identify a cobrand.

**User**

Advertiser Field Name | Datatype | Description
---------- | -------- | -----------
platform | String | The platform for the advertiser.
bu_id | Number | The unique business user id.
email | String | The global master advertiser id of the advertiser.
business_id | Number| The unique business id that this business user belongs to.
name | String | The name of the user.
privilege_level | Number | privilege level of the business user. PL3 is required to access HIPAA protected data.

