### **BookingEvents**
<a name="lips_booking_events"></a>
## Booking Events API

Also referred to as "contact interactions", *events* are activities associated with a contact.  The event is a booking event.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `show` |booking_events/:booking_id|
| PUT `update` | /booking_events/:booking_id |
| PUT `update` | /booking_events/:booking_id/unarchive |
| DELETE `destroy` | /booking_events/:booking_id |

### GET (SHOW)
Show a single booking event by booking_id which is a string value

#### Examples:
```

curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/booking_events/123-asd
```
#### Example Response

```json
{
    "id": 1001,
    "campaign_name": "Boats | Boats | Boats",
    "global_master_advertiser_id": "USA_31253",
    "global_master_campaign_id": "USA_1234567",
    "sub_type": "Booking",
    "referrer_type": "UNKNOWN",
    "referrer_source": "PAID",
    "influencing_campaign": "",
    "notes": "some notes",
    "occurred_at": "2022-02-18T15:14:42.000Z",
    "channel": null,
    "external_source": "capture",
    "event_type": "BookingEvent",
    "important": false,
    "read": false,
    "contact": {
        "id": 2000,
        "first_name": "Unknown",
        "last_name": null,
        "display_name": "Unknown Somebody",
        "email": null,
        "company": null,
        "title": null,
        "phone_numbers": [],
        "created_at": "2022-02-23T13:35:56.855Z"
    },
    "booking": {
        "booking_id": "123-asd",
        "extra_fields": {
            "city": null,
            "region": null,
            "postcode": null,
            "visit_id": "2xzadfg72-464e-41c3-9029-cf60cfe20721",
            "address_1": null,
            "address_2": null,
            "booking_time": null,
            "booking_type": null,
            "booking_status": null,
            "booking_summary": null,
            "appointment_time": null,
            "problem_description": "Problem description"
        }
    }
}
```
### PUT (UPDATE)

Update an existing contact_interaction.

|Parameter|Type|Required|Description|
|---|---|---|---|
|read|boolean|No|Check if event is marked as read|
|important|boolean|No|Check if event is marked as important|


Fields marked as required aren't necessarily required in the request, but are required on the resulting object.

#### Examples:

```
curl --location --request PUT 'https://data-connect-lips.gannettdigital.com/booking_events/123-asd' \
--header 'Authorization: {auth_token}' \
--header 'Content-Type: application/json' \
--data-raw '
    {
        "event": { "important": false, "read": true}
    }
'
```

example success response (HTTP status 2xx):

```
{
    "event": "successfully updated!"
}
```

### DELETE (destroy)

```
curl -L -X DELETE 'https://data-connect-lips.gannettdigital.com/booking_events/123-asd' \
-H 'Authorization: 1b01Secret'
```

A successful response will have no response body and return a 200 HTTP response code.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

### PUT (unarchive)

```
curl -L -X PUT 'https://data-connect-lips.gannettdigital.com/booking_events/123-asd/unarchive' \
-H 'Authorization: 1b01Secret'
```

A successful response will have no response body and return a 200 HTTP response code.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
