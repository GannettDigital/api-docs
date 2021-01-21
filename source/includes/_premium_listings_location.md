### Locations

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/location/[id]

#### API Name: premoum_listings_location
#### Usage
Use GET to retrieve location data, that comes from the Premium Listing Reporting API and will be returned for a id by a.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.


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
    "report_date": "2020-04-03",
    "report_data": {
        {
            "identifier": "RL001",
            "id": 3123,
            "dateCreated": "2020-08-03T23:38:01.000+02:00",
            "lastUpdated": "2020-11-17T05:28:58.000+01:00",
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
            "status": "ACTIVE",
            "cleansingStatus": "CLEANSED",
            "cleansingInvalidDataReason": null,
            "keywords": [],
            "labels": [],
            "categories": [
                212,
                211
            ],
            "locationSyncable": false,
            "businessId": 1035342,
            "socialPostId": null,
            "hasFacebook": false,
            "endDate": "2020-11-29T00:00:00.000+01:00",
            "averageRating": 2.3,
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
            "openNow": false,
            "attributes": [],
            "activeDirectoriesCount": 51,
            "activeListingsCount": 51,
            "publishedListingsCount": 48,
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
            "listingsInSync": 47,
            "listingsBeingUpdated": 1,
            "visibilityIndex": 631,
            "dataPoints": 8,
            "province": "CA",
            "suggestionsForFieldsAvailable": true
        },
        {
            "identifier": "SIQ001",
            "id": 2411134,
            "dateCreated": "2020-08-31T21:58:45.000+02:00",
            "lastUpdated": "2020-11-16T19:52:13.000+01:00",
            "name": "SIQ Pet Shop",
            "street": "Hancock Street",
            "streetNo": "475",
            "streetAndNumber": "475 Hancock Street",
            "addressExtra": null,
            "zip": "02171",
            "city": "Quincy",
            "cellphone": null,
            "fax": null,
            "website": null,
            "email": null,
            "descriptionShort": null,
            "descriptionLong": null,
            "openingHoursNotes": null,
            "lastSyncStarted": null,
            "country": "US",
            "lat": 42.2704101,
            "lng": -71.0235567,
            "imprint": null,
            "addressDisplay": true,
            "autoSync": false,
            "skipFacebookPicturesUpdate": false,
            "phone": "+1 617-769-0088",
            "status": "ACTIVE",
            "cleansingStatus": "PENDING",
            "cleansingInvalidDataReason": null,
            "keywords": [],
            "labels": [],
            "categories": [
                731
            ],
            "locationSyncable": true,
            "businessId": 1035342,
            "socialPostId": null,
            "hasFacebook": false,
            "endDate": "2020-11-29T00:00:00.000+01:00",
            "averageRating": 0.0,
            "openingHours": [],
            "specialOpeningHours": [],
            "openNow": false,
            "attributes": [],
            "activeDirectoriesCount": 51,
            "activeListingsCount": 51,
            "publishedListingsCount": 4,
            "profileCompleteness": 25,
            "missingMandatoryFields": [
                "EMAIL",
                "WEBSITE",
                "KEYWORDS",
                "SERVICES",
                "OPENINGHOURS",
                "ATTRIBUTES",
                "PHOTOS",
                "DESCRIPTION_SHORT"
            ],
            "directoriesMissingConnect": [
                "GOOGLE",
                "FACEBOOK"
            ],
            "listingsInSync": 13,
            "listingsBeingUpdated": 36,
            "visibilityIndex": 33,
            "dataPoints": 0,
            "province": "Massachusetts",
            "suggestionsForFieldsAvailable": true
        }
    }
}
```

Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the Report|
|report_date|String|Date report was run|
|report_data|Object|location details. [Location Objects](https://uberall.com/en/developers/resources#Location)|
