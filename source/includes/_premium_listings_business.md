### Business

#### Resource Overview

| Method | URI Format |
|---|---|
| GET | /client_reports/premium_listings/business/[gmaid]

#### API Name: business
#### Usage
Use GET to retrieve business data for a GMAID, that comes from the Premium Listing Reporting API.  Only "trusted" tokens are accepted - this report cannot be called through an API gateway.

The data returned will include information about the business which corresponds to the gmaid. 

#### Examples

```
curl --location 'https://api.localiqservices.com/client_reports/premium_listings/business/USA_92131' \
--header 'Authorization: Bearer OAUTH_ACCESS_TOKEN'
```

#### Example Response
```javascript
{
    "report_type": "premium_listings/business/business",
    "report_date": "2023-08-11",
    "global_master_advertiser_id": "USA_92131",
    "report_data": {
        "id": 1137523,
        "identifier": "USA_92131",
        "name": "Warm Thoughts",
        "type": "ENTERPRISE",
        "streetAndNo": null,
        "addressLine2": null,
        "province": null,
        "zip": null,
        "city": null,
        "phone": null,
        "country": "US",
        "contractDuration": 1,
        "numOfLocations": 116,
        "status": "ACTIVE",
        "businessSyncable": true,
        "dateCreated": "2021-02-09T19:08:05.000+01:00",
        "defaultPrice": null,
        "defaultOriginalPrice": null,
        "defaultPriceSetup": null,
        "nextProductPlanId": null,
        "effectiveDate": null,
        "productPlan": {
            "billingPeriod": 1,
            "countryPrice": [
                {
                    "country": "US",
                    "price": null,
                    "priceSetup": 0,
                    "marketDevelopmentFunds": 0
                }
            ],
            "currency": "USD",
            "dateCreated": "2023-05-03T16:52:53.000+02:00",
            "defaultMarketDevelopmentFunds": null,
            "defaultOriginalPrice": null,
            "defaultPlan": true,
            "defaultPrice": null,
            "defaultPriceSetup": null,
            "description": "US Premium Listings (100+) w/ Infogroup",
            "duration": 1,
            "features": [
                "DASHBOARD",
                "INBOX",
                "CLEANSING",
                "SUPPORT",
                "AUTOMATION",
                "SUPPRESSION",
                "TRACKING",
                "UPGRADE"
            ],
            "identifier": null,
            "initialBillingPeriod": 1,
            "initialDuration": 1,
            "lastUpdated": "2023-05-03T16:54:23.000+02:00",
            "name": "[L] US Premium Listings (100+) w/ Infogroup",
            "salesPartnerId": 2452,
            "status": "ACTIVE",
            "updatedDirectories": [
                "YELLOW_PAGES",
                "YANDEX",
                "GM",
                "SHOWMELOCAL",
                "FACEBOOK",
                "MANTA",
                "LOCALSTACK",
                "ELOCAL",
                "CYLEX",
                "INFOGROUP",
                "YA_SABE",
                "NOKIA_HERE",
                "BMW",
                "CITY_SQUARES",
                "NEXT_DOOR",
                "ALEXA",
                "TOYOTA",
                "TOMTOM",
                "YALWA",
                "WHERE_TO",
                "FORD",
                "BING",
                "FOURSQUARE",
                "INSTAGRAM",
                "MY_LOCAL_SERVICES",
                "HOTFROG",
                "NAVMII",
                "BAIDU",
                "BBB",
                "I_GLOBAL",
                "VW",
                "MAP_QUEST",
                "US_CITY",
                "GOOGLE",
                "BROWNBOOK",
                "MERCEDES",
                "WAND",
                "JUDYS_BOOK",
                "UBER",
                "CHAMBER_OF_COMMERCE",
                "TUPALO",
                "EZLOCAL",
                "FIAT",
                "STADTBRANCHENBUCH",
                "AUDI",
                "CITYSEARCH",
                "N49",
                "APPLE_MAPS",
                "WAZE",
                "GOOGLE_MAPS",
                "SUPER_PAGES",
                "DEX_KNOWS",
                "FIND_OPEN",
                "BELL_CA",
                "MICROSOFT_CORTANA",
                "GOOGLE_ASSISTANT",
                "SIRI",
                "INSIDER_PAGES"
            ],
            "id": 13755
        },
        "countryPrices": [
            {
                "country": "US",
                "price": null,
                "priceSetup": null,
                "marketDevelopmentFunds": null
            }
        ]
    }
}
```

Field Name|Datatype|Description|
|---|---|---|
|report_type|String|Name of the Report|
|report_date|String|Date report was run|
|global\_master\_advertiser\_id |String| The global master advertiser id (for example, TEST_1)
|report_data|Object|Report details. [Report Data Object](https://uberall.com/en/developers/resources#Business)|