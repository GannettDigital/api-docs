### **Contact Interactions**
<a name="lips_contact_interactions"></a>
## Contact Interactions API

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /contact_interactions? |

### Usage
Use GET to retrieve contact interactions that match the query params.

### Parameters
When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`event_params[recording_url]`|No|String that restricts the contacts to one or more based on recording_url|
|`event_params[phone_numbers]`|No|String that restricts the contacts to one or more based on phone number|
|`global_master_advertiser_id`|Yes|Restrict results to one or more specific gmaid|
|`global_master_campaign_id`|Yes|Restrict results to one or more specific gmcid|
|`page_size`|No|Restrict number of contacts in result <br><b>Default value: 25</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|


### Examples:

### GET (index)

```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions?global_master_advertiser_id=USA_1&event_params[recording_url]=url' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```
> Response Description if query_params contains event_params


```
curl -L -g -X GET 'https://data-connect-lips.ganettdigital.com/contact_interactions?global_master_advertiser_id=USA_1' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```
###Contact Interactions
**Contact**
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|id| Integer | no | id of the contact|
|first_name| String | yes | first name of the contact|
|last_name| String | yes | last name of the contact|
|email| String | yes | email of the contact|
|company| String | yes | The company name for this contact|
|title| String | yes | The title of the contact|
|phone_home| String | yes | The home phone number for this contact|
|phone_work| String | yes | The work phone number for this contact|
|phone_mobile| String | yes | The mobile phone number for this contact|
|address1| String | yes | address of the contact|
|address2| String | yes | address of the contact|
|city| String | yes | city of the contact|
|state| String | yes | state of the contact|
|postal| String | yes | zip code of the contact|
|country| String | yes | country code of the contact|
|created_at| Datetime | no | The date and time which this contact was created|
|contact_external_source| String | no |contact_Ext Source tells us if this contact came to us from FPD, Yardi etc|
|interaction_Ext_source| String | no | the number of the contacts page|

**Interaction**
| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|id| Integer | no | id of the interaction|
|contact_id| String | no | An integer uniquely identifying contact with the interaction|
|campaign_name| String | no | The name of the campaign that this contact interaction is attributed to|
|channel| String | no | The channel the lead belongs to (more relevant to XMO but applies to all, type of web publisher)|
|refer_type| String | no | Paid, organic|
|refer_source| String | no | Domain the visitor came from|
|influencing_campaign| String | yes | Campaign that influenced this interaction|
|created_at| Datetime | yes | The date and time which this interaction was created|
|occured_at| Datetime | yes |The date and time which this contact interaction occurred. This will usually be different than the date that the contact interaction was created.|
|display_name| String | yes | The display name of the contact interaction. This a concatination of the first name and last name if available else it is the email or ph number of the visitor|
|event_type| String | no | The type of the contact interaction . Valid values are chat, call and form|
|tags| String | yes | When present represents a collection of tags use for applying ad-hoc categorization and collation of contact interactions
The field is nullable|
|external_source| String | no | External Source tells us if this interaction came to us from FPD, Yardi etc|


#### Example Response

```javascript
{
    "contact_interactions": [
        {
            "contact_interaction": {
                "contact": {
                    "id": 2197617,
                    "first_name": "S",
                    "last_name": "ELIGIO",
                    "email": null,
                    "company": null,
                    "title": null,
                    "phone_home": null,
                    "phone_work": "+19407209246 x1961",
                    "phone_mobile": null,
                    "address1": null,
                    "address2": null,
                    "city": null,
                    "state": null,
                    "postal": null,
                    "country": null,
                    "created_at": "2021-09-04T01:21:27.394Z",
                    "contact_external_source": "a6426573-5120-4077-9d71-ac5e7f65bccd",
                    "interaction_external_source": "capture"
                },
                "interaction": {
                    "id": 4314774,
                    "contact_id": 2197617,
                    "campaign_name": "LSS Test Campaign",
                    "channel": "search",
                    "refer_type": "UNKNOWN",
                    "refer_source": "PAID",
                    "influencing_campaign": "",
                    "created_at": "2021-09-06T16:18:42.505Z",
                    "occurred_at": "2021-09-06T16:16:08.000Z",
                    "display_name": "S ELIGIO",
                    "tags": [],
                    "external_source": "capture"
                }
            }
        },
        {
            "contact_interaction": {
                "contact": {
                    "id": 2197617,
                    "first_name": "S",
                    "last_name": "ELIGIO",
                    "email": null,
                    "company": null,
                    "title": null,
                    "phone_home": null,
                    "phone_work": "+19407209246 x1961",
                    "phone_mobile": null,
                    "address1": null,
                    "address2": null,
                    "city": null,
                    "state": null,
                    "postal": null,
                    "country": null,
                    "created_at": "2021-09-04T01:21:27.394Z",
                    "contact_external_source": "fe9a4888-c6f3-4f13-91d9-f932e1c888fb",
                    "interaction_external_source": "capture"
                },
                "interaction": {
                    "id": 3871993,
                    "contact_id": 2197617,
                    "campaign_name": "LSS Test Campaign",
                    "channel": "search",
                    "refer_type": "UNKNOWN",
                    "refer_source": "PAID",
                    "influencing_campaign": "",
                    "created_at": "2021-09-04T01:21:26.881Z",
                    "occurred_at": "2021-08-25T14:50:34.000Z",
                    "display_name": "S ELIGIO",
                    "tags": [],
                    "external_source": "capture"
                }
            }
        }
    ],
    "page": 1,
    "total_pages": 1,
    "per_page": 25
}
