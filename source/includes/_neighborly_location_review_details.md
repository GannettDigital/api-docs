### Review Details

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/neighborly/location/[gmaid]/review_details?[query_params]

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

