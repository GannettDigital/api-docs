### Locations

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/location/[id]

#### API Name: premoum_listings_location
#### Usage
Use GET to retrieve location data, that comes from the Premium Listing Reporting API and will be returned for an id.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.


#### Examples

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/client_reports/premium_listings/location/1234' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings/location/location",
    "report_date": "2021-01-21",
    "report_data": {
        "identifier": "RL001",
        "id": 2365174,
        "dateCreated": "2020-08-03T23:38:01.000+02:00",
        "lastUpdated": "2021-01-21T11:33:16.000+01:00",
        "name": "ReachLocal",
        "street": "Oxnard Street",
        "streetNo": "21700",
        "streetAndNumber": "21700 Oxnard Street",
        "addressExtra": "Suite 1600",
        "zip": "91367",
        "city": "Woodland Hills",
        "cellphone": null,
        "fax": null,
        "website": "https://www.reachlocal.com/",
        "email": null,
        "descriptionShort": "We are your digital marketing partner helping your business grow...",
        "descriptionLong": null,
        "openingHoursNotes": null,
        "lastSyncStarted": "2020-10-06T18:24:54.000+02:00",
        "country": "US",
        "lat": 34.17890281,
        "lng": -118.60191937,
        "imprint": null,
        "addressDisplay": true,
        "autoSync": false,
        "skipFacebookPicturesUpdate": false,
        "phone": "+1 818-274-0260",
        "openingHours": [
            {
                "dayOfWeek": 1,
                "from1": "09:00",
                "to1": "17:00"
            },
            {
                "dayOfWeek": 2,
                "from1": "09:00",
                "to1": "17:00"
            },
            {
                "dayOfWeek": 3,
                "from1": "09:00",
                "to1": "17:00"
            },
            {
                "dayOfWeek": 4,
                "from1": "09:00",
                "to1": "17:00"
            },
            {
                "dayOfWeek": 5,
                "from1": "09:00",
                "to1": "17:00"
            }
        ],
        "specialOpeningHours": [],
        "businessId": 1035342,
        "businessName": "ReachLocal",
        "businessSyncable": false,
        "businessCountry": "US",
        "businessType": "SMB",
        "status": "ACTIVE",
        "normalizationStatus": "NORMALIZED",
        "photos": [],
        "emailVerification": "UNVERIFIED",
        "labels": [],
        "keywords": [],
        "brands": [],
        "languages": [],
        "services": [],
        "paymentOptions": [],
        "socialProfiles": [
            {
                "type": "FACEBOOK",
                "url": "https://www.facebook.com/ReachLocal"
            }
        ],
        "attributes": [],
        "listings": [
            {
                "id": 58044144,
                "type": "FORD",
                "typeName": "Ford",
                "claimStatus": "NOT_CLAIMABLE",
                "syncStatus": "NO_ONLINE_LISTING",
                "status": "ACTIVE",
                "mandatoryFields": [],
                "lastSuccessfulUpdate": null,
                "lastChecked": null,
                "listingUrl": null,
                "listingId": null,
                "connectStatus": "NOT_NEEDED",
                "data": {}
            },
            {
                "id": 58044165,
                "type": "AUDI",
                "typeName": "Audi",
                "claimStatus": "NOT_CLAIMABLE",
                "syncStatus": "NO_ONLINE_LISTING",
                "status": "ACTIVE",
                "mandatoryFields": [],
                "lastSuccessfulUpdate": null,
                "lastChecked": null,
                "listingUrl": null,
                "listingId": null,
                "connectStatus": "NOT_NEEDED",
                "data": {}
            }
        ],
        "categories": [
            212,
            211
        ],
        "named_categories": [
            "Businesses and Services > Advertising and Marketing > Advertising Agency",
            "Businesses and Services > Advertising and Marketing > Marketing Agency"
        ],
        "contentLists": [],
        "features": [
            "AUTOMATION",
            "SUPPRESSION",
            "UPGRADE",
            "SUPPORT",
            "CLEANSING",
            "TRACKING",
            "INBOX"
        ],
        "cleansingStatus": "CLEANSED",
        "cleansingInvalidDataReason": null,
        "cleansingComment": null,
        "activeDirectoriesCount": 52,
        "activeListingsCount": 52,
        "publishedListingsCount": 49,
        "visibilityIndex": 646,
        "dataPoints": 20,
        "profileCompleteness": 52,
        "missingMandatoryFields": [
            "EMAIL",
            "KEYWORDS",
            "SERVICES",
            "ATTRIBUTES",
            "PHOTOS"
        ],
        "directoriesMissingConnect": [
            "FACEBOOK"
        ],
        "listingsInSync": 41,
        "listingsBeingUpdated": 8,
        "averageRating": 3.9,
        "province": "CA",
        "locationSyncable": false,
        "endDate": "2021-02-01T00:00:00.000+01:00",
        "needsReview": [],
        "suggestionsForFieldsAvailable": true
    }
}
```

Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the Report|
|report_date|String|Date report was run|
|report_data|Object|location details. [Location Objects](https://uberall.com/en/developers/resources#Location)<br> Named categories array details. [Categories](https://uberall.com/en/developers/resources#Category) |
