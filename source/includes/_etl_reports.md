## ETL Reports

ETL (Extract-Transform-Load) reports are reports that can generate a large amount of data.  The data itself it not returned by the API.  The API returns a signed URL that can be used to download the data from cloud storage.  The URL expires 24 hours after it is generated.  To create an ETL Report, make a POST request, which will schedule an ETL job, and return a job ID.  Then make a GET request using the job ID to check the status of the job.  The status will be one of `scheduled`, `in_progress`, or `completed`.  If the status is `completed`, the response will also include the signed URL.


### Resource Overview

| Method | URI Format |
|---|---|
| POST `create` | /client_reports/etl [json_data] |
| GET `show` | /client_reports/etl/[job_id] |
| GET `index` | /client_reports/etl |


### Resource Details

#### POST `create`

Use POST to schedule an ETL job.  The `report_type` and `report_params` params in the POST data are both required.  The contents of `report_params` will vary by report type, and will be validated immediately.  The details for specific ETL reports are found in following sections.

<internal>
The valid report types are `etl_keyword_report` and `etl_lead_attritbution_report`.
</internal>

> Example POST request to create ETL Report Job

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
-H 'Content-Type: application/json' \
-X POST 'https://api.localiqservices.com/client_reports/etl' \
--data-raw '{
	"report_type": "etl_keyword_report",
	"report_params": {
		"gmaid": "USA_000000",
		"start_date": "2020-07-04",
		"end_date": "2020-07-07"
	}
}'
```

> Response

```javascript
{
    "id": 10,
    "status": "scheduled",
    "report_type": "EtlKeywordReport",
    "params": {
      "gmaid": "USA_000000",
      "start_date": "2020-07-04",
      "end_date": "2020-07-07"
    },
    "requestor": "email@test.com",
    "created_at": "2020-08-06T17:49:09.000Z",
    "updated_at": "2020-08-06T17:49:09.000Z"
}
```

#### GET `show`

Use GET to retrieve details about an ETL job.  Note that only jobs created by the caller can be shown (as determined by the credentials used to obtain the oauth token).

> Example Request to show ETL Report Job Status

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
'https://api.localiqservices.com/client_reports/etl/3'
```

> Response

```javascript
{
    "id": 3,
    "status": "complete",
    "signed_url": "https://storage.googleapis.com/apgb2b-reporting-etl-bucket-qa/f0595867-86aa-4797-9ec2-aee9ca28562a.csv?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=apgb2b-reporting-etl-sa-qa%40apgb2b-reporting-qa.iam.gserviceaccount.com%2F20200805%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20200805T140026Z&X-Goog-Expires=1440&X-Goog-SignedHeaders=host&X-Goog-Signature=6c96e706e0bada9804429c28998f514b3a7db47e2ef35c7607f7d8aac62c14f12fd47d292b5e405ba15cbefe45c4ab88056f25dfa127d1289f4e4a635dc7fbe62714dcf40a704347ca6bb1b57c77283c47a1bbee6db7f02feb0071a8626d230b24448ef2a5828a11b0cec654aae878993011b27d4e456737b14483ff64f1286ef64b0f36532ef3da9e6af950dd5a191514ec96156ec5ce533b9ed5f3283ecaac3a73cbedea3d75e910eec70ce5f0329fdde6ec359308286b12c80c31e648235c332992ec62d840b8034f1e3da9999e4236565511151c91638bf2f3d027592bbe822436bbce8f11cfd5706fff660fdd8c1604903c06873be728d8a47524909b30",
    "url_expiration": "2020-08-06T14:00:26.000Z",
    "extract_duration": 8,
    "report_type": "EtlKeywordReport",
    "params": {
      "gmaid": "USA_000000",
      "start_date": "2020-07-04",
      "end_date": "2020-07-07"
    },
    "requestor": "email@test.com",
    "created_at": "2020-08-05T13:57:14.000Z",
    "updated_at": "2020-08-05T14:00:26.000Z"
}
```

#### GET `index`

Use GET to retrieve a list of etl_jobs.  Note that only jobs created by the caller will be shown (as determined by the credentials used to obtain the oauth token).

> Example Request to list ETL Report Jobs

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
'https://api.localiqservices.com/client_reports/etl' \
```

> Response

```javascript
{
    "elt_jobs": [
        {
            "id": 1,
            "status": "complete",
            "extract_duration": 8,
            "report_type": "EtlKeywordReport",
            "params": {
              "gmaid": "USA_000000",
              "start_date": "2020-07-04",
              "end_date": "2020-07-07"
            },
            "requestor": "email@test.com",
            "created_at": "2020-08-05T13:47:14.000Z",
            "updated_at": "2020-08-06T15:53:06.000Z"
        },
        {
            "id": 2,
            "status": "complete",
            "extract_duration": 8,
            "report_type": "EtlKeywordReport",
            "params": {
              "gmaid": "USA_000000",
              "start_date": "2020-07-04",
              "end_date": "2020-07-07"
            },
            "requestor": "email@test.com",
            "created_at": "2020-08-05T13:54:34.000Z",
            "updated_at": "2020-08-05T14:00:26.000Z"
        }
    ]
}
```


