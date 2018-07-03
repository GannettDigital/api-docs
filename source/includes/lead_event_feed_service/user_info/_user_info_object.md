## User Info
**`User Info`** object contains business information for the authenticated user.

### The User Info Object

> Example Response:

```json
{
    "bu_id": 789,
    "user": "test1@email.com",
    "business_id": 123,
    "country": "USA",
    "authorized_advertisers": [
        {
            "name": "Superior Sales",
            "gmaid": "USA_123",
            "hipaa_protected": false,
            "feed_types": [
                "call_events",
                "email_events",
                "web_events"
            ]
        },
        {
            "name": "Lake Street Market",
            "gmaid": "USA_124",
            "hipaa_protected": false,
            "feed_types": [
                "call_events",
                "chat_events",
                "email_events",
                "web_events"
            ]
        }
    ],
    "users": [
        {
            "buid": 678,
            "email": "test1@email.com",
            "business_id": 123,
            "name": "Jim Johnson"
        },
        {
            "buid": 789,
            "email": "test2@email.com",
            "business_id": 123,
            "name": "Carol Smith"
        }
    ]
}
```

An object with properties defined as follows:

Field Name             | Datatype | Nullable | Description
---------------------- | -------- | -------- | -----------
bu_id                  | Integer  | no | Business user Id.
user                   | String   | no | User as identified by email.
business_id            | Integer  | no | Business Id.
country                | String   | no | Country associated with the business.
authorized_advertisers | Array    | no | List of advertisers that are accessible to the user.
users                  | Array    | no | List of users with access to the business's data.
