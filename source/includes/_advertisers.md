## Advertisers Resource

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/advertisers
URI Format:             /client_reports/advertisers?tier=[x]
URI Format:             /client_reports/advertisers/[gmaid]
```

#### Notes

Authorization on these methods is limited to services using a "trusted token".  Requests through gateways are not allowed.

A 'campaign permformance consultant' is the `business_user` joined to the advertiser through a `business_user_role` of type `campaign_performance_consultant`.  If more than one such record exists, the one with the highest (and thus newest) `advertiser_id` is chosen.

A 'customer contact' is any `business_user` joined to the advertiser with `privelege_level = 3` (AGENCY_CUSTOMER)


#### Usage
Use GET without an id to retrieve a list of advertisers, including the gmaid and tier for each.  Use optional `tier` param to filter by tier.
Use GET with a gmaid ID to retrieve contact information for a given advertiser.


#### Example Local Dev Curls:

##### Retrieve list of advertisers
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "http://localhost:3001/client_reports/advertisers"
```

##### Response

```json
{
    "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/advertisers",
    "advertisers": [
        {
            "global_master_advertiser_id": "USA_229172",
            "tier": 1
        },
        {
            "global_master_advertiser_id": "USA_196567",
            "tier": 1
        },
        {
            "global_master_advertiser_id": "USA_229171",
            "tier": 2
        },
        {
            "global_master_advertiser_id": "USA_229167",
            "tier": 1
        }
    ]
}
```

##### Retrieve list of advertisers filtered by tier
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "http://localhost:3001/client_reports/advertisers?tier\=1"
```

##### Response

```json
{
    "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/advertisers?tier=1",
    "advertisers": [
        {
            "global_master_advertiser_id": "USA_229172",
            "tier": 1
        },
        {
            "global_master_advertiser_id": "USA_196567",
            "tier": 1
        },
        {
            "global_master_advertiser_id": "USA_229167",
            "tier": 1
        }
    ]
}
```

##### Retrieve details for individual advertiser
```
curl -H "Authorization: token reachanalyticsreportingservicetoken"  "http://localhost:3001/client_reports/advertisers/USA_196567"
```

##### Response

```json
{
    "advertiser": {
        "location": "http://dweb2270.dev.wh.reachlocal.com/client_reports/advertisers/USA_196567",
        "global_master_advertiser_id": "USA_196567",
        "tier": 1,
        "campaign_performance_consultant": {
            "global_master_advertiser_id": "USA_196567",
            "name": "Fred Flintstone",
            "role": "Marketing Engineer",
            "email": "fred.flintstone@localiq.com",
            "phone": "+12145555530"
        },
        "customer_contacts": [
            {
                "name": "Barney Rubble",
                "email": "barney.rubble@gmail.com"
            },
            {
                "name": "Betty Rubble",
                "email": "betty.rubble@mygym.com"
            }
        ]
    }
}
```
