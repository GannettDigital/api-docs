### ETL Lead Attribution Report
<a name="Lead Attribution report"></a>

### Resource Overview;

|Method|URI Format|
|---|---|
|GET|/client_reports/unified_display/[gmaid]?[query_params]|When creating an ETL Lead Attribution Report, provide the following fields in `report_params`:

### Parameters;

|Parameter|Required|Description|
|---|---|---|
|`gmaid`|Yes|Global Master Advertiser ID.  Only events for a single advertiser can be returned in a single report|
|`start_date`|Yes|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|

All params are required.  Once the job has completed, a call to the status endpoint will yeild a signed_url to a csv file, which can be downloaded.


### Response Data Details;

The csv will contain
•	One row for every contact created during the given timeslot. This is identified by events of type “contact” e.g., email, chat, ph. call or form fill.  This is the person or the lead and hence called the contact. We have PII info like name or email from these events
•	On row each for every contact interaction by this contact. This is identified by events of type “touchpoint” e.g., visits or impressions. 


**Note:** Currently we do not have a lookback window limit. It looks for all interactions within LIPS. LIPS contains 30 days of history, so it is not an issue. We will implement a lookback window in the next iteration so that the information is relevant.
**Note:** Any contact interactions that do not have a contact event will not be part of this extract (e.g., A visitor who came to the site 10 times at various days/times but never make a ph call or chat or a form fill aka never became a contact)




> Example POST request to create an ETL Keyword Report Job

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
-H 'Content-Type: application/json' \
-X POST 'https://api.localiqservices.com/client_reports/etl' \
--data-raw '{
	"report_type": "etl_lead_attribution_report",
	"report_params": {
		"gmaid": "USA_000000",
		"start_date": "2020-07-04",
		"end_date": "2020-07-07"
	}
}'
```

### Response Data Details;
> The format of the resulting csv file is

Field | Type  | Description
--------- | -------- |--------

|master_campaign_id |String|Unique Identifier for Campaign|
|campaign_name | String | The name of the campaign that this contact interaction is attributed to|
|type | String|The type of the Contact/Contactinteraction. Valid values are Contact,CVT or Touchpoint|
|sub_type|String|The type of the Contact/Contactinteraction. See below for options|
|id_web_publisher_campaign|String |The unique Identifier for web publisher Campaign that attributed to this contact interaction|
|influencing_campaign_id|String| The unique Identifier for Campaign that influenced the contact interaction|
|influencing_id_web_publisher_campaign|String | The unique Identifier for web publisher Campaign that influenced the contact interaction|
|page_url| String| The URL that the Contact/Contactinteraction was on when the contact event was generated|
|referrer_source | String |The traffic source that generated the Contact/Contactinteraction. See below for options|
|referrer_type | Int | The type of source the Contact/Contactinteraction came from.See below for options|
|referrer_url | String| The URL that the Contact/Contactinteraction came from|
|first_name| String | no | first name of the contact|
|last_name| String | no | last name of the contact|
|phone_work|yes|string|Normalized phone number of the lead|
|address1| String | no | address of the contact|
|city| String | no | city of the contact|
|state| String | no | state of the contact|
|postal| String | no | zip code of the contact|
|email| String | no | email of the contact|
|occurrence_time| Datetime | The date and time which this contact interaction occurred|
|chat_transcript|String|Transcript of the chat|	
|call_duration|yes|number|The duration of the call in seconds|
|call_recording_url|yes|string|The URL address to an audio recording of the call|
|phone_work|yes|string|Normalized phone number of the lead|

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

```
master_campaign_id,campaign_name,sub_type,type,id_web_publisher_campaign,influencing_campaign_id,influencing_id_web_publisher_campaign,page_url,referrer_name,referrer_source,referrer_type,referrer_url,first_name,last_name,phone_work,address1,city,state,postal,email,occurrence_time,chat_transcript,call_duration,call_recording_url
321,,ChatEvent,Contact,,,,,,,,,Anisa,O'Keefe,,,Bedrock,,,darla.littel@kris-hoppe.org,2021-07-14T16:27:09.000Z,Velit adipisci non nihil qui eveniet.,,
321,,CallEvent,Contact,,,,,,,,,Anisa,O'Keefe,,,Bedrock,,,darla.littel@kris-hoppe.org,2021-07-14T16:27:09.000Z,,19,http://calls.com/rolf.farrell
321,,FormEvent,Contact,,,,,,,,,Anisa,O'Keefe,,,Bedrock,,,darla.littel@kris-hoppe.org,2021-07-14T16:27:09.000Z,,,
321,,ChatEvent,Contact,,,,,,,,,Donnie,Upton,,,Bedrock,,,gonzalo@dicki.net,2021-07-14T16:27:09.000Z,Qui repellendus facilis perspiciatis voluptas assumenda.,,
321,,CallEvent,Contact,,,,,,,,,Donnie,Upton,,,Bedrock,,,gonzalo@dicki.net,2021-07-14T16:27:09.000Z,,30,http://calls.com/maritza.purdy
321,,FormEvent,Contact,,,,,,,,,Donnie,Upton,,,Bedrock,,,gonzalo@dicki.net,2021-07-14T16:27:09.000Z,,,
...
```
