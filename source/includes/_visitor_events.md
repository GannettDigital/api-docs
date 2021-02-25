### **Visitor Events**
<a name="visitor_events"></a>

### Resource Overview


|Method|URI Format|
|---|---|
|GET|/client_reports/visitor_events?[query_params]|

This API should be used to retrieve all events for a list of visitor_ids for a given advertiser (GMAID). The response will contain a chornological list of events. It can also be optionally grouped by visitor_id. Events can also be restricted to a date range.

When available, campaign information will be provided for each event, as well as channel when campaign type is xmedia.

### Parameters

When using the GET method, the results can be filtered using these parameters:

|Param|Required|Function|
|---|---|---|
|gmaid|Yes|Restrict results to the specified Global Master Advertiser ID|
|visitor_ids[]|Yes|Returns events for the specified visitors|
|start_date|No|Restricts the results to those occurring on or after this date|
|end_date|No|Restricts the results to those occurring on or before this date|
|group_by|No|Only valid value at this time is `visitor_id`|

### Response Data Details

> Retrieve data for a list of visitor_ids

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/visitor_events?gmaid=TEST_1&visitor_ids[]='111-222-333'&visitor_ids[]='444-555-666'
```

> Retrieve data restricted by date_range

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/visitor_events?gmaid=TEST_1&visitor_ids[]='111-222-333'&visitor_ids[]='444-555-666'&start_date=2021-01-01&end_date=2021-01-31
```

> Retrieve data grouped by visitor_id

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/visitor_events?gmaid=TEST_1&visitor_ids[]='111-222-333'&visitor_ids[]='444-555-666'&group_by=visitor_id
```
> all filters combined (results below)

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
https://api.reachlocalservices.com/client_reports/visitor_events?gmaid=TEST_1&visitor_ids[]='0b1f0b35-718a-4143-8ab6-5e15d380d6ad'&visitor_ids[]='499eea8d-dab5-46ec-8387-0b48a56c4dcb'&start_date=2021-01-01&end_date=2021-01-31&group_by=visitor_id
```


> Example Response (with group_by)

```json
{
    "api_name": "visitor_events",
    "global_master_advertiser_id": "TEST_1",
    "api_run_date": "2021-02-11",
    "time_zone": "America/Los_Angeles",
    "start_date": "2021-01-01",
    "end_date": "2021-01-31",
    "report_data": {
        "visitors": [
            {
                "visitor_id": "0b1f0b35-718a-4143-8ab6-5e15d380d6ad",
                "events": [
                    {
                        "event_id": "33b09f79-6aa8-4868-8945-5226e8b473a8",
                        "visitor_id": "0b1f0b35-718a-4143-8ab6-5e15d380d6ad",
                        "event_time": "2021-01-18T18:38:12.000Z",
                        "event_type": "Contact",
                        "event_subtype": "Post",
                        "referrer_source": "PAID",
                        "referrer_type": "SEARCH",
                        "page_url": "https://www.simplehi.com/contact-us/",
                        "global_master_campaign_id": "TEST_222",
                        "campaign_name": "BFD | xMedia | Simple Search | SEM Social",
                        "campaign_type": "xmedia",
                        "campaign_status": "running",
                        "goals": [
                            {
                                "goal_type_id": 3,
                                "goal_type": "Contacts"
                            }
                        ],
                        "channel": "search"
                    },
                    {
                        "event_id": "8e006cac-cc9a-4445-88f2-94bfeee6c54c",
                        "visitor_id": "0b1f0b35-718a-4143-8ab6-5e15d380d6ad",
                        "event_time": "2021-01-18T18:38:16.000Z",
                        "event_type": "Cvt",
                        "event_subtype": "Cvt",
                        "referrer_source": "",
                        "referrer_type": "",
                        "page_url": ""
                    }
                ]
            },
            {
                "visitor_id": "499eea8d-dab5-46ec-8387-0b48a56c4dcb",
                "events": [
                    {
                        "event_id": "496ea87d-7125-4983-b9f8-dfe702b45c35",
                        "visitor_id": "499eea8d-dab5-46ec-8387-0b48a56c4dcb",
                        "event_time": "2021-01-21T19:40:54.000Z",
                        "event_type": "TouchPoint",
                        "event_subtype": "Visit",
                        "referrer_source": "ORGANIC",
                        "referrer_type": "SOCIAL",
                        "page_url": "https://www.simplehi.com/limited-time-offer/?utm_source=facebook&utm_medium=social&utm_campaign=njam_sitetraffic&utm_content=lwv_fb"
                    }
                ]
            }
        ]
    }
}
```


> Example Response (without group_by)

