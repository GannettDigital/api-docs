### ETL Keyword Report

#### Report Params

When creating an ETL Keyword Report, provide the following fields in `report_params`:

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
-X POST 'https://api.reachlocalservices.com/client_reports/etl' \
--data-raw '{
	"report_type": "etl_keyword_report",
	"report_params": {
		"gmaid": "USA_000000",
		"start_date": "2020-07-04",
		"end_date": "2020-07-07"
	}
}'
```

> The format of the resulting csv file is:

```
gmaid,campaign_name,campaign_id,camapign_status,event_date,keyword,type,clicks,impressions,ctr
USA_000000,SEM | EIC | DMS/CVT,USA_99999999,running,2020-05-15,+cardiac +sonography +program,search,1,4,25.0
USA_000000,SEM | EIC | DMS/CVT,USA_99999999,running,2020-05-15,+cardiac +sonography +school,search,1,2,50.0
USA_000000,SEM | EIC | DMS/CVT,USA_99999999,running,2020-05-15,+cardiac +technician +program,search,0,1,0.0
```
