## Discovery
<a name="discovery"></a>

This data is a count of each Capture event grouped by master campaign ID, referrer type, and referrer source.
This API endpoint is used to populate the Marketing Activity Report in client center.

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /capture_reports/discovery?[query_params] |

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Param|Required|Function|
|---|---|---|
|startTime|Yes|Restricts the results to those occurring on or after this date and time. If time is not specified, startTime will be the beginning of the day in UTC (T00:00:00Z)|
|endTime|Yes|Restricts the results to those occurring on or before this date and time. If time is not specified, endTime will be the end of the day in UTC (T12:59:59Z)|
|gmaid|Yes|Restrict results to the specified advertiser|
|bucket|No|place results in buckets|

### Response Data Details

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.localiqservices.com/capture_reports/discovery?startTime=2018-01-01T16:00:00Z&endTime=2018-01-14T15:59:59Z&bucket=1&gmaid=TEST_1")

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
  .url("https://api.localiqservices.com/capture_reports/discovery?startTime=2018-01-01T16:00:00Z&endTime=2018-01-14T15:59:59Z&bucket=1&gmaid=TEST_1")
  .get()
  .addHeader("Authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("Accept", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request GET \
  --url 'https://api.localiqservices.com/capture_reports/discovery?startTime=2018-01-01T16:00:00Z&endTime=2018-01-14T15:59:59Z&bucket=1&gmaid=TEST_1' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> Example Response

```json
{
    "result": {
        "counts": {
            "20180102-20180103": {
                "type": "1-days",
                "counts": []
            },
            "20180103-20180104": {
                "type": "1-days",
                "counts": []
            },
            "20180104-20180105": {
                "type": "1-days",
                "counts": []
            },
            "20180105-20180106": {
                "type": "1-days",
                "counts": []
            },
            "20180106-20180107": {
                "type": "1-days",
                "counts": []
            },
            "20180107-20180108": {
                "type": "1-days",
                "counts": []
            },
            "20180108-20180109": {
                "type": "1-days",
                "counts": []
            },
            "20180109-20180110": {
                "type": "1-days",
                "counts": []
            },
            "20180110-20180111": {
                "type": "1-days",
                "counts": [
                    {
                        "group": "PAID",
                        "type": "UNKNOWN",
                        "event_counts": [
                            {
                                "type": "Contact",
                                "sub_type": "Call",
                                "count": 1
                            }
                        ],
                        "master_campaign_id": "TEST_1"
                    }
                ]
            },
            "20180111-20180112": {
                "type": "1-days",
                "counts": [
                    {
                        "group": "ORGANIC",
                        "type": "DIRECT",
                        "event_counts": [
                            {
                                "type": "TouchPoint",
                                "sub_type": "Visit",
                                "count": 35270
                            },
                            {
                                "type": "Contact",
                                "sub_type": "Post",
                                "count": 2
                            }
                        ]
                    },
                    {
                        "group": "ORGANIC",
                        "type": "SEARCH",
                        "event_counts": [
                            {
                                "type": "TouchPoint",
                                "sub_type": "Visit",
                                "count": 26108
                            }
                        ]
                    },
                    {
                        "group": "ORGANIC",
                        "type": "OTHER",
                        "event_counts": [
                            {
                                "type": "TouchPoint",
                                "sub_type": "Visit",
                                "count": 7002
                            }
                        ]
                    },
                    {
                        "group": "ORGANIC",
                        "type": "SOCIAL",
                        "event_counts": [
                            {
                                "type": "TouchPoint",
                                "sub_type": "Visit",
                                "count": 6615
                            }
                        ]
                    },
                    {
                        "group": "NONRLPAID",
                        "type": "SEARCH",
                        "event_counts": [
                            {
                                "type": "TouchPoint",
                                "sub_type": "Visit",
                                "count": 3522
                            },
                            {
                                "type": "Contact",
                                "sub_type": "Post",
                                "count": 5
                            }
                        ]
                    },
                    {
                        "group": "ORGANIC",
                        "type": "DIRECTORY",
                        "event_counts": [
                            {
                                "type": "TouchPoint",
                                "sub_type": "Visit",
                                "count": 720
                            }
                        ]
                    },
                    {
                        "group": "NONRLPAID",
                        "type": "OTHER",
                        "event_counts": [
                            {
                                "type": "TouchPoint",
                                "sub_type": "Visit",
                                "count": 561
                            }
                        ]
                    },
                    {
                        "group": "INFLUENCED",
                        "type": "DIRECT",
                        "event_counts": [
                            {
                                "type": "TouchPoint",
                                "sub_type": "Visit",
                                "count": 963
                            }
                        ],
                        "master_campaign_id": "TEST_1"
                    }
                ]
            },
            "20180112-20180113": {
                "type": "1-days",
                "counts": []
            },
            "20180113-20180114": {
                "type": "1-days",
                "counts": []
            },
            "20180114-20180114": {
                "type": "1-days",
                "counts": []
            }
        }
    },
    "generated_at": "2018-05-04T17:03:33Z"
}
```

The body of the API response depend on whether the bucket parameter is present.

Whether it's present or not, the response will contain a result object along with a generated_at field.

The generated_at field is the date and time the report was generated.

The result object will contain an array of count objects

|Field Name|Datatype|Nullable|Description|
|---|---|---|---|
|group|String|no|INFLUENCED or ORGANIC|
|type|String|no|SEARCH, DIRECT, OTHER, UNKNOWN or SOCIAL|
|event_counts|Array|no|An array of event_count objects|
|master_campaign_id|String|Yes|The campaign to which the events are attributed|

**The event_count object**

|Field Name | Datatype | Nullable | Description|
|---|---|---|---|
|type|String|no|TouchPoint or Contact|
|sub_type|String|no|The type of event; Visit, Post, Chat or Call|
|count|Integer|no|The count of the number of events|
