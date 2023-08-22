### Reviews

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/[gmaid]/location/[id]/reviews?[query_params]

#### API Name: premium_listings_location_reviews
#### Usage
Use GET to retrieve location reviews data, that comes from the Premium Listing Reporting API.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

This report will show one of facebook, google, bing, yelp_api (or all of them) metrics for the particular id for a location.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|No|Restricts the results to those occurring on or after this date|
|`end_date`|No|Restricts the results to those occurring on or before this date.|
|`types`|No| An array that filters the insights result for one of (facebook, bing, google, yelp_api)|

#### Examples

```
curl --location 'https://api.localiqservices.com/client_reports/premium_listings/USA_92131/location/2800302/reviews' \
--header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings/location/reviews",
    "report_date": "2023-08-11",
    "report_data": {
        "facebook": {
            "status": "SUCCESS",
            "response": {
                "averageRating": 0.0,
                "countByRating": [],
                "interactionCount": 0,
                "matchedLocationsCount": 1,
                "ratingCount": 0,
                "repliedCount": 0,
                "unreadInteractionCount": 0,
                "unreadInteractions": []
            }
        },
        "google": {
            "status": "SUCCESS",
            "response": {
                "averageRating": 3.8,
                "countByRating": [
                    {
                        "rating": 5,
                        "count": 13,
                        "replied": 3
                    },
                    {
                        "rating": 1,
                        "count": 6,
                        "replied": 4
                    },
                    {
                        "rating": 4,
                        "count": 1,
                        "replied": 0
                    }
                ],
                "interactionCount": 25,
                "matchedLocationsCount": 1,
                "ratingCount": 20,
                "repliedCount": 7,
                "unreadInteractionCount": 25,
                "unreadInteractions": [
                    {
                        "id": 350934068,
                        "dateCreated": "2023-02-15T22:56:41.000+01:00",
                        "lastUpdated": "2023-06-27T04:42:18.000+02:00",
                        "actionDate": "2023-03-11T00:35:46.000+01:00",
                        "threadActionDate": "2023-03-11T00:35:46.000+01:00",
                        "data": "Always courteous, professional customer service.  A little pricey, but what isn't these days.",
                        "type": "REVIEW",
                        "directoryType": "GOOGLE",
                        "connectStatus": "CONNECTED",
                        "directLink": "https://search.google.com/local/reviews?placeid=ChIJBS9E3GQwxYkRheWdnuEDFf8",
                        "rating": 5.0,
                        "locationId": 2800302,
                        "replyByOwner": false,
                        "read": false,
                        "supportsReply": true,
                        "supportsLike": false,
                        "supportsUnlike": false,
                        "supportedFlagTypes": [],
                        "countLikes": null,
                        "countComments": 1,
                        "countViews": null,
                        "authorImage": "https://lh3.googleusercontent.com/a-/AD_cMMRa8Bc1yUOPX3Z2Zx_aH5sJ7ttudOY5LmFRLyto4odsIuc=s120-c-rp-mo-ba4-br100",
                        "liked": false,
                        "flagged": false,
                        "hasRepliesInApprovalNeeded": false,
                        "status": "VALID",
                        "replyMaxLength": 4096,
                        "author": "T F",
                        "secondaryData": null
                    },
                    {
                        "id": 350934068,
                        "dateCreated": "2023-02-15T22:56:41.000+01:00",
                        "lastUpdated": "2023-06-27T04:42:18.000+02:00",
                        "actionDate": "2023-03-11T00:35:46.000+01:00",
                        "threadActionDate": "2023-03-11T00:35:46.000+01:00",
                        "data": "Always courteous, professional customer service.  A little pricey, but what isn't these days.",
                        "type": "REVIEW",
                        "directoryType": "GOOGLE",
                        "connectStatus": "CONNECTED",
                        "directLink": "https://search.google.com/local/reviews?placeid=ChIJBS9E3GQwxYkRheWdnuEDFf8",
                        "rating": 5.0,
                        "locationId": 2800302,
                        "replyByOwner": false,
                        "read": false,
                        "supportsReply": true,
                        "supportsLike": false,
                        "supportsUnlike": false,
                        "supportedFlagTypes": [],
                        "countLikes": null,
                        "countComments": 1,
                        "countViews": null,
                        "authorImage": "https://lh3.googleusercontent.com/a-/AD_cMMRa8Bc1yUOPX3Z2Zx_aH5sJ7ttudOY5LmFRLyto4odsIuc=s120-c-rp-mo-ba4-br100",
                        "liked": false,
                        "flagged": false,
                        "hasRepliesInApprovalNeeded": false,
                        "status": "VALID",
                        "replyMaxLength": 4096,
                        "author": "T F",
                        "secondaryData": null
                    },
                    {
                        "id": 350119455,
                        "dateCreated": "2023-02-13T16:58:42.000+01:00",
                        "lastUpdated": "2023-06-27T04:42:18.000+02:00",
                        "actionDate": "2023-02-13T16:48:18.000+01:00",
                        "threadActionDate": "2023-02-13T16:48:18.000+01:00",
                        "data": "A very rude employee named Liz called requesting payment.  Liz was annoyed with questions and was not able to answer questions in a manner that 1. Was respectful 2. Was competent. Billing practices and filling schedules seem unscrupulous and haphazard. The $100 minimum is exploitation when tank sizes don’t support that even at a full fill.  This is on top astronomically expensive prices that are more than $1 from EIA averages.  Nothing supports this higher cost other than greed.  Stay away.",
                        "type": "REVIEW",
                        "directoryType": "GOOGLE",
                        "connectStatus": "CONNECTED",
                        "directLink": "https://search.google.com/local/reviews?placeid=ChIJBS9E3GQwxYkRheWdnuEDFf8",
                        "rating": 1.0,
                        "locationId": 2800302,
                        "replyByOwner": false,
                        "read": false,
                        "supportsReply": true,
                        "supportsLike": false,
                        "supportsUnlike": false,
                        "supportedFlagTypes": [],
                        "countLikes": null,
                        "countComments": 1,
                        "countViews": null,
                        "authorImage": "https://lh3.googleusercontent.com/a/AAcHTtca4Cd8EFUNVYbVenomwrH8FUqBCoTYvhUoWArjkkug=s120-c-rp-mo-br100",
                        "liked": false,
                        "flagged": false,
                        "hasRepliesInApprovalNeeded": false,
                        "status": "VALID",
                        "replyMaxLength": 4096,
                        "author": "james James",
                        "secondaryData": null
                    }
                ]
            }
        },
        "bing": {
            "status": "SUCCESS",
            "response": {
                "averageRating": 0.0,
                "countByRating": [],
                "interactionCount": 0,
                "matchedLocationsCount": 1,
                "ratingCount": 0,
                "repliedCount": 0,
                "unreadInteractionCount": 0,
                "unreadInteractions": []
            }
        },
        "yelp": {
            "status": "SUCCESS",
            "response": {
                "averageRating": 0.0,
                "countByRating": [],
                "interactionCount": 0,
                "matchedLocationsCount": 1,
                "ratingCount": 0,
                "repliedCount": 0,
                "unreadInteractionCount": 0,
                "unreadInteractions": []
            }
        }
    }
}
```
|Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the Report|
|report_date|String|Date report was run|
|report_data|Object|Report details. [Report Data Object](https://uberall.com/en/developers/apiDocumentation#_api_dashboard_customerFeedback-GET)|


