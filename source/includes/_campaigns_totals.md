### **Campaigns Totals**
<a name="campaigns_totals"></a>

### Resource Overview&nbsp;&nbsp;

| Method | URI Format |
|---|---|
| GET | /client_reports/campaigns_totals/[gmaid] |

The data returned will include count of running campaigns and leads for all campaign types over the last 30 days.

### Parameters&nbsp;&nbsp;

None

### Response Data Details&nbsp;&nbsp;

> The following command returns an example JSON structure:

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN" \
"https://api.localiqservices.com/client_reports/campaigns_totals/TEST_1"
```
> Example Response

```json
{
    "report_type": "campaigns_totals",
    "report_date": "2020-10-12",
    "start_date": "2020-09-12",
    "end_date": "2020-10-12",
    "time_zone": "America/Los_Angeles",
    "report_data": {
        "campaigns": 13,
        "leads": 1009
    },
    "global_master_advertiser_id": "TEST_1"
}
```

| Field Name | Datatype | Description |
|---|---|---|
|report_type|String|Type of report|
|report_date|String|Date report ran|
|start_date|String|Start Date|
|end_date|String|End Date|
|time_zone|String|Time Zone of Data|
|report_data|Object|ReportData Object|
|global_master_advertiser_id|String|Identifier for advertiser|

**ReportData Object**

| Field Name | Datatype | Description |
|---|---|---|
|campaigns|String|Total running campaigns|
|leads|String|Total leads for all campaigns|

