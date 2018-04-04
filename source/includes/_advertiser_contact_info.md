## Advertiser Contact Info

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/advertiser_contact_info/[gmaid] |

### Usage
Use GET to retrieve contact information for a given advertiser.

The data returned will include name, email and phone contact information.

### Operations
| Method  | Path  | Function |
|---|---|---|
| GET  | /client_reports/advertiser_contact_info/[gmaid] | Retrieves contact info for gmaid  |

### Parameters

None

### Examples:

> Retrieve contact info data

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/advertiser_contact_info/USA_105569
```

> Response when found:

```json
{
  "global_master_advertiser_id": "USA_105569",
  "location": "https://api.reachlocalservices.com/client_reports/advertiser_contact_info/USA_105569",
  "contact_data": [
    {
      "global_master_advertiser_id": "USA_105569",
      "name": "John Doe",
      "role": "Campaign Performance Consultant",
      "email": "john.doe@reachlocal.com",
      "phone": "1234567890"
    }
  ]
}
```

> Response when not found:

```json
{
  "global_master_advertiser_id": "USA_105569",
  "location": "https://api.reachlocalservices.com/client_reports/advertiser_contact_info/USA_105569",
  "contact_data": [
    {}
  ]
}
```