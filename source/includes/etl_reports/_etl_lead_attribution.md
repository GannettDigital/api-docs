### ETL Lead Attribution Report
<a name="Lead Attribution report"></a>

### Resource Overview

|Method|URI Format|
|---|---|
|POST|/client_reports/etl?[query_params]|When creating an ETL Lead Attribution Report, provide the following fields in `report_params`:

### Parameters

|Parameter|Required|Description|
|---|---|---|
|`gmaid`|Yes|Global Master Advertiser ID.  Only events for a single advertiser can be returned in a single report|
|`start_date`|Yes|Restricts the results to those occurring on or after this date.|
|`end_date`|Yes|Restricts the results to those occurring on or before this date.|

All params are required.  The response will include a job id

Once the job has completed, a call to the status endpoint will yeild a signed_url to a csv file, which can be downloaded.

|Method|URI Format|
|---|---|
|GET|/client_reports//etl/[job id]|When creating an ETL Lead Attribution Report, provide the following fields in `report_params`:


### CSV Details

The csv will contain
 - One row for every Contact Interaction created during the given timeslot. This is identified by type, e.g., email, chat, ph. call or form fill.  This is the person or the lead and hence called the contact.  The row is enriched with available about the contact PII e.g. First name, Last name, email, phone number, address etc.
 - If the Contact Interaction can be matched to a visitor, rows for each “touchpoint” will follow the interaction row.  Possible types include visits or impressions.

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

### Response Data Details
> The resulting csv file will contain the following

Field|Type|Description
|---------|--------|--------|
|visitor_id| String |The visitor id of the contact|
|type | String|The type of the Contactinteraction. Valid values are Contact,CVT or Touchpoint|
|sub_type|String|The type of the Contact/Contactinteraction. See below for options|
|referrer_source | String |The traffic source that generated the Contact/Contactinteraction. See below for options|
|referrer_type | String | The type of source the Contact/Contactinteraction came from.See below for options|
|occurrence_time| Datetime | The date and time which this contact interaction occurred|
|channel|String | The channel that generated the interaction
|first_name| String |First name of the contact|
|last_name| String |Last name of the contact|
|phone_work|String|Normalized phone number of the lead|
|company| String |Company of the contact|
|display_name| String |The display name of the contact interaction.|
|title| String | title of the contact|
|preferred_contact_method| String | preferred contact method of the contact|
|email| String | email of the contact|
|master_campaign_id |String|Unique Identifier for Campaign|
|campaign_name | String | The name of the campaign that this contact interaction is attributed to|
|influencing_campaign_id|String| The id of Campaign that influenced the contact interaction|
|page_url| String| The URL that the Contact/Contactinteraction was on when the contact event was generated|
|call_recording_url|String|The URL address to an audio recording of the call|
|time_zone|String|Time zone|

**Event Sub Type**
Describes the type of event. They are Impression, Call, Chat, Email, Post, Visit, cvt, ChatInitiated, Consent, Facebook and Unavailable.


**Referrer Source**
Describes the traffic source of  the visitor.

|Field Name|Description|
|---|---|
|Organic|Visitor's came to the site organically|
|Paid|Visitor's came to the site through a LOCALiQ campaign link|
|NonRLPaid|Visitor's came to the site through a paid link but is not LOCALiQ|
|Unavailable|Cannot be determined|

**Referrer Type**
Describes the type of domain the visitor came from.

|Field Name|Description |
|---|---|
|Search|Google.com, lycos.com etc.|
|Social|pinterest.com, plus.url.google etc.|
|Directory|whitepages.com, superpages.com, birkenheadpages.co.uk etc.|
|Other|allstarrents.com, maac.com etc.|
|Direct|Visitor typed the URL|
|unavailable|Cannot be determined|


> The format of the resulting csv file is
```
type,visitor_id,sub_type,referrer_source,occurrence_time,channel,first_name,last_name,phone_work,address1,city,state,postal,email,master_campaign_id,campaign_name,WPCID,WPC_name,influencing_CID,influencing_campaign_name,influencing_WPCID,influencing_WPC_name,page_url,referrer_type,referrer_url,chat_transcript,call_duration,call_recording_url,extra_fields
Contact,"fff-12323-32131",FormEvent,PAID,2021-08-04T21:21:42.000Z,search,qat1formaug04firstname,qat1formaug04lastname,,qat1formaug04address1,,Texas,55334,,2705608,Orange Paper TEST DO NOT DELETE - ALVIN,USA_3743465,Google National,,,USA_3743465,Google National,http://reachcodetesting.net/?siteid=427e4e5f-5317-42d8-825c-765b49e43028&e=qa&scid=3743465,DIRECT,,,,,"{""does_this_work""=>""yes it does"", ""campaign_id""=>""USA_2705608"", ""campaign_name""=>""Orange Paper TEST DO NOT DELETE - ALVIN"", ""submit_button""=>""SUBMIT"", ""company___required""=>""qat1formaug04Compny"", ""address1___required""=>""qat1formaug04address1"", ""email___required""=>""qat1formaug04email"", ""first_name___required""=>""qat1formaug04firstname"", ""title___required""=>""qat1formaug04title"", ""last_name___required""=>""qat1formaug04lastname"", ""phone___required""=>""8700000032"", ""phone_work___required""=>""8700000031"", ""phone_mobile___required""=>""8700000034"", ""phone_home___required""=>""8700000033"", ""address_2""=>""qat1formaug04address2"", ""city___required""=>""Plano"", ""state""=>""Texas"", ""country""=>""USA"", ""postal___required""=>""55334"", ""message""=>""qat1formaug04Compny"", ""page_post_url""=>""http://reachcodetesting.com/index.php?dev=search""}"
TouchPoint,Visit,PAID,2021-08-04 20:02:29 UTC,search,qat1formaug04firstname,qat1formaug04lastname,,qat1formaug04address1,,Texas,55334,,2705608,Orange Paper TEST DO NOT DELETE - ALVIN,USA_3743465,Google National,,,,,http://reachcodetesting.net/?siteid=427e4e5f-5317-42d8-825c-765b49e43028&e=qa&scid=3743465,DIRECT,,"","","",""
Contact,FormEvent,PAID,2021-08-04T20:04:12.000Z,search,t1eqaaug42021,"",,,,,,t1eqaaug42021@mail.com,2705608,Orange Paper TEST DO NOT DELETE - ALVIN,USA_3743465,Google National,,,USA_3743465,Google National,http://reachcodetesting.net/?siteid=427e4e5f-5317-42d8-825c-765b49e43028&e=qa&scid=3743465,DIRECT,,,,,
TouchPoint,Visit,PAID,2021-08-04 20:02:29 UTC,search,t1eqaaug42021,"",,,,,,t1eqaaug42021@mail.com,2705608,Orange Paper TEST DO NOT DELETE - ALVIN,USA_3743465,Google National,,,,,http://reachcodetesting.net/?siteid=427e4e5f-5317-42d8-825c-765b49e43028&e=qa&scid=3743465,DIRECT,,"","","",""

...
```
