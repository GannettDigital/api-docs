## Liine Conversion Event Webhook

The LocaliQ webhook API is a REST endpoint secured via OAuth designed to receive conversion event notifications from Liine. Each Liine conversion event captures detailed patient interactions throughout the entire engagement funnel, including initial contact, form submissions, phone calls, chat conversations, and appointment bookings. These events are sent via HTTP POST requests to the API, enabling seamless integration and real-time tracking of patient behavior for healthcare providers.

The API expects structured event payloads that represent patient journey milestones, facilitating accurate recording and analysis of conversion metrics. Successful event submissions are acknowledged by a 201 status code, confirming proper receipt and processing of the data.

### OAuth
Access to the API endpoint is secured using OAuth.  Interacting with the LocaliQ OAuth is described [here](https://doc.api.localiq.com/#step-2-authorization-authentication).

### HTTP Request

| Method | URI Format |
|---|---|
| POST | https://api.localiqservices.com/liine/conversion_events |

### HTTP Response

| Status Code | Description |
|---|---|
| 201 | Successful |
| 422 | Validation Error |

### Post Body

| Parameter | Required | Description |
|---|---|---|
| Notifications | yes | Array or zero or more conversion events. |

The contents of a Notification are defined [here](https://help.liine.com/en/articles/11033343-liine-conversion-upload-file-data-dictionary-attribution-framework) under the Field-Level Data Dictionary section.

### Sample cURL:

```
curl --location 'https://api.localiqservices.com/liine/conversion_events' \
--header 'Authorization: Bearer TVJ2pc8p1MTO9I-QbuAT-F4_FFO3PEtygRU7UER32dw' \
--header 'Content-Type: application/json' \
--data-raw '{
    "liine_interaction_id": "a9b1e0ff1d7c4c2da00a051b56ba1a8b",
    "Attempt": 1,
    "Properties": {
      "CollectionType": "call_complete",
      "UTC": "2016-05-04T17:17:41" 
    },
    "Notifications": [
      {
        "action": "Call Complete",
        "liine_interaction_id": "0ff7c4cda00a051b56ba1a8b",
        "liine_lead_id": "5bb12154-ec1-4eb9-8b34-47a9aaad7e66",
        "phone_number_of_lead": "13362647694",
        "name": "Liine User",
        "email": "user@liine.com",
        "tracking_number_called": "16123159846",
        "receiving_number": "19052198287", 
        "start_time": "2016-05-04T13:17:24",
        "answer_time": "2016-05-04T13:17:24",
        "end_time": "2016-05-04T13:19:24",
        "duration": 120,
        "call_status": "Answered",
        "direction": "inbound",
        "outcome": "Booked",
        "practice_location": "Atlanta, GA (LocalIQ TEST_555555)",
        "localiq_gmaid": "TEST_555555",
        "link_to_audio": "https://app.liine.com/dashboard/call_details/a9b1e0ff1d7c4c2da00a051b56ba1a8b",
        "revenue": "49.50",
        "AttributionDetails": {
          "liine_session_id": "37ddebff-9c0d-40bf-a4ae-28a8c902e53e",
          "initial_touch_marketing_channel": "Google Ads",
          "last_touch_marketing_channel": "Google Organic",
          "initial_touch_lp:": "http://test.com?utm=...",
          "last_touch_lp": "http://test.com/",
          "initial_touch_rp": "google.com",
          "last_touch_rp": "google.com",
          "utm_medium": "testing",
          "utm_source": "google",
          "utm_campaign": "search",
          "utm_content": "banner1",
          "scid": "testscid",
          "kw": "testkw",
          "pub_cr_id": "testpubcrid",
          "device": "testdevice",
          "network": "testnetwork",
          "targetid": "test",
          "loc_interest_ms": "test",
          "loc_physical_ms": "test",
          "rl_key": "test",
          "gad_source": "test",
          "tc": "test",
          "gclid": "test",
          "gbraid": "test",
          "wbraid": "test",
          "msclkid": "test",
          "fbclid": "test"
        }
      }
    ]
  }'
```

### Validation:

The localiq_gmaid field is required, if it is not present or is in an unexpected format, the request will be rejected with a HTTP 422 response and the following body:

```
[
    {
        "attribute": "localiq_gmaid",
        "message": "can't be blank"
    }
]
```

Uniqueness of liine_interaction_id is enforced, if a duplicate liine_interaction_id is presented, it will be rejected with a HTTP 422 response code and the following body

```
[
    {
        "attribute": "liine_interaction_id",
        "message": " is already associated with this integration application"
    }
]
```
