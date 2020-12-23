**List Chat Events**

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.reachlocalservices.com/leads/chat_events?global_master_advertiser_id=TEST_1")

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
  .url("https://api.reachlocalservices.com/leads/chat_events?global_master_advertiser_id=TEST_1")
  .get()
  .addHeader("Authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Cache-Control", "no-cache")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl -X GET \
  --url ' https://api.reachlocalservices.com/leads/chat_events?global_master_advertiser_id=GMAID' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN' \
  --header 'Content-Type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "counts": {
        "unread": {
            "calls": 541,
            "chats": 558,
            "emails": 622,
            "web_events": 599,
            "total": 2320,
            "user_total": 0
        }
    },
    "lead_events": [
        {
            "id": 580,
            "event_id": "3182",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "",
            "classification": "unclassified",
            "platform": "USA",
            "campaign_id": "1232",
            "read": false,
            "flagged": false,
            "campaign_name": "Premium promos",
            "event_uri": "https://api.reachlocalservices.com/leads/chat_events/580",
            "source": "Organic Traffic",
            "event_time": "2018-06-15T16:26:50.000Z",
            "lead_type": "",
            "lead_phone_number": "740-329-3026",
            "lead_email_address": "kiana_jenkins@abbott.co",
            "lead_name": "Ms. Norberto Hammes",
            "transcript": "Ipsum incidunt laboriosam quisquam vel molestiae. Accusantium consectetur quos. Aut voluptatem cupiditate. Rerum ipsa ipsam."
        },
        {
            "id": 575,
            "event_id": "3177",
            "deleted": false,
            "global_master_advertiser_id": "TEST_1",
            "global_master_campaign_id": "TEST_1",
            "note": "",
            "classification": "unclassified",
            "platform": "USA",
            "campaign_id": "1232",
            "read": false,
            "flagged": false,
            "campaign_name": "Premium promos",
            "event_uri": "https://api.reachlocalservices.com/leads/chat_events/575",
            "source": "Organic Traffic",
            "event_time": "2018-06-15T15:30:46.000Z",
            "lead_type": "",
            "lead_phone_number": "1-337-472-2312 x56916",
            "lead_email_address": "kyleigh.marks@romaguera.biz",
            "lead_name": "Royal Hickle Jr.",
            "transcript": "Laudantium omnis aut rem recusandae ab. Quasi culpa aspernatur itaque ut quisquam quidem placeat. Suscipit et facere minus vel. Cumque libero ut. Ut rem et beatae perspiciatis omnis."
        }
    ],
    "next_page": "https://api.reachlocalservices.com/leads/chat_events?global_master_advertiser_id=TEST_1&per_page=50&last_event_seen=2018-06-13 02:19:5122&show_deleted=false"
}
```

This endpoint retrieves chat events.

**HTTP Request**

| Method | URI Format |
|---|---|
| GET | /leads/chat_events|

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
