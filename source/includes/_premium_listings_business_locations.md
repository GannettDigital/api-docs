### Locations

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/business/[gmaid]/locations?[query_params]

#### API Name: business_locations
#### Usage
Use GET to retrieve business locations data, that comes from the Premium Listing Reporting API and will be returned for a GMAID by a specific date range determined by start date and end date.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`page`|No|Restricts the results to those occurring after the offset|
|`page_size`|No|Restricts the number of locations that will be shown. (The max value of page_size is 50)|
|`profile_id`|No|Show only one location with the given profile id. (The max size of profile_id is 255)|

#### Examples

```
curl --location 'https://api.localiqservices.com/client_reports/premium_listings/business/USA_92131/locations' \
--header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings/business/locations",
    "report_date": "2023-08-11",
    "global_master_advertiser_id": "USA_92131",
    "report_data": {
        "locations": [
            {
                "identifier": "Tunkhannock",
                "id": 2800302,
                "dateCreated": "2019-08-08T16:21:05.000+02:00",
                "lastUpdated": "2023-08-08T21:34:34.000+02:00",
                "name": "Ace-Robbins",
                "street": "East Tioga Street",
                "streetNo": "4022",
                "streetAndNumber": "4022 East Tioga Street",
                "addressExtra": "U.S. 6",
                "zip": "18657",
                "city": "Tunkhannock",
                "cellphone": null,
                "fax": null,
                "website": "https://www.acerobbins.com",
                "email": null,
                "descriptionShort": "Your one-stop, premium fuel company and HVAC contractor in Tunkhannock and Northeastern Pennsylvania!",
                "descriptionLong": "Your one-stop, premium fuel company and HVAC contractor in Tunkhannock and Northeastern Pennsylvania!",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-04-10T20:10:38.000+02:00",
                "country": "US",
                "lat": 41.53796909,
                "lng": -75.9329872,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 570-232-4081",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618714,
                        "dateCreated": "2021-02-10T12:10:46.000+01:00",
                        "repoKey": "IKHG54HaGI.png",
                        "locationId": 2800302,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800302/IKHG54HaGI.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800302/medium_IKHG54HaGI.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800302/thumb_IKHG54HaGI.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-ace-robbins.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "kristen",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "mindy",
                        "adminOnly": false
                    },
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119,
                    97,
                    88
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-09-01T00:00:00.000+02:00",
                "averageRating": 3.8,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 44,
                "listingsBeingUpdated": 11,
                "visibilityIndex": 758,
                "dataPoints": 31,
                "province": "PA",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Southold, NY",
                "id": 2800311,
                "dateCreated": "2019-08-08T16:21:09.000+02:00",
                "lastUpdated": "2023-08-07T22:39:49.000+02:00",
                "name": "Burt's Reliable",
                "street": "Youngs Avenue",
                "streetNo": "1515",
                "streetAndNumber": "1515 Youngs Avenue",
                "addressExtra": null,
                "zip": "11971",
                "city": "Southold",
                "cellphone": null,
                "fax": null,
                "website": "http://www.burts.com",
                "email": null,
                "descriptionShort": "Burt's Reliable provides heating oil delivery, HVAC, and more across the North Fork of Long Island.",
                "descriptionLong": "Burt's Reliable provides expert heating oil delivery, HVAC, and plumbing services across the North Fork and East End of Long Island including Riverhead, Greenport, Cutchogue, Southold, Hampton Bays, Quogue, Westhampton, Jamesport, Baiting Hollow, Flanders, and Orient.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-08-02T15:55:49.000+02:00",
                "country": "US",
                "lat": 41.06630415,
                "lng": -72.42832693,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 631-602-3124",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618729,
                        "dateCreated": "2021-02-10T12:11:02.000+01:00",
                        "repoKey": "M1OaECRaU8.png",
                        "locationId": 2800311,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800311/M1OaECRaU8.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800311/medium_M1OaECRaU8.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800311/thumb_M1OaECRaU8.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-burts-reliable.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "mindy",
                        "adminOnly": false
                    },
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "kristen",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    545,
                    97,
                    88,
                    793,
                    1818,
                    3386
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-09-01T00:00:00.000+02:00",
                "averageRating": 4.9,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:30",
                        "to1": "16:30"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 52,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 44,
                "listingsBeingUpdated": 11,
                "visibilityIndex": 744,
                "dataPoints": 215,
                "province": "NY",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm044",
                "id": 2800321,
                "dateCreated": "2019-08-08T16:21:11.000+02:00",
                "lastUpdated": "2023-08-11T02:31:46.000+02:00",
                "name": "Murray-Heutz Oil and Propane",
                "street": "General Turner Hill Road",
                "streetNo": "84",
                "streetAndNumber": "84 General Turner Hill Road",
                "addressExtra": null,
                "zip": "04282",
                "city": "Turner",
                "cellphone": null,
                "fax": null,
                "website": "http://www.mhoilandpropane.com",
                "email": null,
                "descriptionShort": "Murray-Heutz delivers heating oil and propane in Central Maine.",
                "descriptionLong": "Murray-Heutz Oil and Propane delivers comfort to thousands of homes and businesses in Central Maine. Beyond being specialists in heating oil and propane delivery, we can also handle all types of heating system repairs, including furnaces and boilers. We're the one you can trust to get the job done right!",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-04-10T22:30:37.000+02:00",
                "country": "US",
                "lat": 44.2624386,
                "lng": -70.2539856,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 207-536-6375",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618740,
                        "dateCreated": "2021-02-10T12:11:22.000+01:00",
                        "repoKey": "9gzEFJojeo.jpg",
                        "locationId": 2800321,
                        "description": null,
                        "identifier": null,
                        "main": true,
                        "logo": false,
                        "type": "MAIN",
                        "url": "/uploads/userpics/2800321/9gzEFJojeo.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800321/medium_9gzEFJojeo.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800321/thumb_9gzEFJojeo.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/locations/5d4c2fd7b15baa720c64ad21/zusmS6mJ-logomurrayheutz.png",
                        "isPremium": false
                    },
                    {
                        "id": 43618741,
                        "dateCreated": "2021-02-10T12:11:22.000+01:00",
                        "repoKey": "c0u6qJIgaK.png",
                        "locationId": 2800321,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800321/c0u6qJIgaK.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800321/medium_c0u6qJIgaK.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800321/thumb_c0u6qJIgaK.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-murray-heutz.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "kristen",
                        "adminOnly": false
                    },
                    {
                        "name": "sharla",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119,
                    888
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-09-01T00:00:00.000+02:00",
                "averageRating": 4.6,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "12:00"
                    }
                ],
                "specialOpeningHours": [
                    {
                        "date": "2022-07-01",
                        "closed": true
                    },
                    {
                        "date": "2022-07-04",
                        "closed": true
                    }
                ],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 44,
                "listingsBeingUpdated": 6,
                "visibilityIndex": 680,
                "dataPoints": 434,
                "province": "ME",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm075",
                "id": 2800327,
                "dateCreated": "2019-08-08T16:21:13.000+02:00",
                "lastUpdated": "2023-08-09T23:32:22.000+02:00",
                "name": "Lansing Ice and Fuel",
                "street": "Center Street",
                "streetNo": "911",
                "streetAndNumber": "911 Center Street",
                "addressExtra": null,
                "zip": "48906",
                "city": "Lansing",
                "cellphone": null,
                "fax": null,
                "website": "http://www.lansingiceandfuel.com",
                "email": null,
                "descriptionShort": "Lansing Ice & fuel is a local fifth-generation family-owned business. We deliver fuel oil & propane.",
                "descriptionLong": "Lansing Ice & fuel is a local fifth-generation family-owned business. We deliver fuel oil and propane to residential and commercial customers in Ingham, Eaton, Shiawassee and Clinton Counties! We provide fair pricing, quality products, convenient programs and superior customer service .",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T10:25:31.000+01:00",
                "country": "US",
                "lat": 42.7442723,
                "lng": -84.5485094,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 517-940-6584",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618747,
                        "dateCreated": "2021-02-10T12:11:32.000+01:00",
                        "repoKey": "mwCSIPhf7K.png",
                        "locationId": 2800327,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800327/mwCSIPhf7K.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800327/medium_mwCSIPhf7K.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800327/thumb_mwCSIPhf7K.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-lansing.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "michele",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "Paola",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119,
                    888
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-09-01T00:00:00.000+02:00",
                "averageRating": 4.7,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:30"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 52,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 45,
                "listingsBeingUpdated": 7,
                "visibilityIndex": 685,
                "dataPoints": 108,
                "province": "MI",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/Detroit"
            },
            {
                "identifier": "Warm071",
                "id": 2800329,
                "dateCreated": "2019-08-08T16:21:14.000+02:00",
                "lastUpdated": "2023-08-09T23:32:22.000+02:00",
                "name": "Warm Thoughts Communications",
                "street": "Broadacres Drive",
                "streetNo": "300",
                "streetAndNumber": "300 Broadacres Drive",
                "addressExtra": "Suite 205",
                "zip": "07003",
                "city": "Bloomfield",
                "cellphone": null,
                "fax": null,
                "website": "http://www.warmthoughts.com",
                "email": null,
                "descriptionShort": "For more than 25 years, Warm Thoughts Communications has brought cutting-edge marketing & consulting strategies to the energy industry.",
                "descriptionLong": "For more than 25 years, Warm Thoughts Communications has brought cutting-edge strategies to the energy industry.\n\nWe are experts in understanding how your propane, heating oil and HVAC-related business makes money, how your customers think, and how to use modern marketing techniques to fuel your growth. Our team of 30+ professionals eat, sleep and breathe your business, and have done work for some of the industry's most impressive companies, with exceptional results.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2021-09-29T17:45:31.000+02:00",
                "country": "US",
                "lat": 40.8388588,
                "lng": -74.1824367,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 201-330-9276",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618749,
                        "dateCreated": "2021-02-10T12:11:36.000+01:00",
                        "repoKey": "Qpz3I4K9No.png",
                        "locationId": 2800329,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800329/Qpz3I4K9No.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800329/medium_Qpz3I4K9No.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800329/thumb_Qpz3I4K9No.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-warm-thoughts.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "Paola",
                        "adminOnly": false
                    },
                    {
                        "name": "WTC",
                        "adminOnly": false
                    },
                    {
                        "name": "Kahyo",
                        "adminOnly": true
                    }
                ],
                "categories": [
                    212,
                    2166,
                    213
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-09-01T00:00:00.000+02:00",
                "averageRating": 4.8,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "18:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "18:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "18:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "18:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "18:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 45,
                "listingsBeingUpdated": 10,
                "visibilityIndex": 781,
                "dataPoints": 28,
                "province": "NJ",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Ridgefield",
                "id": 2800333,
                "dateCreated": "2019-11-15T16:50:43.000+01:00",
                "lastUpdated": "2023-08-11T02:31:46.000+02:00",
                "name": "Casey Energy",
                "street": "Main Street",
                "streetNo": "536",
                "streetAndNumber": "536 Main Street",
                "addressExtra": null,
                "zip": "06877",
                "city": "Ridgefield",
                "cellphone": null,
                "fax": null,
                "website": "http://www.casey-energy.com",
                "email": null,
                "descriptionShort": "Casey Energy is your destination for safe and affordable propane gas and heating oil deliveries.",
                "descriptionLong": "Casey Energy is the most affordable propane and heating oil option in the area. Proudly serving northern Fairfield and northern Westchester counties, Casey Energy is your destination for safe and affordable propane gas and heating oil deliveries from friendly, trained drivers.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T10:25:31.000+01:00",
                "country": "US",
                "lat": 41.28613644,
                "lng": -73.49822394,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 877-884-9205",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618753,
                        "dateCreated": "2021-02-10T12:11:44.000+01:00",
                        "repoKey": "zQJiqPpINB.png",
                        "locationId": 2800333,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800333/zQJiqPpINB.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800333/medium_zQJiqPpINB.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800333/thumb_zQJiqPpINB.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-casey-energy.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "Paola",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    2362,
                    545,
                    97,
                    88
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.7,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:30"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 48,
                "listingsBeingUpdated": 6,
                "visibilityIndex": 735,
                "dataPoints": 78,
                "province": "CT",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm016",
                "id": 2800334,
                "dateCreated": "2019-11-15T16:50:44.000+01:00",
                "lastUpdated": "2023-08-09T23:32:22.000+02:00",
                "name": "Clyde S. Walton",
                "street": "South Broad Street",
                "streetNo": "400",
                "streetAndNumber": "400 South Broad Street",
                "addressExtra": null,
                "zip": "19446",
                "city": "Lansdale",
                "cellphone": null,
                "fax": null,
                "website": "http://www.waltoninc.com",
                "email": null,
                "descriptionShort": "Since 1922, Walton Inc. has been providing reliable fuel delivery and HVAC services to our Pennsylvania neighbors.",
                "descriptionLong": "Since 1922, Walton Inc. has been providing reliable fuel delivery and HVAC services to our Pennsylvania neighbors. When it comes to your home comfort, experience matters - and we've got more of it than anyone. Whatever you need to keep your family comfortable, don't worry - we'll take care of it.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2021-09-29T17:45:31.000+02:00",
                "country": "US",
                "lat": 40.23672022,
                "lng": -75.28879994,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 267-354-4039",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618754,
                        "dateCreated": "2021-02-10T12:11:46.000+01:00",
                        "repoKey": "2lCATagu0q.png",
                        "locationId": 2800334,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800334/2lCATagu0q.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800334/medium_2lCATagu0q.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800334/thumb_2lCATagu0q.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-clyde-s-walton.png",
                        "isPremium": false
                    }
                ],
                "keywords": [
                    "propane",
                    "propane near me",
                    "heating oil near me",
                    "heating oil",
                    "heating oil delivery",
                    "propane delivery"
                ],
                "labels": [
                    {
                        "name": "kristen",
                        "adminOnly": false
                    },
                    {
                        "name": "Paola",
                        "adminOnly": false
                    },
                    {
                        "name": "michele",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    2362,
                    545
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.7,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 52,
                "profileCompleteness": 73,
                "missingMandatoryFields": [
                    "EMAIL",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 49,
                "listingsBeingUpdated": 6,
                "visibilityIndex": 773,
                "dataPoints": 389,
                "province": "PA",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm024",
                "id": 2800335,
                "dateCreated": "2019-11-15T16:50:45.000+01:00",
                "lastUpdated": "2023-08-11T05:21:06.000+02:00",
                "name": "Frank Lamparelli",
                "street": "Turnpike Street",
                "streetNo": "1026",
                "streetAndNumber": "1026 Turnpike Street",
                "addressExtra": null,
                "zip": "02021",
                "city": "Canton",
                "cellphone": null,
                "fax": null,
                "website": "http://www.franklamparelli.com",
                "email": null,
                "descriptionShort": "Your best choice for propane, heating oil & service in southeast Massachusetts.",
                "descriptionLong": "Your best choice for propane, heating oil & service in southeast Massachusetts. We're a one-stop shop for residential and commercial fuel deliveries, repairs, installations and more.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T10:10:30.000+01:00",
                "country": "US",
                "lat": 42.1495658,
                "lng": -71.1040715,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 781-828-2477",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618755,
                        "dateCreated": "2021-02-10T12:11:48.000+01:00",
                        "repoKey": "4yhB2kCquH.png",
                        "locationId": 2800335,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800335/4yhB2kCquH.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800335/medium_4yhB2kCquH.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800335/thumb_4yhB2kCquH.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-frank-lamparelli.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.6,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:30",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 46,
                "listingsBeingUpdated": 9,
                "visibilityIndex": 763,
                "dataPoints": 93,
                "province": "MA",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm006",
                "id": 2800336,
                "dateCreated": "2019-11-15T16:50:45.000+01:00",
                "lastUpdated": "2023-08-01T11:38:36.000+02:00",
                "name": "Bolkema Fuel Company",
                "street": "Mollie Court",
                "streetNo": "75",
                "streetAndNumber": "75 Mollie Court",
                "addressExtra": null,
                "zip": "07430",
                "city": "Mahwah",
                "cellphone": null,
                "fax": null,
                "website": "http://www.bolkemafuel.com",
                "email": null,
                "descriptionShort": "Bolkema Fuel Company has been providing dependable home heating oil delivery and heating and air conditioning services.",
                "descriptionLong": "Bolkema Fuel Company has been providing dependable home heating oil delivery and heating and air conditioning services for many years, for both residential and commercial clients in northern New Jersey and lower New York State. We pride ourselves on a tradition of service and reliability.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T16:35:32.000+01:00",
                "country": "US",
                "lat": 41.02693028,
                "lng": -74.16212944,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 201-891-1000",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618760,
                        "dateCreated": "2021-02-10T12:11:50.000+01:00",
                        "repoKey": "8Rm2HyWUM6.png",
                        "locationId": 2800336,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800336/8Rm2HyWUM6.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800336/medium_8Rm2HyWUM6.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800336/thumb_8Rm2HyWUM6.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-bolkema-fuel.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    545
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.7,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 49,
                "listingsBeingUpdated": 6,
                "visibilityIndex": 751,
                "dataPoints": 43,
                "province": "NJ",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm047",
                "id": 2800338,
                "dateCreated": "2019-11-15T16:50:47.000+01:00",
                "lastUpdated": "2023-08-09T23:32:25.000+02:00",
                "name": "Oehlert Brothers",
                "street": "South Township Line Road",
                "streetNo": "1203",
                "streetAndNumber": "1203 South Township Line Road",
                "addressExtra": null,
                "zip": "19468",
                "city": "Royersford",
                "cellphone": null,
                "fax": null,
                "website": "http://www.theenergyexperts.com",
                "email": null,
                "descriptionShort": "Thousands of our neighbors rely on Oehlert Brothers - the Energy Experts - for reliable fuel delivery, equipment installations, outstanding service, and much more. Serving Eastern PA since 1948.",
                "descriptionLong": "Since Christmas Eve in 1948, Oehlert Bros. has built a reputation of being a heating oil delivery service that people in Eastern Pennsylvania can count on for prompt and professional heating oil delivery.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T16:35:32.000+01:00",
                "country": "US",
                "lat": 40.2035514,
                "lng": -75.51190705,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 610-881-6327",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618764,
                        "dateCreated": "2021-02-10T12:11:54.000+01:00",
                        "repoKey": "rkIHZfAM3Z.png",
                        "locationId": 2800338,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800338/rkIHZfAM3Z.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800338/medium_rkIHZfAM3Z.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800338/thumb_rkIHZfAM3Z.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-oehlert.png",
                        "isPremium": false
                    }
                ],
                "keywords": [
                    "heating oil",
                    "heating oil delivery",
                    "heating oil near me",
                    "heating equipment",
                    "air conditioning",
                    "hvac"
                ],
                "labels": [
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "sharla",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    545
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.8,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:30"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 73,
                "missingMandatoryFields": [
                    "EMAIL",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 47,
                "listingsBeingUpdated": 7,
                "visibilityIndex": 734,
                "dataPoints": 340,
                "province": "PA",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm019",
                "id": 2800339,
                "dateCreated": "2019-11-15T16:50:47.000+01:00",
                "lastUpdated": "2023-08-11T01:27:27.000+02:00",
                "name": "Cubby Oil",
                "street": "Jonspin Road",
                "streetNo": "36",
                "streetAndNumber": "36 Jonspin Road",
                "addressExtra": null,
                "zip": "01887",
                "city": "Wilmington",
                "cellphone": null,
                "fax": null,
                "website": "http://www.cubbyoil.com",
                "email": null,
                "descriptionShort": "Expert residential & commercial heating & cooling service, installations, and fuel delivery in the Greater Boston area.",
                "descriptionLong": "From Boston to Lexington and Concord to Andover and communities in between, Cubby Oil & Energy has been taking care of heating oil and HVA customers in eastern Massachusetts for more than 70 years.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-04-10T20:35:38.000+02:00",
                "country": "US",
                "lat": 42.5956462,
                "lng": -71.1527425,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 617-876-1885",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618766,
                        "dateCreated": "2021-02-10T12:11:56.000+01:00",
                        "repoKey": "V66ixS86l3.png",
                        "locationId": 2800339,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800339/V66ixS86l3.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800339/medium_V66ixS86l3.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800339/thumb_V66ixS86l3.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-cubby.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "Paola",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "kristen",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 5.0,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 47,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK",
                    "GOOGLE"
                ],
                "listingsInSync": 39,
                "listingsBeingUpdated": 15,
                "visibilityIndex": 639,
                "dataPoints": 85,
                "province": "MA",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Staten Island",
                "id": 2800340,
                "dateCreated": "2019-11-15T16:50:47.000+01:00",
                "lastUpdated": "2023-08-08T21:34:38.000+02:00",
                "name": "Rucci Oil",
                "street": "Richmond Terrace",
                "streetNo": "1693",
                "streetAndNumber": "1693 Richmond Terrace",
                "addressExtra": null,
                "zip": "10310",
                "city": "Staten Island",
                "cellphone": null,
                "fax": null,
                "website": "http://ruccioil.com",
                "email": null,
                "descriptionShort": "Whether you need propane or heating oil for your home, or fuels for your business, we can help.",
                "descriptionLong": "Rucci is a leading heating oil, air conditioning and plumbing company based in Staten Island with services extending to Brooklyn, Bayonne, Manhattan and the Bronx.  We have the knowledge and experience to provide you with smart solutions from reliable heating services to AC installations & repairs. We provide residential & commercial maintenance to 24-hour emergency heating service for our valued customers. Contact Rucci today for reliable and trustworthy service.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-17T16:25:37.000+01:00",
                "country": "US",
                "lat": 40.63869619,
                "lng": -74.1225708,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 718-285-7385",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618767,
                        "dateCreated": "2021-02-10T12:11:58.000+01:00",
                        "repoKey": "Ug13pKEwR3.png",
                        "locationId": 2800340,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800340/Ug13pKEwR3.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800340/medium_Ug13pKEwR3.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800340/thumb_Ug13pKEwR3.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-rucci.png",
                        "isPremium": false
                    }
                ],
                "keywords": [
                    "heating oil",
                    "plumbing",
                    "air conditioning"
                ],
                "labels": [
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "sharla",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    793,
                    545
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.7,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 73,
                "missingMandatoryFields": [
                    "EMAIL",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 48,
                "listingsBeingUpdated": 7,
                "visibilityIndex": 760,
                "dataPoints": 176,
                "province": "NY",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Cambridge, VT",
                "id": 2800344,
                "dateCreated": "2019-11-15T16:50:49.000+01:00",
                "lastUpdated": "2023-08-09T23:32:22.000+02:00",
                "name": "Corse Fuels",
                "street": "Vermont 15",
                "streetNo": "5812",
                "streetAndNumber": "5812 Vermont 15",
                "addressExtra": null,
                "zip": "05464",
                "city": "Cambridge",
                "cellphone": null,
                "fax": null,
                "website": "https://www.corsefuels.com",
                "email": null,
                "descriptionShort": "Corse Fuels is a reliable supplier of propane, heating oil, kerosene, diesel, and motor fuel.",
                "descriptionLong": "Founded in 1947 as a true mom-and-pop shop working right out of Jack and Jane's home, Jack F. Corse Inc. has grown over the years. Now in our third generation, we are a reliable supplier of propane, heating oil, kerosene, diesel, and motor fuel to residents and businesses throughout Lamoille County, Franklin County, Westford County, Fairfax County, Underhill County, and Jericho County.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-04-03T15:06:51.000+02:00",
                "country": "US",
                "lat": 44.6495,
                "lng": -72.817032,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 802-644-2749",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618772,
                        "dateCreated": "2021-02-10T12:12:06.000+01:00",
                        "repoKey": "iQRoGxapah.png",
                        "locationId": 2800344,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800344/iQRoGxapah.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800344/medium_iQRoGxapah.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800344/thumb_iQRoGxapah.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-corse-fuels.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "paola",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "dan",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.8,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 44,
                "listingsBeingUpdated": 11,
                "visibilityIndex": 734,
                "dataPoints": 15,
                "province": "VT",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Bridgeport",
                "id": 2800345,
                "dateCreated": "2019-11-15T16:50:50.000+01:00",
                "lastUpdated": "2023-08-03T14:16:01.000+02:00",
                "name": "Diamond Landscapes and Athletic Fields",
                "street": "Island Brook Avenue",
                "streetNo": "1 1/2",
                "streetAndNumber": "1 1/2 Island Brook Avenue",
                "addressExtra": null,
                "zip": "06606",
                "city": "Bridgeport",
                "cellphone": null,
                "fax": null,
                "website": "https://www.diamondlandscapegroup.com",
                "email": null,
                "descriptionShort": "Diamond landscape group provides a full range of services for landscaping and athletic fields.",
                "descriptionLong": "We provide a full range of services for landscaping and property care. Find out how we can create a living and working environment that will inspire you. We provide residential landscaping service, commercial landscaping services, lawn & shrub care and athletic field renovation and maintenance.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2021-09-29T17:45:29.000+02:00",
                "country": "US",
                "lat": 41.1979615,
                "lng": -73.1872783,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 203-628-4377",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618774,
                        "dateCreated": "2021-02-10T12:12:08.000+01:00",
                        "repoKey": "7jRnaDCpw2.png",
                        "locationId": 2800345,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800345/7jRnaDCpw2.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800345/medium_7jRnaDCpw2.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800345/thumb_7jRnaDCpw2.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-diamond-landscapes.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "Sharla",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    1409,
                    542,
                    2778
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 3.5,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 52,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 48,
                "listingsBeingUpdated": 7,
                "visibilityIndex": 760,
                "dataPoints": 12,
                "province": "Connecticut",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm025",
                "id": 2800346,
                "dateCreated": "2019-11-15T16:50:50.000+01:00",
                "lastUpdated": "2023-08-09T23:32:23.000+02:00",
                "name": "Fredericks Fuel",
                "street": "Oak Ridge Road",
                "streetNo": "225",
                "streetAndNumber": "225 Oak Ridge Road",
                "addressExtra": null,
                "zip": "07438",
                "city": "West Milford",
                "cellphone": null,
                "fax": null,
                "website": "http://www.fredericksfuel.com",
                "email": null,
                "descriptionShort": "Fredericks fuel for home heating service and heating oil delivery in northern?New Jersey",
                "descriptionLong": "Fredericks fuel for home heating service and heating oil delivery in northern?New Jersey",
                "openingHoursNotes": null,
                "lastSyncStarted": "2021-09-29T17:45:29.000+02:00",
                "country": "US",
                "lat": 41.0511338,
                "lng": -74.4767616,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 973-841-6191",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618776,
                        "dateCreated": "2021-02-10T12:12:10.000+01:00",
                        "repoKey": "QeALNEKXPJ.png",
                        "locationId": 2800346,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800346/QeALNEKXPJ.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800346/medium_QeALNEKXPJ.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800346/thumb_QeALNEKXPJ.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-fredericks-fuel.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    1818
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.1,
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
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 52,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 41,
                "listingsBeingUpdated": 14,
                "visibilityIndex": 659,
                "dataPoints": 25,
                "province": "New Jersey",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm042",
                "id": 2800347,
                "dateCreated": "2019-11-15T16:50:50.000+01:00",
                "lastUpdated": "2023-08-09T23:32:23.000+02:00",
                "name": "Koppy's Propane",
                "street": "U.S. 209",
                "streetNo": "8635",
                "streetAndNumber": "8635 U.S. 209",
                "addressExtra": null,
                "zip": "17098",
                "city": "Williamstown",
                "cellphone": null,
                "fax": null,
                "website": "http://www.koppyspropane.com",
                "email": null,
                "descriptionShort": "As a propane-only company, we serve better than anyone in the area.",
                "descriptionLong": "\"At Koppy's, propane is all we do. Family owned and operated since 1944 we know exactly how to deliver the propane services you need for your home or business.\"",
                "openingHoursNotes": "Saturday's Closed (May-August)",
                "lastSyncStarted": "2023-05-01T17:35:52.000+02:00",
                "country": "US",
                "lat": 40.5721811,
                "lng": -76.6477197,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 888-573-1285",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618777,
                        "dateCreated": "2021-02-10T12:12:12.000+01:00",
                        "repoKey": "7G61wVDAE5.png",
                        "locationId": 2800347,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800347/7G61wVDAE5.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800347/medium_7G61wVDAE5.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800347/thumb_7G61wVDAE5.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-koppys-propane.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "mindy",
                        "adminOnly": false
                    },
                    {
                        "name": "kristen",
                        "adminOnly": false
                    },
                    {
                        "name": "paola",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.7,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 44,
                "listingsBeingUpdated": 11,
                "visibilityIndex": 751,
                "dataPoints": 249,
                "province": "PA",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "South Berwick, ME",
                "id": 2800348,
                "dateCreated": "2019-11-15T16:50:51.000+01:00",
                "lastUpdated": "2023-08-11T01:50:43.000+02:00",
                "name": "P. Gagnon & Son",
                "street": "Main Street",
                "streetNo": "215",
                "streetAndNumber": "215 Main Street",
                "addressExtra": null,
                "zip": "03908",
                "city": "South Berwick",
                "cellphone": null,
                "fax": null,
                "website": "http://www.pgagnon.com",
                "email": null,
                "descriptionShort": "P. Gagnon & Son is a full-service fuel company that provides heating oil and propane to homeowners",
                "descriptionLong": "P. Gagnon & Son provides reliable heating oil, propane, heating service, and air conditioning service. Serving homeowners in Southern Maine and Seacoast New Hampshire since 1904. As a family-run business, we've built our reputation on providing the best service and value in the area. When it comes to our customers, nothing less than the best will do.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-05-24T17:31:04.000+02:00",
                "country": "US",
                "lat": 43.23373707,
                "lng": -70.80909274,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 888-815-8384",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618778,
                        "dateCreated": "2021-02-10T12:12:14.000+01:00",
                        "repoKey": "vKF7mXWaAH.png",
                        "locationId": 2800348,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800348/vKF7mXWaAH.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800348/medium_vKF7mXWaAH.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800348/thumb_vKF7mXWaAH.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-pgagnon.png",
                        "isPremium": false
                    }
                ],
                "keywords": [
                    "propane",
                    "propane near me",
                    "propane delivery",
                    "heating oil",
                    "heating oil delivery",
                    "heating oil near me"
                ],
                "labels": [
                    {
                        "name": "paola",
                        "adminOnly": false
                    },
                    {
                        "name": "michele",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119,
                    97,
                    88,
                    545
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.6,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:30"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 52,
                "profileCompleteness": 73,
                "missingMandatoryFields": [
                    "EMAIL",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 44,
                "listingsBeingUpdated": 11,
                "visibilityIndex": 768,
                "dataPoints": 331,
                "province": "ME",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Apex",
                "id": 2800353,
                "dateCreated": "2019-11-15T16:50:52.000+01:00",
                "lastUpdated": "2023-08-11T02:31:47.000+02:00",
                "name": "LG Jordan Oil & Gas",
                "street": "North Hughes Street",
                "streetNo": "314",
                "streetAndNumber": "314 North Hughes Street",
                "addressExtra": null,
                "zip": "27502",
                "city": "Apex",
                "cellphone": null,
                "fax": null,
                "website": "https://www.lgjordanoil.com",
                "email": null,
                "descriptionShort": "LG Jordan Oil, is North Carolina's first choice for propane delivery.",
                "descriptionLong": "LG Jordan Oil, North Carolina's first choice for propane delivery in Wake, Chatham, Durham and the surrounding five county area. We have grown to include gasoline, fuel oil and kerosene delivery to homes, businesses and farms.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-06-17T02:36:15.000+02:00",
                "country": "US",
                "lat": 35.73290165,
                "lng": -78.84645775,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 919-267-2448",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 113704308,
                        "dateCreated": "2023-06-16T15:35:09.000+02:00",
                        "repoKey": "bKs6cfLW9z.jpg",
                        "locationId": 2800353,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800353/bKs6cfLW9z.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800353/medium_bKs6cfLW9z.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800353/thumb_bKs6cfLW9z.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": null,
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "Paola",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119,
                    888
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.3,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 48,
                "listingsBeingUpdated": 7,
                "visibilityIndex": 754,
                "dataPoints": 31,
                "province": "NC",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm060",
                "id": 2800354,
                "dateCreated": "2019-11-15T16:50:52.000+01:00",
                "lastUpdated": "2023-08-09T23:32:23.000+02:00",
                "name": "Rand Wade Oil",
                "street": "U.S. 258",
                "streetNo": "3565",
                "streetAndNumber": "3565 U.S. 258",
                "addressExtra": null,
                "zip": "28580",
                "city": "Snow Hill",
                "cellphone": null,
                "fax": null,
                "website": "http://www.randwadeoil.com",
                "email": null,
                "descriptionShort": "Rand Wade Oil is your local family-owned heating oil and propane company, delivering since 1971.",
                "descriptionLong": "Rand Wade Oil is your local family-owned fuel and propane company in Greene County, North Carolina. We have been delivering oil and propane to homes and business throughout the region since our founding in 1971. Our drivers are trained to deliver your fuel promptly and safely; our technicians are certified experts; and all of our employees are committed to your total satisfaction.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T10:20:30.000+01:00",
                "country": "US",
                "lat": 35.39095829,
                "lng": -77.66576818,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 252-653-4402",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618787,
                        "dateCreated": "2021-02-10T12:12:26.000+01:00",
                        "repoKey": "39TLXVEPXB.png",
                        "locationId": 2800354,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800354/39TLXVEPXB.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800354/medium_39TLXVEPXB.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800354/thumb_39TLXVEPXB.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-rand-wade.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "raquel",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 3.7,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 48,
                "listingsBeingUpdated": 7,
                "visibilityIndex": 743,
                "dataPoints": 16,
                "province": "NC",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm065",
                "id": 2800356,
                "dateCreated": "2019-11-15T16:50:54.000+01:00",
                "lastUpdated": "2023-08-03T14:38:18.000+02:00",
                "name": "Scott Williams",
                "street": "Copeland Street",
                "streetNo": "92",
                "streetAndNumber": "92 Copeland Street",
                "addressExtra": null,
                "zip": "02169",
                "city": "Quincy",
                "cellphone": null,
                "fax": null,
                "website": "http://www.scottwilliamsoil.com",
                "email": null,
                "descriptionShort": "Reliable heating oil deliveries, for Boston's South Shore. Our mission is to get your heat or air conditioning up and running again as quickly.",
                "descriptionLong": "Reliable heating oil deliveries, for Boston's South Shore. Our mission is to get your heat or air conditioning up and running again as quickly.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T17:35:31.000+01:00",
                "country": "US",
                "lat": 42.24259566,
                "lng": -71.01950102,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 617-861-9689",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618790,
                        "dateCreated": "2021-02-10T12:12:30.000+01:00",
                        "repoKey": "SYlEiEvXqw.png",
                        "locationId": 2800356,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800356/SYlEiEvXqw.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800356/medium_SYlEiEvXqw.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800356/thumb_SYlEiEvXqw.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-scott-williams.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "sharla",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "raquel",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    545
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 2.8,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:00",
                        "to1": "16:30"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 49,
                "listingsBeingUpdated": 6,
                "visibilityIndex": 741,
                "dataPoints": 29,
                "province": "MA",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm059",
                "id": 2800357,
                "dateCreated": "2019-11-15T16:50:54.000+01:00",
                "lastUpdated": "2023-08-11T02:31:48.000+02:00",
                "name": "Q-Dog Quality Discount Oil & Gas",
                "street": "Jibsail Drive",
                "streetNo": "95",
                "streetAndNumber": "95 Jibsail Drive",
                "addressExtra": null,
                "zip": "20678",
                "city": "Prince Frederick",
                "cellphone": null,
                "fax": null,
                "website": "http://www.qdogfuels.com",
                "email": null,
                "descriptionShort": "Q-Dog is your local, dependable heating oil and propane delivery company.",
                "descriptionLong": "Q-Dog is your local, dependable heating oil and propane delivery company. With our own on-site storage facility, we can handle even the largest fuel deliveries. Our service area includes Calvert, Charles, St. Mary's, Anne Arundel, and Prince George's counties in Maryland. Our drivers are trained to deliver your fuel safely and professionally, and we take pride in our record of on-time fuel deliveries.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T10:25:31.000+01:00",
                "country": "US",
                "lat": 38.5116239,
                "lng": -76.6365331,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 888-212-1832",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618791,
                        "dateCreated": "2021-02-10T12:12:32.000+01:00",
                        "repoKey": "68334RZNf1.png",
                        "locationId": 2800357,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800357/68334RZNf1.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800357/medium_68334RZNf1.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800357/thumb_68334RZNf1.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-q-dog.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "mindy",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119,
                    1818
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.9,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:30",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:30",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:30",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:30",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:30",
                        "to1": "16:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 46,
                "listingsBeingUpdated": 9,
                "visibilityIndex": 744,
                "dataPoints": 70,
                "province": "MD",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Patchogue",
                "id": 2800358,
                "dateCreated": "2019-11-15T16:50:54.000+01:00",
                "lastUpdated": "2023-08-11T02:31:48.000+02:00",
                "name": "Swezey Fuel",
                "street": "Rider Avenue",
                "streetNo": "51",
                "streetAndNumber": "51 Rider Avenue",
                "addressExtra": null,
                "zip": "11772",
                "city": "Patchogue",
                "cellphone": null,
                "fax": null,
                "website": "https://www.swezeyfuel.com",
                "email": null,
                "descriptionShort": "Our goal is to be the best local heating oil and heating & cooling service provider on Long Island.",
                "descriptionLong": "For more than four generations, Swezey Fuel has had one goal: to be the best local heating oil and heating and cooling service provider for our neighbors in Long Island.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-05-17T19:15:37.000+02:00",
                "country": "US",
                "lat": 40.76328901,
                "lng": -73.00826724,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 631-475-0270",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618792,
                        "dateCreated": "2021-02-10T12:12:34.000+01:00",
                        "repoKey": "968UjQpzSx.png",
                        "locationId": 2800358,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800358/968UjQpzSx.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800358/medium_968UjQpzSx.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800358/thumb_968UjQpzSx.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-swezey.png",
                        "isPremium": false
                    }
                ],
                "keywords": [
                    "heating oil",
                    "heating oil delivery",
                    "heating oil near me",
                    "hvac"
                ],
                "labels": [
                    {
                        "name": "sharla",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "raquel",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    545,
                    793
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.9,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:30",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 73,
                "missingMandatoryFields": [
                    "EMAIL",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 45,
                "listingsBeingUpdated": 10,
                "visibilityIndex": 764,
                "dataPoints": 1026,
                "province": "NY",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm046",
                "id": 2800359,
                "dateCreated": "2019-11-15T16:50:55.000+01:00",
                "lastUpdated": "2023-08-07T00:53:54.000+02:00",
                "name": "Needham Oil Complete Heating and Cooling",
                "street": "Chestnut Street",
                "streetNo": "355",
                "streetAndNumber": "355 Chestnut Street",
                "addressExtra": "Rear",
                "zip": "02492",
                "city": "Needham",
                "cellphone": null,
                "fax": null,
                "website": "http://www.needhamoil.com",
                "email": null,
                "descriptionShort": "We deliver Bioheat, the ultra-clean burning form of heating oil. We install and service the highest efficiency natural gas, electric and oil systems.",
                "descriptionLong": "For generations, Needham Oil Complete Heating and Cooling has taken care of families and businesses in Middlesex and Norfolk counties. Besides providing Completely Reliable Bioheat oil deliveries, our team can handle virtually any heating or cooling system need- whether your unit runs on electricity, natural gas, oil or propane. Plus, we make sure you are Completely Happy, with a 100% Satisfaction Guarantee.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2021-12-23T14:22:31.000+01:00",
                "country": "US",
                "lat": 42.2741192,
                "lng": -71.2383955,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 781-400-7334",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618793,
                        "dateCreated": "2021-02-10T12:12:36.000+01:00",
                        "repoKey": "VrLSgK0vbA.png",
                        "locationId": 2800359,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800359/VrLSgK0vbA.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800359/medium_VrLSgK0vbA.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800359/thumb_VrLSgK0vbA.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-needham-oil.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "sharla",
                        "adminOnly": false
                    },
                    {
                        "name": "paola",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    88,
                    97,
                    545
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.8,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:00"
                    }
                ],
                "specialOpeningHours": [
                    {
                        "date": "2021-12-23",
                        "from1": "08:00",
                        "to1": "12:00"
                    },
                    {
                        "date": "2021-12-24",
                        "closed": true
                    },
                    {
                        "date": "2021-12-31",
                        "closed": true
                    }
                ],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 52,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 45,
                "listingsBeingUpdated": 10,
                "visibilityIndex": 771,
                "dataPoints": 218,
                "province": "MA",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Smithfield",
                "id": 2800360,
                "dateCreated": "2019-11-15T16:50:55.000+01:00",
                "lastUpdated": "2023-08-03T14:38:19.000+02:00",
                "name": "Vaughn Oil",
                "street": "Putnam Pike",
                "streetNo": "264",
                "streetAndNumber": "264 Putnam Pike",
                "addressExtra": null,
                "zip": "02917",
                "city": "Smithfield",
                "cellphone": null,
                "fax": null,
                "website": "http://www.vaughnoil.com",
                "email": null,
                "descriptionShort": "Vaughn Oil offers heating system installation, fuel delivery, and more in Rhode Island!",
                "descriptionLong": "Located in Central Rhode Island, Vaughn Oil has been serving residential and commercial customers in the state for almost half a century. We offer service, quality and value you can always rely on!",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-04-11T10:10:53.000+02:00",
                "country": "US",
                "lat": 41.86811889,
                "lng": -71.50718164,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 401-400-4080",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618795,
                        "dateCreated": "2021-02-10T12:12:38.000+01:00",
                        "repoKey": "P3q3VeIrII.png",
                        "locationId": 2800360,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800360/P3q3VeIrII.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800360/medium_P3q3VeIrII.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800360/thumb_P3q3VeIrII.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-vaughn-oil.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "kristen",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "sharla",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    545
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.8,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:30",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [
                    {
                        "date": "2022-07-01",
                        "closed": true
                    },
                    {
                        "date": "2022-07-04",
                        "closed": true
                    }
                ],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 49,
                "listingsBeingUpdated": 6,
                "visibilityIndex": 738,
                "dataPoints": 247,
                "province": "RI",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm072",
                "id": 2800362,
                "dateCreated": "2019-11-15T16:50:55.000+01:00",
                "lastUpdated": "2023-08-09T23:32:24.000+02:00",
                "name": "Westmore Fuel",
                "street": "North Water Street",
                "streetNo": "86",
                "streetAndNumber": "86 North Water Street",
                "addressExtra": null,
                "zip": "06830",
                "city": "Greenwich",
                "cellphone": null,
                "fax": null,
                "website": "https://www.westmorefuel.com/",
                "email": null,
                "descriptionShort": "Westmore delivers unbeatable oil heat service for our customers in NY and CT--day or night.",
                "descriptionLong": "For 80 years, Westmore Fuel has adapted its business to meet the changing needs of customers. Today we are leading heating oil into the next generation, delivering greater efficiencies and lower costs through smarter technology and cleaner fuels for our customers. Offering full on-line customer access, remote wireless dispatch for fuel delivery and service, a fleet of vehicles equipped with GPS and 24-hour emergency heating service.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2021-09-29T17:45:28.000+02:00",
                "country": "US",
                "lat": 41.0064797,
                "lng": -73.6564836,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 888-696-4031",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618797,
                        "dateCreated": "2021-02-10T12:12:42.000+01:00",
                        "repoKey": "DyLtGuaOBS.png",
                        "locationId": 2800362,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800362/DyLtGuaOBS.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800362/medium_DyLtGuaOBS.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800362/thumb_DyLtGuaOBS.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-westmore.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "michele",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    545
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.7,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 6,
                        "from1": "08:00",
                        "to1": "12:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 52,
                "listingsBeingUpdated": 3,
                "visibilityIndex": 745,
                "dataPoints": 65,
                "province": "CT",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm066",
                "id": 2800363,
                "dateCreated": "2019-11-15T16:50:56.000+01:00",
                "lastUpdated": "2023-08-09T23:32:26.000+02:00",
                "name": "Southville Petroleum",
                "street": "Elwood Road",
                "streetNo": "444",
                "streetAndNumber": "444 Elwood Road",
                "addressExtra": null,
                "zip": "11731",
                "city": "East Northport",
                "cellphone": null,
                "fax": null,
                "website": "http://www.southvillepetroleum.com",
                "email": null,
                "descriptionShort": "Dependable, affordable heating oil and diesel fuel",
                "descriptionLong": "Dependable, affordable heating oil and diesel fuel",
                "openingHoursNotes": null,
                "lastSyncStarted": "2021-09-29T17:45:28.000+02:00",
                "country": "US",
                "lat": 40.859253,
                "lng": -73.335976,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 631-651-6316",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618798,
                        "dateCreated": "2021-02-10T12:12:44.000+01:00",
                        "repoKey": "PAGNlgZDjV.png",
                        "locationId": 2800363,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800363/PAGNlgZDjV.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800363/medium_PAGNlgZDjV.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800363/thumb_PAGNlgZDjV.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-southville-petroleum.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "paola",
                        "adminOnly": false
                    },
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    1818
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 5.0,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 6,
                        "from1": "07:00",
                        "to1": "15:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 51,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 42,
                "listingsBeingUpdated": 13,
                "visibilityIndex": 647,
                "dataPoints": 5,
                "province": "New York",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Wallingford, PA",
                "id": 2800364,
                "dateCreated": "2019-11-15T16:50:56.000+01:00",
                "lastUpdated": "2023-08-11T02:31:48.000+02:00",
                "name": "Wilson Oil and Propane",
                "street": "Rogers Lane",
                "streetNo": "221",
                "streetAndNumber": "221 Rogers Lane",
                "addressExtra": null,
                "zip": "19086",
                "city": "Nether Providence Township",
                "cellphone": null,
                "fax": null,
                "website": "https://www.wilsonoilandpropane.com",
                "email": null,
                "descriptionShort": "Wilson Oil & Propane is a full-service, family-owned home comfort company.",
                "descriptionLong": "When you need dependable heating oil delivery or propane delivery or expert HVAC service and HVAC repair, there's only one company to call in Southeastern Pennsylvania: Wilson Oil and Propane. We are a full-service family-owned company that helps customers across Delaware County, Montgomery County,  Chester County, Salem County, Gloucester County, and New Castle County.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-08T23:40:00.000+01:00",
                "country": "US",
                "lat": 39.9039425,
                "lng": -75.3661309,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 866-671-9095",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618800,
                        "dateCreated": "2021-02-10T12:12:46.000+01:00",
                        "repoKey": "xkMn9fB2lu.png",
                        "locationId": 2800364,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800364/xkMn9fB2lu.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800364/medium_xkMn9fB2lu.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800364/thumb_xkMn9fB2lu.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-wilson.png",
                        "isPremium": false
                    }
                ],
                "keywords": [
                    "propane delivery",
                    "heating oil delivery",
                    "heating oil near me",
                    "propane near me",
                    "hvac",
                    "hvac installation",
                    "water heater installation",
                    "heating repair",
                    "air conditioning"
                ],
                "labels": [
                    {
                        "name": "sharla",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "Paola",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119,
                    545,
                    97,
                    88
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.8,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 73,
                "missingMandatoryFields": [
                    "EMAIL",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 46,
                "listingsBeingUpdated": 9,
                "visibilityIndex": 763,
                "dataPoints": 434,
                "province": "PA",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm069",
                "id": 2800365,
                "dateCreated": "2019-11-15T16:50:57.000+01:00",
                "lastUpdated": "2023-08-11T01:27:28.000+02:00",
                "name": "TF Complete Heating & Cooling",
                "street": "Chestnut Street",
                "streetNo": "1000",
                "streetAndNumber": "1000 Chestnut Street",
                "addressExtra": null,
                "zip": "02038",
                "city": "Franklin",
                "cellphone": null,
                "fax": null,
                "website": "https://www.tfcompletehvac.com/",
                "email": null,
                "descriptionShort": "At Tom Fricker Complete Heating & Cooling, we promise to provide top quality services for all your HVAC needs.",
                "descriptionLong": "At Tom Fricker Complete Heating & Cooling, we promise to provide top quality services for all your HVAC needs. Serving Bristol, Worcester, Middlesex and Norfolk counties.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-08T22:06:30.000+01:00",
                "country": "US",
                "lat": 42.10410224,
                "lng": -71.36907426,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 508-507-6702",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618802,
                        "dateCreated": "2021-02-10T12:12:48.000+01:00",
                        "repoKey": "HnYKnS4ssC.png",
                        "locationId": 2800365,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800365/HnYKnS4ssC.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800365/medium_HnYKnS4ssC.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800365/thumb_HnYKnS4ssC.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-tom-fricker.png",
                        "isPremium": false
                    }
                ],
                "keywords": [
                    "hvac",
                    "heating equipment",
                    "cooling equipment",
                    "air conditioning"
                ],
                "labels": [
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "paola",
                        "adminOnly": false
                    },
                    {
                        "name": "sharla",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    545
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.9,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:30",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:30",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:30",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:30",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:30",
                        "to1": "16:00"
                    }
                ],
                "specialOpeningHours": [
                    {
                        "date": "2021-12-23",
                        "from1": "07:30",
                        "to1": "12:00"
                    },
                    {
                        "date": "2021-12-24",
                        "closed": true
                    },
                    {
                        "date": "2021-12-31",
                        "closed": true
                    }
                ],
                "attributes": [
                    {
                        "externalId": "has_service_repair",
                        "displayName": "Repair services",
                        "valueType": "BOOL",
                        "valueMetadata": [
                            {
                                "value": "true",
                                "displayName": "Repair services"
                            }
                        ],
                        "groupDisplayName": "Offerings",
                        "value": "true"
                    }
                ],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 85,
                "missingMandatoryFields": [
                    "EMAIL",
                    "SERVICES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 48,
                "listingsBeingUpdated": 7,
                "visibilityIndex": 764,
                "dataPoints": 285,
                "province": "MA",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm073",
                "id": 2800366,
                "dateCreated": "2019-11-15T16:50:57.000+01:00",
                "lastUpdated": "2023-08-09T23:32:28.000+02:00",
                "name": "Williamson Gas",
                "street": "West Elizabeth Street",
                "streetNo": "820",
                "streetAndNumber": "820 West Elizabeth Street",
                "addressExtra": null,
                "zip": "28328",
                "city": "Clinton",
                "cellphone": null,
                "fax": null,
                "website": "http://www.williamsongas.com",
                "email": null,
                "descriptionShort": "For almost a century, Williamson Gas has been serving Sampson, Bladen and Duplin counties with reliable, superior heating oil service at a fair price.",
                "descriptionLong": "For almost a century, Williamson Gas has been serving Sampson, Bladen and Duplin counties with reliable, superior heating oil service at a fair price.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2022-01-27T20:00:26.000+01:00",
                "country": "US",
                "lat": 34.983268,
                "lng": -78.331019,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 910-490-0282",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618803,
                        "dateCreated": "2021-02-10T12:12:50.000+01:00",
                        "repoKey": "2Kt37MJbdh.png",
                        "locationId": 2800366,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800366/2Kt37MJbdh.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800366/medium_2Kt37MJbdh.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800366/thumb_2Kt37MJbdh.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-williamson-gas.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "bronze",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    1985,
                    317,
                    97
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.5,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 6,
                        "from1": "08:00",
                        "to1": "12:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 49,
                "listingsBeingUpdated": 6,
                "visibilityIndex": 756,
                "dataPoints": 5,
                "province": "North Carolina",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Houston, TX",
                "id": 2800372,
                "dateCreated": "2019-12-20T23:37:09.000+01:00",
                "lastUpdated": "2023-08-09T23:32:24.000+02:00",
                "name": "Cetane Associates",
                "street": "West Gray Street",
                "streetNo": "1958",
                "streetAndNumber": "1958 West Gray Street",
                "addressExtra": "Unit 1200",
                "zip": "77019",
                "city": "Houston",
                "cellphone": null,
                "fax": null,
                "website": "https://www.cetane.net/",
                "email": null,
                "descriptionShort": "Cetane Associates helps you measure needs so you can manage your cash flow and provides assistance with proven techniques.",
                "descriptionLong": "Cetane Associates helps you measure needs so you can manage your cash flow and provides assistance with proven techniques.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-05-12T22:12:34.000+02:00",
                "country": "US",
                "lat": 29.75343844,
                "lng": -95.40713478,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 860-592-0089",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618809,
                        "dateCreated": "2021-02-10T12:13:00.000+01:00",
                        "repoKey": "RsU1rSVpWl.jpg",
                        "locationId": 2800372,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800372/RsU1rSVpWl.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800372/medium_RsU1rSVpWl.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800372/thumb_RsU1rSVpWl.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/locations/5dfd4d15b299b419564d6d15/Di7xjnDl-logocetane.jpg",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "Paola",
                        "adminOnly": false
                    },
                    {
                        "name": "WTC",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    1416
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 0.0,
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
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 48,
                "listingsBeingUpdated": 7,
                "visibilityIndex": 763,
                "dataPoints": 0,
                "province": "TX",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/Chicago"
            },
            {
                "identifier": "Newburgh, NY",
                "id": 2800373,
                "dateCreated": "2019-12-20T23:37:10.000+01:00",
                "lastUpdated": "2023-08-03T14:38:19.000+02:00",
                "name": "Depew Energy",
                "street": "Route 9W",
                "streetNo": "5182",
                "streetAndNumber": "5182 Route 9W",
                "addressExtra": null,
                "zip": "12550",
                "city": "Newburgh",
                "cellphone": null,
                "fax": null,
                "website": "https://www.depewoil.com/",
                "email": null,
                "descriptionShort": "Depew Energy provides heating oil, propane, and diesel fuels with services for heating systems.",
                "descriptionLong": "Depew is a family-run business providing the community of Newburgh, NY and surrounding areas with all of the oil, diesel, and propane home comfort services you need. We value good quality, hard work, and fantastic service, and that's exactly what you get when you contact Depew. Not only do we sell, install, maintain, and repair oil, propane, and gas boilers and furnaces, but we also deliver heating oil, diesel, and propane.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-05-02T19:00:51.000+02:00",
                "country": "US",
                "lat": 41.5402568,
                "lng": -74.012454,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 845-568-0072",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618810,
                        "dateCreated": "2021-02-10T12:13:02.000+01:00",
                        "repoKey": "dPlvO9j8qW.jpg",
                        "locationId": 2800373,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800373/dPlvO9j8qW.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800373/medium_dPlvO9j8qW.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800373/thumb_dPlvO9j8qW.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/locations/5dfd4d1600a4703904403597/KrSWzeGg-DepewEnergy.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "paola",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119,
                    97,
                    88
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.5,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 6,
                        "from1": "09:00",
                        "to1": "13:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 49,
                "listingsBeingUpdated": 6,
                "visibilityIndex": 760,
                "dataPoints": 568,
                "province": "NY",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm090",
                "id": 2800375,
                "dateCreated": "2019-12-20T23:37:12.000+01:00",
                "lastUpdated": "2023-08-09T23:32:26.000+02:00",
                "name": "Economy Oil",
                "street": "Westage Business Center Drive",
                "streetNo": "300",
                "streetAndNumber": "300 Westage Business Center Drive",
                "addressExtra": "Suite 100",
                "zip": "12524",
                "city": "Fishkill",
                "cellphone": null,
                "fax": null,
                "website": "https://www.economy-oil.com/",
                "email": null,
                "descriptionShort": "Economy Oil provides reliable heating oil deliveries to the Hudson Valley region.",
                "descriptionLong": "Economy Oil provides the power to save for all oil customers who are smart enough to shop for the best discounts on heating oil.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T10:30:33.000+01:00",
                "country": "US",
                "lat": 41.5251603,
                "lng": -73.8951051,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 845-206-4322",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618813,
                        "dateCreated": "2021-02-10T12:13:06.000+01:00",
                        "repoKey": "kX98DL1vrf.jpg",
                        "locationId": 2800375,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800375/kX98DL1vrf.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800375/medium_kX98DL1vrf.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800375/thumb_kX98DL1vrf.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/locations/5dfd4d18c4e195001d869af4/l3vsymKp-EconomyOil.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "sharla",
                        "adminOnly": false
                    },
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.9,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:30",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 46,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 42,
                "listingsBeingUpdated": 13,
                "visibilityIndex": 605,
                "dataPoints": 323,
                "province": "NY",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Mountain Lakes, NJ",
                "id": 2800376,
                "dateCreated": "2019-12-20T23:37:13.000+01:00",
                "lastUpdated": "2023-08-11T02:31:48.000+02:00",
                "name": "Dixon Energy",
                "street": "Pocono Road",
                "streetNo": "100",
                "streetAndNumber": "100 Pocono Road",
                "addressExtra": null,
                "zip": "07046",
                "city": "Mountain Lakes",
                "cellphone": null,
                "fax": null,
                "website": "https://www.dixonbros.com/",
                "email": null,
                "descriptionShort": "Dixon Brothers Oil delivers home heating oil, provides excellent service for your heating and air conditioning, and installs heating and AC equipment.",
                "descriptionLong": "Dixon Brothers Oil delivers home heating oil, provides excellent service for your heating and air conditioning, and installs heating and AC equipment.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T17:35:31.000+01:00",
                "country": "US",
                "lat": 40.8799445,
                "lng": -74.4488761,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 973-265-2914",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618814,
                        "dateCreated": "2021-02-10T12:13:08.000+01:00",
                        "repoKey": "Fac1gClUWC.jpg",
                        "locationId": 2800376,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800376/Fac1gClUWC.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800376/medium_Fac1gClUWC.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800376/thumb_Fac1gClUWC.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/locations/5dfd4d1923f3096362d65acb/zSFPNYCs-logodixonenergy.jpg",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "mindy",
                        "adminOnly": false
                    },
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    2362,
                    545
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.0,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:30",
                        "to1": "16:30"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 47,
                "listingsBeingUpdated": 8,
                "visibilityIndex": 753,
                "dataPoints": 86,
                "province": "NJ",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm091",
                "id": 2800377,
                "dateCreated": "2019-12-20T23:37:14.000+01:00",
                "lastUpdated": "2023-08-09T23:32:25.000+02:00",
                "name": "Fall River Propane",
                "street": "North 3400 East",
                "streetNo": "1150",
                "streetAndNumber": "1150 North 3400 East",
                "addressExtra": null,
                "zip": "83420",
                "city": "Ashton",
                "cellphone": null,
                "fax": null,
                "website": "http://fallriverpropane.com/",
                "email": null,
                "descriptionShort": "We provide our communities safe and reliable propane at a competitive price.",
                "descriptionLong": "Since 1999, Fall River Propane has been delivering dependable, affordable home comfort to our customers in Idaho, Montana and Wyoming. Our team is the best in the business and is well known for their fast response and safety-first attitude. Coupled with great prices and top-rated customer service, you just won't find another propane provider more dedicated to serving your needs.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-17T16:20:53.000+01:00",
                "country": "US",
                "lat": 44.0507,
                "lng": -111.47774,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 800-632-5726",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618815,
                        "dateCreated": "2021-02-10T12:13:10.000+01:00",
                        "repoKey": "71p9roLZkt.jpg",
                        "locationId": 2800377,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800377/71p9roLZkt.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800377/medium_71p9roLZkt.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800377/thumb_71p9roLZkt.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/locations/5dfd4d1a10cf698960971a30/mjvV0N3W-FallRiverPropane.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "paola",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.9,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "00:00",
                        "to1": "24:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "00:00",
                        "to1": "24:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "00:00",
                        "to1": "24:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "00:00",
                        "to1": "24:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "00:00",
                        "to1": "24:00"
                    },
                    {
                        "dayOfWeek": 6,
                        "from1": "00:00",
                        "to1": "24:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 46,
                "listingsBeingUpdated": 6,
                "visibilityIndex": 700,
                "dataPoints": 70,
                "province": "ID",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/Boise"
            },
            {
                "identifier": "Warm095",
                "id": 2800378,
                "dateCreated": "2019-12-20T23:37:15.000+01:00",
                "lastUpdated": "2023-08-11T02:31:49.000+02:00",
                "name": "James Oxygen & Supply",
                "street": "Grove Street",
                "streetNo": "106",
                "streetAndNumber": "106 Grove Street",
                "addressExtra": null,
                "zip": "28607",
                "city": "Boone",
                "cellphone": null,
                "fax": null,
                "website": "http://www.jameso2.com/",
                "email": null,
                "descriptionShort": "Whether you need propane for your home appliances or gases for your business or medical facility, James Oxygen can provide safe and dependable delivery.",
                "descriptionLong": "From our founding in the Hickory metro area, in 1956, James Oxygen & Supply has built a reputation as being a provider of quality fuel, gases and related products.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-04-11T10:20:45.000+02:00",
                "country": "US",
                "lat": 36.21987,
                "lng": -81.65757,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 828-264-5098",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618816,
                        "dateCreated": "2021-02-10T12:13:12.000+01:00",
                        "repoKey": "DyCy9s9TiG.jpg",
                        "locationId": 2800378,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800378/DyCy9s9TiG.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800378/medium_DyCy9s9TiG.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800378/thumb_DyCy9s9TiG.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/clients/5cefebcfd0c1ea952565f47d/933fcrBH-JamesO2.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "kristen",
                        "adminOnly": false
                    },
                    {
                        "name": "raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "mindy",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    3207
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.5,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 46,
                "listingsBeingUpdated": 9,
                "visibilityIndex": 751,
                "dataPoints": 6,
                "province": "NC",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm105",
                "id": 2800381,
                "dateCreated": "2019-12-20T23:37:20.000+01:00",
                "lastUpdated": "2023-08-09T23:32:24.000+02:00",
                "name": "Superior Propane",
                "street": "East Frank Way",
                "streetNo": "600",
                "streetAndNumber": "600 East Frank Way",
                "addressExtra": null,
                "zip": "86046",
                "city": "Williams",
                "cellphone": "+1 928-759-3740",
                "fax": null,
                "website": "http://www.superiorpropaneinc.com/",
                "email": null,
                "descriptionShort": "Superior Propane, Inc. is your hometown propane supplier and distributor for Northern Arizona.",
                "descriptionLong": "Superior Propane has a simple business plan: Provide the best propane delivery and service to homes and businesses in Northern Arizona. We've had five generations to perfect this approach to doing business, going back to our family's roots in the propane business in Northern California.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2021-09-29T17:45:26.000+02:00",
                "country": "US",
                "lat": 35.2620199,
                "lng": -112.1839592,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 928-635-1314",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618820,
                        "dateCreated": "2021-02-10T12:13:18.000+01:00",
                        "repoKey": "DPufzghYxy.jpg",
                        "locationId": 2800381,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800381/DPufzghYxy.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800381/medium_DPufzghYxy.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800381/thumb_DPufzghYxy.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/locations/5dfd4d20b299b419564d6d8f/uOQFDDXC-SuperiorPropane.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "kristen",
                        "adminOnly": false
                    },
                    {
                        "name": "dan",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.4,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 51,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 42,
                "listingsBeingUpdated": 12,
                "visibilityIndex": 756,
                "dataPoints": 43,
                "province": "Arizona",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/Phoenix"
            },
            {
                "identifier": "Warm108",
                "id": 2800382,
                "dateCreated": "2019-12-20T23:37:21.000+01:00",
                "lastUpdated": "2023-08-11T02:31:49.000+02:00",
                "name": "Valley Oil",
                "street": "South Road",
                "streetNo": "2645",
                "streetAndNumber": "2645 South Road",
                "addressExtra": "Suite 9",
                "zip": "12601",
                "city": "Poughkeepsie",
                "cellphone": null,
                "fax": null,
                "website": "https://www.valleyoilpok.com/",
                "email": null,
                "descriptionShort": "Since 1996, Valley Oil has reliably delivered discount heating oil to homes and businesses.",
                "descriptionLong": "For 20 years now, Valley Oil has been delivering discount heating oil to homes and businesses in Dutchess and Ulster counties. Our low prices, fast delivery, quality oil and certified tamper-proof delivery tickets are bound to bring a smile to your face.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T10:20:30.000+01:00",
                "country": "US",
                "lat": 41.67076374,
                "lng": -73.9321238,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 845-206-0545",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618821,
                        "dateCreated": "2021-02-10T12:13:20.000+01:00",
                        "repoKey": "tVuG31Xm3t.jpg",
                        "locationId": 2800382,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800382/tVuG31Xm3t.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800382/medium_tVuG31Xm3t.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800382/thumb_tVuG31Xm3t.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/locations/5dfd4d21189909e8191bb393/QmWC4hQ7-ValleyOil.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "sharla",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.7,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 49,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 41,
                "listingsBeingUpdated": 14,
                "visibilityIndex": 627,
                "dataPoints": 197,
                "province": "NY",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm093",
                "id": 2800384,
                "dateCreated": "2019-12-20T23:37:36.000+01:00",
                "lastUpdated": "2023-08-06T23:58:07.000+02:00",
                "name": "James Oxygen & Supply",
                "street": "North Carolina 226 S",
                "streetNo": "2849",
                "streetAndNumber": "2849 North Carolina 226 S",
                "addressExtra": null,
                "zip": "28752",
                "city": "Marion",
                "cellphone": null,
                "fax": null,
                "website": "http://www.jameso2.com/",
                "email": null,
                "descriptionShort": "Whether you need propane for your home appliances or gases for your business or medical facility, James Oxygen can provide safe and dependable delivery.",
                "descriptionLong": "From our founding in the Hickory metro area, in 1956, James Oxygen & Supply has built a reputation as being a provider of quality fuel, gases and related products.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-04-11T10:15:48.000+02:00",
                "country": "US",
                "lat": 35.6616657,
                "lng": -81.9711239,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 828-559-0807",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618824,
                        "dateCreated": "2021-02-10T12:13:24.000+01:00",
                        "repoKey": "nCJPZRjHEP.jpg",
                        "locationId": 2800384,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800384/nCJPZRjHEP.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800384/medium_nCJPZRjHEP.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800384/thumb_nCJPZRjHEP.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/clients/5cefebcfd0c1ea952565f47d/933fcrBH-JamesO2.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "kristen",
                        "adminOnly": false
                    },
                    {
                        "name": "raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "mindy",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    3207
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.9,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 47,
                "listingsBeingUpdated": 8,
                "visibilityIndex": 737,
                "dataPoints": 12,
                "province": "NC",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm094",
                "id": 2800385,
                "dateCreated": "2019-12-20T23:37:36.000+01:00",
                "lastUpdated": "2023-08-08T21:34:41.000+02:00",
                "name": "James Oxygen & Supply",
                "street": "2nd Street",
                "streetNo": "621",
                "streetAndNumber": "621 2nd Street",
                "addressExtra": null,
                "zip": "28659",
                "city": "North Wilkesboro",
                "cellphone": null,
                "fax": null,
                "website": "http://www.jameso2.com/",
                "email": null,
                "descriptionShort": "Whether you need propane for your home appliances or gases for your business or medical facility, James Oxygen can provide safe and dependable delivery.",
                "descriptionLong": "From our founding in the Hickory metro area, in 1956, James Oxygen & Supply has built a reputation as being a provider of quality fuel, gases and related products.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-04-11T10:15:50.000+02:00",
                "country": "US",
                "lat": 36.1691718,
                "lng": -81.1392995,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 336-667-7605",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618825,
                        "dateCreated": "2021-02-10T12:13:26.000+01:00",
                        "repoKey": "lKrnBZexED.jpg",
                        "locationId": 2800385,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800385/lKrnBZexED.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800385/medium_lKrnBZexED.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800385/thumb_lKrnBZexED.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/clients/5cefebcfd0c1ea952565f47d/933fcrBH-JamesO2.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "kristen",
                        "adminOnly": false
                    },
                    {
                        "name": "mindy",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    3207
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.8,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 50,
                "listingsBeingUpdated": 5,
                "visibilityIndex": 760,
                "dataPoints": 9,
                "province": "NC",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm096",
                "id": 2800386,
                "dateCreated": "2019-12-20T23:37:37.000+01:00",
                "lastUpdated": "2023-08-07T23:17:48.000+02:00",
                "name": "James Oxygen & Supply",
                "street": "Hwy 321",
                "streetNo": "30",
                "streetAndNumber": "30 Hwy 321",
                "addressExtra": null,
                "zip": "28602",
                "city": "Hickory",
                "cellphone": null,
                "fax": null,
                "website": "http://www.jameso2.com/",
                "email": null,
                "descriptionShort": "Whether you need propane for your home appliances or gases for your business or medical facility, James Oxygen can provide safe and dependable delivery.",
                "descriptionLong": "From our founding in the Hickory metro area, in 1956, James Oxygen & Supply has built a reputation as being a provider of quality fuel, gases and related products.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-04-11T10:15:48.000+02:00",
                "country": "US",
                "lat": 35.7317699,
                "lng": -81.3641209,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 828-322-5438",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618826,
                        "dateCreated": "2021-02-10T12:13:28.000+01:00",
                        "repoKey": "BEMcflaclx.jpg",
                        "locationId": 2800386,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800386/BEMcflaclx.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800386/medium_BEMcflaclx.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800386/thumb_BEMcflaclx.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/clients/5cefebcfd0c1ea952565f47d/933fcrBH-JamesO2.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "kristen",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "mindy",
                        "adminOnly": false
                    },
                    {
                        "name": "raquel",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    3207
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 2.4,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:30",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 6,
                        "from1": "09:00",
                        "to1": "13:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 49,
                "listingsBeingUpdated": 6,
                "visibilityIndex": 752,
                "dataPoints": 36,
                "province": "NC",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm097",
                "id": 2800387,
                "dateCreated": "2019-12-20T23:37:37.000+01:00",
                "lastUpdated": "2023-08-11T02:31:49.000+02:00",
                "name": "J.W. Pierson",
                "street": "Dodd Street",
                "streetNo": "89",
                "streetAndNumber": "89 Dodd Street",
                "addressExtra": null,
                "zip": "07017",
                "city": "East Orange",
                "cellphone": null,
                "fax": null,
                "website": "https://jwpierson.com/",
                "email": null,
                "descriptionShort": "J.W. Pierson delivers home heating oil & provides excellent service for your heating and A/C systems",
                "descriptionLong": "J.W. Pierson delivers home heating oil, provides excellent HVAC service for your heating and air conditioning equipment throughout Essex County, Passaic County, and Bergen County.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-17T16:00:36.000+01:00",
                "country": "US",
                "lat": 40.78099406,
                "lng": -74.20601382,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 973-609-1292",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618827,
                        "dateCreated": "2021-02-10T12:13:30.000+01:00",
                        "repoKey": "N3SgPyb5Uz.jpg",
                        "locationId": 2800387,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800387/N3SgPyb5Uz.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800387/medium_N3SgPyb5Uz.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800387/thumb_N3SgPyb5Uz.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/locations/5dfd4d3118cc7a8267d098b4/HAAAr7hP-logojwpierson.jpg",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "mindy",
                        "adminOnly": false
                    },
                    {
                        "name": "Raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    4119,
                    545
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.4,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 48,
                "listingsBeingUpdated": 7,
                "visibilityIndex": 749,
                "dataPoints": 118,
                "province": "NJ",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Plymouth, NH",
                "id": 2800388,
                "dateCreated": "2019-12-20T23:37:38.000+01:00",
                "lastUpdated": "2023-07-31T15:49:14.000+02:00",
                "name": "Pemi River Fuels",
                "street": "Tenney Mountain Highway",
                "streetNo": "612",
                "streetAndNumber": "612 Tenney Mountain Highway",
                "addressExtra": null,
                "zip": "03264",
                "city": "Plymouth",
                "cellphone": null,
                "fax": null,
                "website": "https://www.pemiriverfuels.com/",
                "email": null,
                "descriptionShort": "Pemi River Fuels makes sure you have the best heating equipment and fuel for your home.",
                "descriptionLong": "Wherever you are in Plymouth, New Hampshire, Pemi River Fuels can provide you with the heating oil and propane you need to keep your home warm and comfortable no matter how cold it gets outside. We can make sure you have the best heating equipment for your home, and provide the professional service to keep it in top running order.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-09T00:08:42.000+01:00",
                "country": "US",
                "lat": 43.77161065,
                "lng": -71.73745687,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 603-536-2738",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 111410486,
                        "dateCreated": "2023-02-08T17:02:01.000+01:00",
                        "repoKey": "9IdxHETTW8.jpg",
                        "locationId": 2800388,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800388/9IdxHETTW8.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800388/medium_9IdxHETTW8.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800388/thumb_9IdxHETTW8.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": null,
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "paola",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.7,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 52,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 52,
                "listingsBeingUpdated": 3,
                "visibilityIndex": 740,
                "dataPoints": 91,
                "province": "NH",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Martinsburg, WV",
                "id": 2800389,
                "dateCreated": "2019-12-20T23:37:41.000+01:00",
                "lastUpdated": "2023-08-09T23:32:28.000+02:00",
                "name": "Roach Energy",
                "street": "East Stephen Street",
                "streetNo": "301",
                "streetAndNumber": "301 East Stephen Street",
                "addressExtra": null,
                "zip": "25401",
                "city": "Martinsburg",
                "cellphone": null,
                "fax": null,
                "website": "https://www.roachenergy.com/",
                "email": null,
                "descriptionShort": "Reliable heating oil and propane delivery, full HVAC services, and 24-hour emergency services!",
                "descriptionLong": "With reliable heating oil and propane delivery, full HVAC services, and 24-hour emergency service for both fuel and equipment, Roach Energy takes good care of its neighbors. Serving customers throughout the Eastern Panhandle in Berkeley County and Jefferson County.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-09T00:08:41.000+01:00",
                "country": "US",
                "lat": 39.4535331,
                "lng": -77.962042,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 304-263-3329",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 65754390,
                        "dateCreated": "2021-09-10T20:14:31.000+02:00",
                        "repoKey": "KzYp13vZrF.png",
                        "locationId": 2800389,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800389/KzYp13vZrF.png",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800389/medium_KzYp13vZrF.png",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800389/thumb_KzYp13vZrF.png",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": null,
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "paola",
                        "adminOnly": false
                    },
                    {
                        "name": "mindy",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119,
                    545,
                    97,
                    88
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.1,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "09:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "09:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "09:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "09:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "09:00",
                        "to1": "16:30"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 52,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 45,
                "listingsBeingUpdated": 10,
                "visibilityIndex": 759,
                "dataPoints": 146,
                "province": "WV",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Yanceyville",
                "id": 2800390,
                "dateCreated": "2019-12-20T23:37:43.000+01:00",
                "lastUpdated": "2023-08-09T23:32:26.000+02:00",
                "name": "Thomas Brothers Oil & Propane",
                "street": "Main Street",
                "streetNo": "1629",
                "streetAndNumber": "1629 Main Street",
                "addressExtra": null,
                "zip": "27379",
                "city": "Yanceyville",
                "cellphone": null,
                "fax": null,
                "website": "https://www.thomasbrospropane.com/",
                "email": null,
                "descriptionShort": "Thomas Brothers provides reliable delivery of quality fuel product and responsive services.",
                "descriptionLong": "Thomas Brothers Oil and Propane is a second-generation family owned business. Since 1921, Thomas Brothers has been providing reliable delivery of quality fuel product and responsive service to families and business throughout Caswell County.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-09T09:45:37.000+01:00",
                "country": "US",
                "lat": 36.4169979,
                "lng": -79.3563021,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 336-694-4111",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618830,
                        "dateCreated": "2021-02-10T12:13:36.000+01:00",
                        "repoKey": "C9PKQgixCk.jpg",
                        "locationId": 2800390,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800390/C9PKQgixCk.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800390/medium_C9PKQgixCk.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800390/thumb_C9PKQgixCk.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/locations/5dfd4d37b299b419564d6e31/lvYpGeSv-ThomasBrothers.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "paola",
                        "adminOnly": false
                    },
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 4.8,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 46,
                "listingsBeingUpdated": 9,
                "visibilityIndex": 744,
                "dataPoints": 28,
                "province": "NC",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm098",
                "id": 2800395,
                "dateCreated": "2019-12-20T23:37:49.000+01:00",
                "lastUpdated": "2023-08-11T02:31:50.000+02:00",
                "name": "Midway Bottled Gas",
                "street": "Stultz Road",
                "streetNo": "910",
                "streetAndNumber": "910 Stultz Road",
                "addressExtra": null,
                "zip": "24078",
                "city": "Collinsville",
                "cellphone": null,
                "fax": null,
                "website": "http://midwaygas.com/",
                "email": null,
                "descriptionShort": "For more than 70 years, Midway Gas has been meeting your propane needs in southwestern Virginia, including Patrick, Henry and Pittsylvania counties. And we've been around that long because we",
                "descriptionLong": "For more than 70 years, Midway Gas has been meeting your propane needs in southwestern Virginia, including Patrick, Henry and Pittsylvania counties. And we've been around that long because we understand the needs of local residents and businesses.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2021-09-29T17:45:25.000+02:00",
                "country": "US",
                "lat": 36.7075879,
                "lng": -79.8861854,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 276-632-9808",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618844,
                        "dateCreated": "2021-02-10T12:13:46.000+01:00",
                        "repoKey": "Y8nRmINfRY.jpg",
                        "locationId": 2800395,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800395/Y8nRmINfRY.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800395/medium_Y8nRmINfRY.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800395/thumb_Y8nRmINfRY.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/locations/5dfd4d3d18cc7a8267d09955/1EDowpbv-MidwayGas.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-09-02T00:00:00.000+02:00",
                "averageRating": 3.5,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 54,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 47,
                "listingsBeingUpdated": 8,
                "visibilityIndex": 759,
                "dataPoints": 13,
                "province": "Virginia",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm106",
                "id": 2800396,
                "dateCreated": "2019-12-20T23:37:52.000+01:00",
                "lastUpdated": "2023-08-11T02:31:49.000+02:00",
                "name": "SWVA Gas Service",
                "street": "Harrison Street",
                "streetNo": "111",
                "streetAndNumber": "111 Harrison Street",
                "addressExtra": null,
                "zip": "24141",
                "city": "Radford",
                "cellphone": null,
                "fax": null,
                "website": "https://www.swvagasservice.com/",
                "email": null,
                "descriptionShort": "For more than 50 years, SWVA Gas Service has been providing propane services to homes and businesses.",
                "descriptionLong": "For more than 50 years, SWVA Gas Service has been providing propane services to homes, farms and businesses in Radford and surrounding communities in the New River Valley.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T10:00:34.000+01:00",
                "country": "US",
                "lat": 37.14197622,
                "lng": -80.55933584,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 540-315-8176",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618846,
                        "dateCreated": "2021-02-10T12:13:48.000+01:00",
                        "repoKey": "8xF3YqbgZo.jpg",
                        "locationId": 2800396,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800396/8xF3YqbgZo.jpg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800396/medium_8xF3YqbgZo.jpg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800396/thumb_8xF3YqbgZo.jpg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://swiq3usermedia-prod.s3.amazonaws.com/locations/5dfd4d404f451e08162373c7/Sm8mDoXk-SouthWestVAGasService.png",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "raquel",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-20T00:00:00.000+02:00",
                "averageRating": 3.0,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 48,
                "listingsBeingUpdated": 7,
                "visibilityIndex": 736,
                "dataPoints": 27,
                "province": "VA",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm114",
                "id": 2800399,
                "dateCreated": "2020-01-17T22:09:58.000+01:00",
                "lastUpdated": "2023-08-03T14:38:21.000+02:00",
                "name": "Dorr Oil and Propane",
                "street": "Bonnet Street",
                "streetNo": "595",
                "streetAndNumber": "595 Bonnet Street",
                "addressExtra": null,
                "zip": "05255",
                "city": "Manchester Center",
                "cellphone": null,
                "fax": null,
                "website": "https://www.dorroil.com/",
                "email": null,
                "descriptionShort": "Dorr Oil provides quality fuel delivery and heating system services.",
                "descriptionLong": "Dorr Oil can provide you with the heating oil and propane you need to keep your home warm and comfortable no matter how cold it gets outside.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-09T00:08:41.000+01:00",
                "country": "US",
                "lat": 43.18535631,
                "lng": -73.05827619,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 802-362-1950",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618850,
                        "dateCreated": "2021-02-10T12:13:54.000+01:00",
                        "repoKey": "VjfTfQOz8d.jpeg",
                        "locationId": 2800399,
                        "description": "",
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800399/VjfTfQOz8d.jpeg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800399/medium_VjfTfQOz8d.jpeg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800399/thumb_VjfTfQOz8d.jpeg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "http://warmthoughts.com/clients/logos/logo-dorr-oil.jpg",
                        "isPremium": false
                    }
                ],
                "keywords": [
                    "heating oil",
                    "heating oil delivery",
                    "heating oil near me",
                    "propane",
                    "propane delivery",
                    "propane near me"
                ],
                "labels": [
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "paola",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 4.7,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 73,
                "missingMandatoryFields": [
                    "EMAIL",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 47,
                "listingsBeingUpdated": 8,
                "visibilityIndex": 773,
                "dataPoints": 75,
                "province": "VT",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Woodstock, VT",
                "id": 2800400,
                "dateCreated": "2020-01-17T22:09:58.000+01:00",
                "lastUpdated": "2023-07-30T10:34:25.000+02:00",
                "name": "Junction Fuels",
                "street": "Westerdale Road",
                "streetNo": "22",
                "streetAndNumber": "22 Westerdale Road",
                "addressExtra": null,
                "zip": "05091",
                "city": "Woodstock",
                "cellphone": null,
                "fax": null,
                "website": "https://www.junctionfuels.com/",
                "email": null,
                "descriptionShort": "Junction Fuels provides dependable, safe delivery of heating oil and propane to homes and businesses.",
                "descriptionLong": "Junction Fuels provides dependable, safe delivery of heating oil and propane to homes and businesses in Woodstock and its surrounding communities throughout Eastern Vermont. We are a locally based, locally operated business, and our employees have deep roots here. That makes us deeply invested in the area and is what drives us to treat our customers like the neighbors you are.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-07-11T16:35:55.000+02:00",
                "country": "US",
                "lat": 43.60200413,
                "lng": -72.56559012,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 802-457-7252",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618852,
                        "dateCreated": "2021-02-10T12:13:56.000+01:00",
                        "repoKey": "eG8uEiiIo5.jpeg",
                        "locationId": 2800400,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800400/eG8uEiiIo5.jpeg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800400/medium_eG8uEiiIo5.jpeg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800400/thumb_eG8uEiiIo5.jpeg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "http://warmthoughts.com/clients/logos/logo-junction-fuels.jpg",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "dan",
                        "adminOnly": false
                    },
                    {
                        "name": "paola",
                        "adminOnly": false
                    },
                    {
                        "name": "silver",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    4119
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-17T00:00:00.000+02:00",
                "averageRating": 5.0,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "16:30"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 53,
                "listingsBeingUpdated": 2,
                "visibilityIndex": 758,
                "dataPoints": 71,
                "province": "VT",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Lexington Park, MD",
                "id": 2800401,
                "dateCreated": "2020-01-27T21:41:24.000+01:00",
                "lastUpdated": "2023-08-09T23:32:26.000+02:00",
                "name": "Taylor",
                "street": "Great Mills Road",
                "streetNo": "21434",
                "streetAndNumber": "21434 Great Mills Road",
                "addressExtra": null,
                "zip": "20653",
                "city": "Lexington Park",
                "cellphone": null,
                "fax": null,
                "website": "https://www.taylorgascompany.com/",
                "email": null,
                "descriptionShort": "Taylor is a family-owned, locally-based full service propane delivery company in St. Mary's County and the surrounding communities in Calvert, Charles, and Prince George's County.",
                "descriptionLong": "Taylor is a family-owned, locally-based full service propane delivery company in St. Mary's County and the surrounding communities in Calvert, Charles, and Prince George's County. You can also count on us for propane equipment installation, heating, and air conditioning service.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-05-09T16:30:40.000+02:00",
                "country": "US",
                "lat": 38.25590089,
                "lng": -76.47631497,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 800-928-5089",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618853,
                        "dateCreated": "2021-02-10T12:13:58.000+01:00",
                        "repoKey": "iXSzZ6A0uU.jpeg",
                        "locationId": 2800401,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800401/iXSzZ6A0uU.jpeg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800401/medium_iXSzZ6A0uU.jpeg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800401/thumb_iXSzZ6A0uU.jpeg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://www.warmthoughts.com/clients/logos/logo-taylor-gas-co.jpg",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "paola",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "gold",
                        "adminOnly": false
                    },
                    {
                        "name": "michele",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362,
                    545,
                    97,
                    88
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-27T00:00:00.000+02:00",
                "averageRating": 4.5,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "07:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "07:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "07:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "07:30",
                        "to1": "16:30"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "07:30",
                        "to1": "16:30"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 49,
                "listingsBeingUpdated": 4,
                "visibilityIndex": 724,
                "dataPoints": 97,
                "province": "MD",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/New_York"
            },
            {
                "identifier": "Warm118",
                "id": 2800402,
                "dateCreated": "2020-02-19T17:26:40.000+01:00",
                "lastUpdated": "2023-08-09T23:32:25.000+02:00",
                "name": "Allied Propane Service",
                "street": "Devlin Road",
                "streetNo": "221",
                "streetAndNumber": "221 Devlin Road",
                "addressExtra": null,
                "zip": "94558",
                "city": "Napa",
                "cellphone": null,
                "fax": null,
                "website": "https://www.alliedpropaneservice.com/",
                "email": null,
                "descriptionShort": "We provide a broad range of propane services to customers in the Northern California Bay Area.",
                "descriptionLong": "Founded in 1967, Allied Propane Service has provided a broad range of services to customers in the Northern California Bay Area for over 40 years.",
                "openingHoursNotes": null,
                "lastSyncStarted": "2023-03-18T10:30:33.000+01:00",
                "country": "US",
                "lat": 38.2356915,
                "lng": -122.2645912,
                "imprint": null,
                "addressDisplay": true,
                "autoSync": true,
                "skipFacebookPicturesUpdate": false,
                "phone": "+1 707-252-5500",
                "status": "ACTIVE",
                "cleansingStatus": "CLEANSED",
                "cleansingInvalidDataReason": null,
                "photos": [
                    {
                        "id": 43618854,
                        "dateCreated": "2021-02-10T12:14:00.000+01:00",
                        "repoKey": "XWPm9z9mbO.jpeg",
                        "locationId": 2800402,
                        "description": null,
                        "identifier": null,
                        "main": false,
                        "logo": true,
                        "type": "LOGO",
                        "url": "/uploads/userpics/2800402/XWPm9z9mbO.jpeg",
                        "publicUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800402/medium_XWPm9z9mbO.jpeg",
                        "thumbnailUrl": "https://s3.eu-central-1.amazonaws.com/uberall-userpics-prod/2800402/thumb_XWPm9z9mbO.jpeg",
                        "cropHeight": null,
                        "cropWidth": null,
                        "cropOffsetX": null,
                        "cropOffsetY": null,
                        "sourceUrl": "https://warmthoughts.com/clients/logos/logo-allied-propane.jpg",
                        "isPremium": false
                    }
                ],
                "keywords": [],
                "labels": [
                    {
                        "name": "silver",
                        "adminOnly": false
                    },
                    {
                        "name": "erin",
                        "adminOnly": false
                    },
                    {
                        "name": "michele",
                        "adminOnly": false
                    },
                    {
                        "name": "raquel",
                        "adminOnly": false
                    }
                ],
                "categories": [
                    2362
                ],
                "locationSyncable": false,
                "businessId": 1137523,
                "socialPostId": null,
                "hasFacebook": false,
                "endDate": "2023-08-19T00:00:00.000+02:00",
                "averageRating": 4.3,
                "openingHours": [
                    {
                        "dayOfWeek": 1,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 2,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 3,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 4,
                        "from1": "08:00",
                        "to1": "17:00"
                    },
                    {
                        "dayOfWeek": 5,
                        "from1": "08:00",
                        "to1": "17:00"
                    }
                ],
                "specialOpeningHours": [],
                "attributes": [],
                "activeDirectoriesCount": 57,
                "activeListingsCount": 57,
                "publishedListingsCount": 53,
                "profileCompleteness": 63,
                "missingMandatoryFields": [
                    "EMAIL",
                    "KEYWORDS",
                    "SERVICES",
                    "ATTRIBUTES"
                ],
                "directoriesMissingConnect": [
                    "FACEBOOK"
                ],
                "listingsInSync": 49,
                "listingsBeingUpdated": 6,
                "visibilityIndex": 770,
                "dataPoints": 20,
                "province": "CA",
                "suggestionsForFieldsAvailable": true,
                "timeZone": "America/Los_Angeles"
            }
        ],
        "page_size": 50,
        "page": 1,
        "total_pages": 3
    }
}
```

Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the Report|
|report_date|String|Date report was run|
|global\_master\_advertiser\_id |String| The global master advertiser id (for example, TEST_1)
|report_data|Object|Report details. [Report Data Object](#reportdata)|

<a name="reportdata"></a>
**Report Data Object**

|Field Name|Datatype|Description|
|---|---|---|
|page|Integer|The number of the page that is currently loaded.|
|page_size|Integer|The number of the elements in a page (request).|
|total_pages|Integer|How many pages are there left. |
|locations|Array|Array of locations objects. [Locations Objects](https://uberall.com/en/developers/resources#Location)|

