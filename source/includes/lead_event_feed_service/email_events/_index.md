**List Email Events**

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.localiqservices.com/leads/email_events?global_master_advertiser_id=TEST_1")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["Authorization"] = 'Bearer OAUTH_ACCESS_TOKEN'
request["Cache-Control"] = 'no-cache'

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.localiqservices.com/leads/email_events?global_master_advertiser_id=TEST_1")
  .get()
  .addHeader("Authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Cache-Control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl -X GET \
  --url ' https://api.localiqservices.com/leads/email_events?global_master_advertiser_id=GMAID' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN' \
  --header 'Content-Type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "counts": {
        "unread": {
            "calls": 0,
            "chats": 0,
            "emails": 0,
            "web_events": 0,
            "total": 0,
            "user_total": 0
        }
    },
    "lead_events": [
        {
            "id": 265,
            "event_id": "1196",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "Kill my boss? Do I dare live out the American dream?",
            "classification": "unclassified",
            "platform": "USA",
            "campaign_id": "1231",
            "read": false,
            "flagged": false,
            "campaign_name": "Premium prices",
            "event_uri": "https://api.localiqservices.com/leads/email_events/265",
            "source": "Organic Traffic",
            "sender_name": "Ettie McLaughlin",
            "sender_email": "oda@shanahan.io",
            "address": "Kozeyport, NH",
            "event_time": "2018-05-08T17:17:55.000Z"
        },
        {
            "id": 555,
            "event_id": "2410",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "",
            "classification": "unclassified",
            "platform": "USA",
            "campaign_id": "1232",
            "read": false,
            "flagged": false,
            "campaign_name": "Special savings",
            "event_uri": "https://api.localiqservices.com/leads/email_events/555",
            "source": "Organic Traffic",
            "sender_name": "Ms. Beth Waelchi",
            "sender_email": "felipe_padberg@rice.info",
            "address": "New Julio, OR",
            "event_time": "2018-05-08T15:14:41.000Z"
        }
    ],
    "next_page": "https://api.localiqservices.com/leads/email_events?global_master_advertiser_id=TEST_1&per_page=50&last_event_seen=2018-05-06 04:30:33584&show_deleted=false"
}
```

This endpoint retrieves email events.

**HTTP Request**

| Method | URI Format |
|---|---|
| GET | /leads/email_events|

**Query Parameters**

Parameter | Required | Default | Description
--------- | -------- |-------- | -----------
global_master_advertiser_id | yes | none | The global master advertiser id (for example, TEST_1).
per_page | no | 50 | The number of records to display per page.
last_event_seen | no | none | Returns lead_events generated prior to the specified date and time. The format expected is ISO8601.
show_deleted | no | false | Boolean flag that when set to true queries for and only return events that have been marked as deleted.

**Next Page Link**

In the event that there are more than one page of results, there will be a link present in the HTTP response that can be used to return the next page of data.

If there is only one page of results, this link will not be present in the response.
