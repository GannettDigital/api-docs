### ETL Lead Attribution Report

#### Report Params

When creating an ETL Lead Attribution Report, provide the following fields in `report_params`:

| Param | Function |
|---|---|
|`gmaid`|Global Master Advertiser ID.  Only events for a single advertiser can be returned in a single report|
|`start_date`|Restricts the results to those occurring on or after this date.|
|`end_date`|Restricts the results to those occurring on or before this date.|

All params are required.  Once the job has completed, a call to the status endpoint will yeild a signed_url to a csv file, which can be downloaded.

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

> The format of the resulting csv file is:

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
