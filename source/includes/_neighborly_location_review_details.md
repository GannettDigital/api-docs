### Review Details

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/neighborly/location/[gmaid]/review_details?[query_params]
| GET | /client_reports/neighborly/location/[query_params]
| POST | /client_reports/neighborly/location |

#### API Name: neighborly_location_review_details
#### Usage
Use GET to retrieve location review details data, that comes from the Neighborly API.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

This report will show metrics for the particular id for a location.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`page`|No|Restricts the results to those occurring after the offset|
|`page_size`|No|Restricts the number of locations that will be shown. (The max value of page_size is 50)|

#### Examples

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/client_reports/neighborly/location/GMAID/review_details' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings/neighborly/review_details",
    "report_date": "2021-01-25",
    "report_data": {
        "total_pages": 1,
        "page_size": 50,
        "page": 1,
        "details": [
            {
                "$id": "1",
                "overallRating": 4.9,
                "franchiseWebLocationId": 1234,
                "grandTotal": 45,
                "reviewAuthorName": "First Name",
                "reviewPhotoUrl": "url",
                "reviewBody": null,
                "reviewResponseName": null,
                "reviewTime": "2022-02-14T15:20:56",
                "reviewResponseBody": null,
                "reviewResponseCreatedDateTime": null,
                "isReviewResponsePending": null,
                "rowNbr": 1,
                "reviewStarRating": 5,
                "reviewSourceType": "Google"
            }
        ]
    }
}
```
|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the Report|
|report_date|String|Date report was run|
|report_data|Object|Report details. [Report Data Object](#reviewdetailsreportdata)|

<a name="reviewdetailsreportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|page|Integer|The number of the page that is currently loaded.|
|page_size|Integer|The number of the elements in a page (request).|
|total_pages|Integer|How many pages are there left. |
|details|Array|Review details for specified locations. [Details Object](https://api2-test-unifiedsyncplatform.dwyergroup.com/swagger/index.html)|


#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|page|No|Results page (defaults to 1)|
|per_page|No|Results per page (defaults to 25)|
|start_date|Yes|Restricts the results to those occurring on or after this date.|
|end_date|Yes|Restricts the results to those occurring on or before this date.|
|gmaid|no|Restricts the results to those occurring on gmaid.|

#### Examples

```
curl --location --request GET 'https://api.gcion.com/apgb2b-reporting/client_reports/neighborly/location?start_date=06-06-2022&end_date=09-06-2022' \
--header 'Authorization: r...' \
--header 'Content-Type: application/json' \
--header 'x-api-key: {{apigee_key}}' \
--header 'email: email@test.com'
```

#### Example Response
```javascript
[
    {
        "location_id": 4,
        "maid": 1,
        "platform_id": 7,
        "created_at": "2022-06-08T11:04:57.000Z",
        "updated_at": "2022-06-08T11:06:28.000Z"
    },
    {
        "location_id": 23,
        "maid": 2,
        "platform_id": 7,
        "created_at": "2022-06-08T11:06:42.000Z",
        "updated_at": "2022-06-08T11:38:15.000Z"
    },
    {
        "location_id": 69,
        "maid": 3,
        "platform_id": 7,
        "created_at": "2022-06-08T10:59:47.000Z",
        "updated_at": "2022-06-08T10:59:47.000Z"
    }
]
```

### POST

Use POST with a JSON payload to create/update Neighborly location for a given advertiser.

#### Examples

```
curl --location --request POST 'http://localhost:3001/client_reports/neighborly/location' \
--header 'Authorization: reachanalyticsreportingservicetoken' \
--header 'Content-Type: application/json' \
--header 'x-api-key: {{apigee_key}}' \
--header 'email: email@test.com' \
--data-raw '{
    "location_id": 23,
    "gmaid": "TEST_2"
}'
```

#### Example Response
```javascript
{
    "location_id": 23,
    "maid": 2,
    "platform_id": 7,
    "created_at": "2022-06-08T11:06:42.000Z",
    "updated_at": "2022-06-08T11:38:15.000Z"
}