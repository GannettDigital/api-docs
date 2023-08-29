### Review Details

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/[gmaid]/location/[id]/review_details?[query_params]

#### API Name: premium_listings_location_review_details
#### Usage
Use GET to retrieve location review details data, that comes from the Premium Listing Reporting API.

This report will show one of facebook, google, bing, yelp_api (or all of them) metrics for the particular id for a location.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`data_types`|No|Restricts the results to those data types  e.g. [photo, review, checkin, conversation, question]|
|`ratings`|No|A float number which restricts the results based on the rating number between 1 and 5.|
|`types`|No| An array that filters the insights result for one of [google, facebook, bing, yelp_api, brownbook care_dash city_squares cylex dental_plans doctor_com ezlocal find_open healthgrades i_global judys_book my_local_services share_care showmelocal stadtbranchenbuch trip_advisor vitals web_md wellness where_to yalwa ya_sabe zoc_doc zwivel]|
|`page`|No|Restricts the results to those occurring after the offset|
|`page_size`|No|Restricts the number of locations that will be shown. (The max value of page_size is 50)|

#### Examples

```
curl -L -X GET 'https://data-connect-prod.gannettdigital.com/premium_listings/location/ID/review_details' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings/location/review_details",
    "report_date": "2021-01-25",
    "report_data": {
        "total_pages": 2,
        "page_size": 50,
        "page": 1,
        "details": {
            {
                "id": 215748393,
                "dateCreated": "2021-02-02T16:14:50.000+01:00",
                "lastUpdated": "2021-02-06T06:27:29.000+01:00",
                "actionDate": "2021-02-06T06:17:20.000+01:00",
                "threadActionDate": "2021-02-06T06:17:20.000+01:00",
                "data": "We just had the pleasure of doing business again with Glenwood Labels at the end of 2020. We wanted to re-design our business logo and then print new labels. Terry and Kelly's design team were awesome and professional as always. They provided us with multiple samples of logos...it was difficult to decide which logo to go with as they were all great. Once we decided on the new design, our labels were produced and delivered promptly. Another excellent experience with the work done by Glenwood Labels. Thanks to the entire team!\n\nWe have used Glenwood Labels twice now for our business and both times they have delivered excellent services. Both Terry and Kelly are great guys to deal with and are attentive to detail. They were extremely helpful to us with selecting label sizes and layout. Delivery was exactly what I expected and right on time! Their efficient and friendly service is second to none. I would highly recommend them for any of your label needs...in fact, I would only recommend Glenwood Labels to anyone! Thanks boys!",
                "type": "REVIEW",
                "directoryType": "GOOGLE",
                "connectStatus": "NOT_NEEDED",
                "directLink": "https://search.google.com/local/reviews?placeid=ChIJ4-EicgZ4hlQR8gdhjBuwu1U",
                "rating": 5.0,
                "locationId": 2765961,
                "replyByOwner": false,
                "read": false,
                "supportsReply": true,
                "supportsLike": false,
                "supportsUnlike": false,
                "supportedFlagTypes": [],
                "countLikes": null,
                "countComments": 1,
                "countViews": null,
                "authorImage": "https://lh6.googleusercontent.com/-chS6OT_5C-k/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucn7KBBb0tBhV50ge9vXWI-wB9uvww/c0x00000000-cc-rp/photo.jpg",
                "liked": false,
                "flagged": false,
                "hasRepliesInApprovalNeeded": false,
                "status": "VALID",
                "author": "Fortuna Bakery Ltd",
                "secondaryData": null
            },
            {
                "id": 215748388,
                "dateCreated": "2021-02-02T16:14:50.000+01:00",
                "lastUpdated": "2021-02-03T16:47:30.000+01:00",
                "actionDate": "2020-12-15T22:00:31.000+01:00",
                "threadActionDate": "2020-12-15T22:00:31.000+01:00",
                "data": null,
                "type": "REVIEW",
                "directoryType": "GOOGLE",
                "connectStatus": "NOT_NEEDED",
                "directLink": "https://search.google.com/local/reviews?placeid=ChIJ4-EicgZ4hlQR8gdhjBuwu1U",
                "rating": 1.0,
                "locationId": 2765961,
                "replyByOwner": false,
                "read": false,
                "supportsReply": true,
                "supportsLike": false,
                "supportsUnlike": false,
                "supportedFlagTypes": [],
                "countLikes": null,
                "countComments": 0,
                "countViews": null,
                "authorImage": "https://lh4.googleusercontent.com/-bU-0yGr2QiE/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclov-gqUESkx_LkoQ2MJOrDo5OjAg/c0x00000000-cc-rp/photo.jpg",
                "liked": false,
                "flagged": false,
                "hasRepliesInApprovalNeeded": false,
                "status": "VALID",
                "author": "NovAra Wellness Pharmacy Remedy'sRx",
                "secondaryData": null
            }
        }
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
|details|Array|Review details for specified locations. [Details Object](https://uberall.com/en/developers/resources#DataPoint)|


