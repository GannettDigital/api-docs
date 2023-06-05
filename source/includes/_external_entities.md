## External Entities

The External Entities endpoint is used to create an external entity in the system. These objects represent identifiers in external systems that need to be used to link LIPS events with entities in those systems (e.g. contacts.)

### Create

### HTTP Request

| Method | URI Format |
|---|---|
| POST | `https://api.localiqservices.com/external_entities` |

### HTTP Response Codes

| Status Code | Description |
|---|---|
| 200 | Successful |
| 404 | Not Found (When an `event_id` is given but no event is found) |
| 404 | Not Found (When an `external_app_id` is given but no external_app is found) |
| 422 | Validation Error (When required parameters are missing) |

### Post Body Parameters

| Parameter | Required | Description |
|---|---|---|
| global_master_advertiser_id | Yes | The global master advertiser ID (e.g "USA_1"). |
| external_id | Yes | The external ID (e.g "12345"). |
| external_app_id | Yes | The external app ID (e.g "CC"). |
| event_id | No | The event ID (e.g 321) to associate with the external entity. |

## Examples

### Sample cURL for the Create POST request:

```shell
curl -X POST \
  https://api.localiqservices.com/external_entities \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: token reachconvert' \
  -d '{
  "external_entity": {
    "global_master_advertiser_id": "USA_1",
    "external_id": "12345",
    "external_app_id": "CC",
    "event_id": 321
  }
}'
```

`HTTP Response Status: 200`

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.localiqservices.com/external_entities")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["accept"] = 'application/json'
request["authorization"] = 'token reachconvert'
request["Content-Type"] = 'application/json'
request.body = "{\"external_entity\": {\"global_master_advertiser_id\": \"USA_1\", \"external_id\": \"12345\", \"external_app_id\": \"CC\", \"event_id\": 321}}"

response = http.request(request)
puts response.read_body
```

`HTTP Response Status: 200`
