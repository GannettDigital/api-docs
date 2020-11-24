### Business

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/business/[gmaid]

#### API Name: business
#### Usage
Use GET to retrieve information from the Uberall API. Data will be returned for a GMAID.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

The data returned will include information about the business which corresponds to the gmaid. 

#### Examples

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/client_reports/premium_listings/business/GMAID' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings_business",
    "report_date": "2020-04-03",
    "global_master_advertiser_id": "TEST_1234",
    "report_data": {
        "business": {
                "id": 13245676,
                "identifier": "TEST_1234",
                "name": "Example",
                "type": "SMB",
                "streetAndNo": "21700 Example St.",
                "addressLine2": "Suite 1600",
                "province": null,
                "zip": "91367",
                "city": "Example Hills",
                "phone": null,
                "country": "US",
                "contractDuration": 1,
                "numOfLocations": 2,
                "status": "ACTIVE",
                "businessSyncable": false,
                "dateCreated": "2020-08-03T23:37:59.000+02:00",
                "defaultPrice": 0,
                "defaultOriginalPrice": 0,
                "defaultPriceSetup": 0,
                "nextProductPlanId": null,
                "effectiveDate": null,
                "productPlan": {
                    "billingPeriod": 1,
                    "countryPrice": [
                        {
                            "country": "US",
                            "price": 950,
                            "priceSetup": 0,
                            "marketDevelopmentFunds": 0
                        }
                    ],
                    "currency": "USD",
                    "dateCreated": "2020-10-29T04:18:38.000+01:00",
                    "defaultMarketDevelopmentFunds": 0,
                    "defaultOriginalPrice": 0,
                    "defaultPlan": true,
                    "defaultPrice": 0,
                    "defaultPriceSetup": 0,
                    "description": "US Premium Listings (1-9 Locations) w/ Yelp",
                    "duration": 1,
                    "features": [
                        "SUPPORT",
                        "TRACKING",
                        "CLEANSING",
                        "UPGRADE",
                        "AUTOMATION",
                        "INBOX",
                        "SUPPRESSION"
                    ],
                    "identifier": null,
                    "initialBillingPeriod": 1,
                    "initialDuration": 1,
                    "lastUpdated": "2020-11-17T04:46:39.000+01:00",
                    "name": "US Premium Listings (1-9 Locations) w/ Yelp",
                    "salesPartnerId": 1828,
                    "status": "ACTIVE",
                    "updatedDirectories": [
                        "TUPALO",
                        "LOCALSTACK",
                        "BMW",
                        "ELOCAL",
                        "NOKIA_HERE",
                        "N49",
                        "JUDYS_BOOK",
                        "GOOGLE",
                        "US_CITY",
                        "BING",
                        "YA_SABE",
                        "MANTA",
                        "VW",
                        "WAND",
                        "STADTBRANCHENBUCH",
                        "TOMTOM",
                        "YANDEX",
                        "FOURSQUARE",
                        "TOYOTA",
                        "BROWNBOOK",
                        "I_GLOBAL",
                        "MERCEDES",
                        "CITY_SQUARES",
                        "WHERE_TO",
                        "EZLOCAL",
                        "YELP_API",
                        "SUPER_PAGES",
                        "YALWA",
                        "UBER",
                        "CHAMBER_OF_COMMERCE",
                        "YELLOW_PAGES",
                        "FACEBOOK",
                        "GM",
                        "SHOWMELOCAL",
                        "CYLEX",
                        "MY_LOCAL_SERVICES",
                        "HOTFROG",
                        "APPLE_MAPS",
                        "INSTAGRAM",
                        "BAIDU",
                        "NEXT_DOOR",
                        "DEX_KNOWS",
                        "AUDI",
                        "FORD",
                        "NAVMII",
                        "FIAT",
                        "FACTUAL",
                        "WAZE",
                        "GOOGLE_MAPS",
                        "UNIVISION",
                        "AL_DIA_TX",
                        "LA_VOZ_TX",
                        "CHRON",
                        "STATESMAN",
                        "PALM_BEACH_POST",
                        "MUNDO_HISPANICO",
                        "EL_TIEMPO_LATINO",
                        "LATINOS_US",
                        "FIND_OPEN",
                        "BELL_CA",
                        "MICROSOFT_CORTANA",
                        "GOOGLE_ASSISTANT",
                        "SIRI"
                    ],
                    "id": 8423
                },
                "countryPrices": [
                    {
                        "country": "US",
                        "price": 950,
                        "priceSetup": 0,
                        "marketDevelopmentFunds": 0
                    }
                ]
            }
        }
    }
}

```

Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the Report|
|report_date|String|Date report was run|
|global\_master\_advertiser\_id |String| The global master advertiser id (for example, TEST_1)
|report_data|Object|Report details. [Report Data Object](https://uberall.com/en/developers/resources#Business)|