### **LSA Lead Details**
<a name="lsa_leads"></a>

### Resource Overview&nbsp;

| Method | URI Format |
|---|---|
| GET | /leads/lsa_events?[query_params] |

Use GET to retrieve Local Service Ads Leads for a given advertiser.

The data returned will include individual leads in reverse chronological order.

### Parameters&nbsp;

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Function |
|---|---|---|
|global_master_advertiser_id| Yes | Only leads for the specified advertiser will be returned.|
|start_date| Yes | Restricts the results to those ocurring on or after this date.|
|end_date| Yes | Restricts the results to those ocurring on or before this date.|
|global_master_campaign_id[]| No | Restricts the results to those belonging to these campaigns.|
|per_page| No |Restrict number of leads in result.  Default is 50|
|page| No |Specifies which page of results to return.  Default is 1|

To specify a date range:

   - Specify start_date and end_date.

### Response Data Details&nbsp;

> Retrieve data for advertiser and date range

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/leads/lsa_events?start_date=2020-09-27&end_date=2020-09-28&global_master_advertiser_id=TEST_123' \

```

> Example Response

```javascript
{
    "global_master_advertiser_id": "TEST_123",
    "start_date": "2020-09-27",
    "end_date": "2020-09-28",
    "page": 1,
    "per_page": 50,
    "total_pages": 1,
    "lsa_events": [
        {
            "event_id": "4819",
            "event_time": "2020-09-27T20:26:30.000Z",
            "global_master_campaign_id": "TEST_1232",
            "cycle_id": "444",
            "lead_type": "PHONE_CALL",
            "lead_name": "Mr. Letty Mann",
            "lead_phone_number": "126.235.0549 x2631",
            "job_type": "install",
            "zip_code": "93247-8802",
            "lead_category": "hvac",
            "charged": "0",
            "lead_price": "30",
            "campaign_name": "Amazing discount188618s"
        },
        {
            "event_id": "1351",
            "event_time": "2020-09-27T19:03:37.000Z",
            "global_master_campaign_id": "TEST_1230",
            "cycle_id": "444",
            "lead_type": "PHONE_CALL",
            "lead_name": "Ms. Annita Anderson",
            "lead_phone_number": "1-904-299-5528 x85872",
            "job_type": "install",
            "zip_code": "55939",
            "lead_category": "hvac",
            "charged": "0",
            "lead_price": "30",
            "campaign_name": "Sweet savings324049s"
        }
    ]
}
```

> Retrieve data for advertiser and date range, with campaign filter

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/leads/lsa_events?start_date=2020-09-27&end_date=2020-09-28&global_master_advertiser_id=TEST_123&global_master_campaign_id[]=TEST_1232' \

```

> Example Response

```javascript
{
    "global_master_advertiser_id": "TEST_123",
    "start_date": "2020-09-27",
    "end_date": "2020-09-28",
    "page": 1,
    "per_page": 50,
    "total_pages": 1,
    "lsa_events": [
        {
            "event_id": "4819",
            "event_time": "2020-09-27T20:26:30.000Z",
            "global_master_campaign_id": "TEST_1232",
            "cycle_id": "444",
            "lead_type": "PHONE_CALL",
            "lead_name": "Mr. Letty Mann",
            "lead_phone_number": "126.235.0549 x2631",
            "job_type": "install",
            "zip_code": "93247-8802",
            "lead_category": "hvac",
            "charged": "0",
            "lead_price": "30",
            "campaign_name": "Amazing discount188618s"
        }
    ]
}
```

|Field Name|Datatype|Description|
|---|---|---|
|start_date|String|Start date of report|
|end_date|String|End date of report|
|global_master_advertiser_id|String|Global Master Advertiser ID|
|page|Integer|Page Number of results|
|per_page|Integer|Max number of results per page|
|total_pages|Integer|Number of available pages of results|
|lsa_events|Object|Report details. [Lead Detail Object](#lsaleaddata)|

<a name="lsaleaddata"></a>
**Lead Detail Object**

|Field Name|Datatype|Description|
|---|---|---|
|event_id|String|ID Of lead|
|event_time|String|Time lead event ocurred|
|global_master_campaign_id|String|ID Of campaign for this lead|
|cycle_id|String|ID of the campaign cycle for this lead|
|lead_type|String|The type of the lead, e.g.: PHONE_CALL|
|lead_name|String|The first and last name of the lead|
|lead_phone_number|String|The leads phone number|
|job_type|String|The type of service job for this lead|
|zip_code|String|The zip code for the lead|
|lead_category|String|The lead category|
|charged|String|Was this a charged lead? |
|lead_price|String|The price of the lead|
|campaign_name|String|The name of the campaign for the lead|