```json
{
    "api_name": "visitor_events",
    "global_master_advertiser_id": "TEST_1",
    "api_run_date": "2021-02-11",
    "time_zone": "America/Los_Angeles",
    "report_data": {
        "events": [
            {
                "event_id": "33b09f79-6aa8-4868-8945-5226e8b473a8",
                "visitor_id": "0b1f0b35-718a-4143-8ab6-5e15d380d6ad",
                "event_time": "2021-01-18T18:38:12.000Z",
                "event_type": "Contact",
                "event_subtype": "Post",
                "referrer_source": "PAID",
                "referrer_type": "SEARCH",
                "page_url": "https://www.simplehi.com/contact-us/",
                "global_master_campaign_id": "TEST_222",
                "campaign_name": "BFD | xMedia | Simple Search | SEM Social",
                "campaign_type": "xmedia",
                "campaign_status": "running",
                "goals": [
                    {
                        "goal_type_id": 3,
                        "goal_type": "Contacts"
                    }
                ],
                "channel": "search"
            },
            {
                "event_id": "8e006cac-cc9a-4445-88f2-94bfeee6c54c",
                "visitor_id": "0b1f0b35-718a-4143-8ab6-5e15d380d6ad",
                "event_time": "2021-01-18T18:38:16.000Z",
                "event_type": "Cvt",
                "event_subtype": "Cvt",
                "referrer_source": "",
                "referrer_type": "",
                "page_url": ""
            },
            {
                "event_id": "496ea87d-7125-4983-b9f8-dfe702b45c35",
                "visitor_id": "499eea8d-dab5-46ec-8387-0b48a56c4dcb",
                "event_time": "2021-01-21T19:40:54.000Z",
                "event_type": "TouchPoint",
                "event_subtype": "Visit",
                "referrer_source": "ORGANIC",
                "referrer_type": "SOCIAL",
                "page_url": "https://www.simplehi.com/limited-time-offer/?utm_source=facebook&utm_medium=social&utm_campaign=njam_sitetraffic&utm_content=lwv_fb"
            }
        ]
    }
}
```


|Field Name|Datatype|Description|
|---|---|---|
|api_name|String|Name of the API|
|global_master_advertiser_id|String|Global Master Advertiser ID|
|api_run_date|String|Date report was run|
|start_date|String|Start date of report (if specified in params)|
|end_date|String|End date of report (if sepcified in params)|
|time_zone|String|Time Zone|
|report_data|Object|Report details. [Report Data Object](#visitoreventsreportdata)|

<a name="visitoreventsreportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|visitor_id|UUID|An id of a visitor to an advertiser’s site for a given browser & device. The same visitor will have a different id if a different browser on the same device or a different device is used.|
|events|Array|Array of Event Objects. [Event Object](#visitoreventsevent)|

<a name="visitoreventsevent"></a>
**Event Object**

|Field Name|Datatype|Description|
|---|---|---|
|event_id|Event ID|An id for the event and unique to every occurance of the event|
|visitor_id|Visitor ID|An id of a visitor to an advertiser’s site for a given browser & device. The same visitor will have a different id if a different browser on the same device or a different device is used|
|event_time|Event Time|Time the event occured|
|event_type|Event Type|See below for options|
|event_subtype|Event Subtype|See below for options|
|referrer_source|Referrer Source|See below for options|
|referrer_type|Referrer Type|See below for options|
|page_url|Page URL|URl of the page the visitor is on |
|global_master_campaign_id|String|Identifier for campaign (campaign info present only if referrer_source==PAID)|
|campaign_name|String|Name of campaign|
|campaign_type|String|Type of campaign|
|campaign_status|String|Status of campaign|
|goals|Array|Array of Goals Objects [Goal Object](#visitoreventsgoals)|
|channel|String|Channel Attribution (if campaign type is xmedia)|


<a name="visitoreventsgoals"></a>
**Goals Object**

| Field Name | Datatype | Description |
|---|---|---|
|goal_type_id|String|Identifier for campaign goal type|
|goal_type|String|Name(Type) of goal type|

**Event Type**
Describes the event categories
| Field Name | 
|---| 
|Contact |
| CVT |
| Touchpoint |


**Event Sub Type**
Describes the type of event
| Field Name | 
|---| 
|Impression |
|Call |
|Chat |
|Email |
|Post |
|Visit |
|Cvt |
|ChatInitiated |
|Consent |
|Facebook |
|Unavailable |


**Referrer Source**
Describes the traffic source of  the visitor.
| Field Name | Description |
|---|---|
|Organic|Visitor's came to the site organically|
|Paid|Visitor's came to the site through a LOCALiQ campaign link|
|NonRLPaid|Visitor's came to the site through a paid link but is not LOCALiQ|
|Unavailable|Cannot be determined|

**Referrer Type**
Describes the type of domain the visitor came from.
| Field Name |Description |
|---|---| 
|Search|Google.com, lycos.com etc.|
|Social|pinterest.com, plus.url.google etc.|
|Directory|whitepages.com, superpages.com, birkenheadpages.co.uk etc.|
|Other|allstarrents.com, maac.com etc.|
|Direct|Visitor typed the URL|
|unavailable|Cannot be determined|
|
