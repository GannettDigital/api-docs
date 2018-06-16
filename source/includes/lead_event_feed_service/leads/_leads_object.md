## Leads
**`Leads`** object contains unread counts for each of the lead event types.

### The Leads Object

> Example Response:

```json
{
  "counts": {
      "unread": {
          "calls": 3,
          "chats": 2,
          "emails": 14,
          "web_events": 14,
          "total": 33,
          "user_total": 0
      }
  }
}
```

An object containing unread counts with properties defined as follows:

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
calls      | Integer  | no | Unread call leads count occurring within the last 30 days.
chats      | Integer  | no | Unread chat leads count occurring within the last 30 days.
emails     | Integer  | no | Unread email leads count occurring within the last 30 days.
web_events | Integer  | no | Unread web_event leads count occurring within the last 30 days.
total      | Integer  | no | Total number leads for the requested GMAID (sum of calls, chats, emails, and web_events).
user_total | Integer  | no | Total unread leads count for the requested email across all GMAIDs.
