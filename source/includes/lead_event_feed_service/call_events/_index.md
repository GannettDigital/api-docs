**List Call Events**

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/leads/call_events?global_master_advertiser_id=GMAID")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["accept"] = 'application/json'
request["authorization"] = 'Bearer OAUTH_ACCESS_TOKEN'

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.reachlocalservices.com/leads/call_events?global_master_advertiser_id=GMAID")
  .get()
  .addHeader("accept", "application/json")
  .addHeader("authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl -X GET \
  --url ' https://api.reachlocalservices.com/leads/call_events?global_master_advertiser_id=GMAID' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN' \
  --header 'Content-Type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "counts": {
        "unread": {
            "calls": 543,
            "chats": 556,
            "emails": 619,
            "web_events": 581,
            "total": 2299,
            "user_total": 0
        }
    },
    "lead_events": [
        {
            "id": 5288,
            "event_id": "1589",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "",
            "classification": "other",
            "platform": "USA",
            "campaign_id": "1231",
            "read": false,
            "flagged": false,
            "campaign_name": "Killer prices",
            "event_uri": "https://api.reachlocalservices.com/leads/call_events/5288",
            "source": "Organic Traffic",
            "caller_phone_number": "562.861.5742 x73119",
            "call_recording_url": "http://www.rl_record.com/1590",
            "event_time": "2018-06-15T17:16:20.000Z",
            "call_duration": 2514,
            "caller_name": "Loyal Murray DVM"
        },
        {
            "id": 5283,
            "event_id": "1579",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "",
            "classification": "unclassified",
            "platform": "USA",
            "campaign_id": "1231",
            "read": false,
            "flagged": false,
            "campaign_name": "Killer prices",
            "event_uri": "https://api.reachlocalservices.com/leads/call_events/5283",
            "source": "Organic Traffic",
            "caller_phone_number": "430.269.2225 x6481",
            "call_recording_url": "http://www.rl_record.com/1580",
            "event_time": "2018-06-15T16:29:30.000Z",
            "call_duration": 3274,
            "caller_name": "Clovis Casper"
        }
    ],
    "next_page": "https://api.reachlocalservices.com/leads/call_events?global_master_advertiser_id=TEST_1&per_page=50&last_event_seen=2018-06-13 12:52:385023&show_deleted=false"
}
```

This endpoint retrieves call events.

**HTTP Request**

| Method | URI Format |
|---|---|
| GET | /leads/call_events|

**Query Parameters**

Parameter | Required | Description
--------- | -------- | -----------
global_master_advertiser_id | yes | The global master advertiser id (for example, TEST_1).
per_page | no | The number of records to display per page.<br>**Default value is 50**
last_event_seen | no | Returns lead_events generated prior to the specified date and time. The format expected is ISO8601.
show_deleted | no | Boolean flag that when set to true queries for and only return events that have been marked as deleted.<br>**Default value is false**

**Next Page Link**

In the event that there are more than one page of results, there will be a link present in the HTTP response that can be used to return the next page of data.

If there is only one page of results, this link will not be present in the response.
