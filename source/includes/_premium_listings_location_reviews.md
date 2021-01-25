### Reviews

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/location/[id]/reviews?[query_params]

#### API Name: premium_listings_location_reviews
#### Usage
Use GET to retrieve location reviews data , that comes from the Premium Listing Reporting API.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

This report will show on of the facebook, google, bing, yelp_api (or all of them) metrics for the particular id for.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`start_date`|No|Restricts the results to those occurring on or after this date|
|`end_date`|No|Restricts the results to those occurring on or before this date.|
|`types`|No| An array that filtrs the insights result for one of (facebook, bing, google, yelp_api)|

#### Examples

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/client_reports/premium_listings/location/GMAID/reviews' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings/location/reviews",
    "report_date": "2021-01-25",
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
                        "count": 100,
                        "replied": 0
                    },
                    {
                        "rating": 1,
                        "count": 41,
                        "replied": 0
                    },
                    {
                        "rating": 4,
                        "count": 11,
                        "replied": 0
                    },
                    {
                        "rating": 2,
                        "count": 2,
                        "replied": 0
                    }
                ],
                "interactionCount": 179,
                "matchedLocationsCount": 1,
                "ratingCount": 154,
                "repliedCount": 0,
                "unreadInteractionCount": 179,
                "unreadInteractions": [
                    {
                        "id": 211448498,
                        "dateCreated": "2021-01-08T14:35:10.000+01:00",
                        "lastUpdated": "2021-01-09T14:09:18.000+01:00",
                        "actionDate": "2021-01-05T04:28:52.000+01:00",
                        "threadActionDate": "2021-01-05T04:28:52.000+01:00",
                        "data": "STAY AWAY FROM THIS COMPANY! They don't stand behind work, and instead hide behind the \"act of God\" clause even though their salesperson claimed this fence could withstand Hurricane 2 force winds. The fence was about 2 weeks old and with a simple Tropical Storm the fence started to come apart on one side and our double gate broke. Nobody else in my neighborhood sustained any damages but yet they wanted to charges another $1000 to replace the gates. They wouldn't even meet us half way! Service has been terrible.",
                        "type": "REVIEW",
                        "directoryType": "GOOGLE",
                        "connectStatus": "CONNECTED",
                        "directLink": "https://search.google.com/local/reviews?placeid=ChIJuduHGsUm2YgRVkAaYlFwcnc",
                        "rating": 1.0,
                        "locationId": 2741576,
                        "replyByOwner": false,
                        "read": false,
                        "supportsReply": true,
                        "supportsLike": false,
                        "supportsUnlike": false,
                        "supportedFlagTypes": [],
                        "countLikes": null,
                        "countComments": 0,
                        "countViews": null,
                        "authorImage": "https://lh3.googleusercontent.com/-dw-gvw_8SUc/AAAAAAAAAAI/AAAAAAAAAWM/AMZuuckXTWvXKMpNdyf0O7qZy-p0Boy9Xw/c0x00000000-cc-rp/photo.jpg",
                        "liked": false,
                        "flagged": false,
                        "hasRepliesInApprovalNeeded": false,
                        "status": "VALID",
                        "author": "Karen Cerrato",
                        "secondaryData": null
                    },
                    {
                        "id": 211448499,
                        "dateCreated": "2021-01-08T14:35:10.000+01:00",
                        "lastUpdated": "2021-01-09T14:09:18.000+01:00",
                        "actionDate": "2020-11-24T20:53:31.000+01:00",
                        "threadActionDate": "2020-11-24T20:53:31.000+01:00",
                        "data": null,
                        "type": "REVIEW",
                        "directoryType": "GOOGLE",
                        "connectStatus": "CONNECTED",
                        "directLink": "https://search.google.com/local/reviews?placeid=ChIJuduHGsUm2YgRVkAaYlFwcnc",
                        "rating": 4.0,
                        "locationId": 2741576,
                        "replyByOwner": false,
                        "read": false,
                        "supportsReply": true,
                        "supportsLike": false,
                        "supportsUnlike": false,
                        "supportedFlagTypes": [],
                        "countLikes": null,
                        "countComments": 0,
                        "countViews": null,
                        "authorImage": "https://lh4.googleusercontent.com/-IIzUVu9oQYA/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmVDtU5g5oPoZLX5EYxpOKkNUJ5AQ/c0x00000000-cc-rp/photo.jpg",
                        "liked": false,
                        "flagged": false,
                        "hasRepliesInApprovalNeeded": false,
                        "status": "VALID",
                        "author": "jon ricco",
                        "secondaryData": null
                    },
                    {
                        "id": 211448500,
                        "dateCreated": "2021-01-08T14:35:10.000+01:00",
                        "lastUpdated": "2021-01-09T14:09:18.000+01:00",
                        "actionDate": "2020-11-01T20:19:26.000+01:00",
                        "threadActionDate": "2020-11-01T20:19:26.000+01:00",
                        "data": "Very unprofessional! Horrible Customer Service, very rude staff I would never recommend this Company STAY AWAY!",
                        "type": "REVIEW",
                        "directoryType": "GOOGLE",
                        "connectStatus": "CONNECTED",
                        "directLink": "https://search.google.com/local/reviews?placeid=ChIJuduHGsUm2YgRVkAaYlFwcnc",
                        "rating": 1.0,
                        "locationId": 2741576,
                        "replyByOwner": false,
                        "read": false,
                        "supportsReply": true,
                        "supportsLike": false,
                        "supportsUnlike": false,
                        "supportedFlagTypes": [],
                        "countLikes": null,
                        "countComments": 0,
                        "countViews": null,
                        "authorImage": "https://lh3.googleusercontent.com/a-/AOh14Gi0R1UHNC_GXJPrZiKYMrX3VhwhWyhPfCS5-TCn_A=c0x00000000-cc-rp",
                        "liked": false,
                        "flagged": false,
                        "hasRepliesInApprovalNeeded": false,
                        "status": "VALID",
                        "author": "Kenny Aldazoro",
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
        "yelp_api":{
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


