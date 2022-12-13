### Review Details

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/neighborly/location/[gmaid]/review_details?[query_params] |
| GET | /client_reports/neighborly/locations/[query_params] |
| POST | /client_reports/neighborly/locations |

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
|`start_date`|No|Restricts the results to those occurring after the offset|
|`end_date`|No|Restricts the number of locations that will be shown. (The max value of page_size is 50)|

#### Examples

```
curl -L -X GET 'https://data-connect-prod.gannettdigital.com/client_reports/neighborly/location/GMAID/review_details' \
-H 'Authorization: TRUSTED_TOKEN'
```

#### Example Response
```javascript
{
    "report_type": "neighborly/locations/review_details",
    "report_date": "2021-01-25",
    "start_date": "2020-09-01",
    "end_date": "2020-09-02",
    "report_data": {
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
        ],
        "total_reviews_of_date_range": 180,
        "total_reviews_overall": 180,
        "reviews_per_day": [
            {
                "$id": "52",
                "day": "05/12/2022",
                "reviewCount": 1
            }
        ],
        "page_size": 50,
        "page": 1,
        "total_pages": 1
    },
    "global_master_advertiser_id": "USA_1"
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
|reviews_per_day|Array|Reviews per day array. (ReviewsPerDay part of) [Details Object](https://api2-test-unifiedsyncplatform.dwyergroup.com/swagger/index.html)|
|total_reviews_of_date_range|Integer|The total reviews of date range. (TotalReviewsOfDateRange part of) [TotalReviewsOfDateRange Object](https://api2-test-unifiedsyncplatform.dwyergroup.com/swagger/index.html)|
|total_reviews_overall|Integer|The total reviews. (TotalReviewsOverall part of) [TotalReviewsOfDateRange Object](https://api2-test-unifiedsyncplatform.dwyergroup.com/swagger/index.html)|


#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|page|No|Results page (defaults to 1)|
|per_page|No|Results per page (defaults to 25)|
|gmaid|no|Restricts the results to those occurring on gmaid.|

#### Examples

```
curl -L -X GET 'https://data-connect-prod.gannettdigital.com/client_reports/neighborly/locations' \
-H 'Authorization: TRUSTED_TOKEN'
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
Required attributes: `location_id`, `gmaid` and `brand_code`.
Optional attributes: `friendly_name`, `external_project_id`, `segment_id`
Brand_code is required by the Google Analytics Report to allow for authentication across every gmaid of a given brand.
If a segment_id is included this will also update any existing Google API configuration for the given gmaid.

#### Examples

```
curl -L -X POST 'https://data-connect-prod.gannettdigital.com/client_reports/neighborly/locations' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'Content-Type: application/json' \
--data-raw '{
    "location_id": 53627,
    "gmaid": "TEST_10294",
    "brand_code": "GUY"
}'
```

#### Example Response
```javascript
{
    "location_id": 53627,
    "maid": 10294,
    "platform_id": 7,
    "brand_code": "GUY",
    "created_at": "2022-06-08T11:06:42.000Z",
    "updated_at": "2022-06-08T11:38:15.000Z"
}