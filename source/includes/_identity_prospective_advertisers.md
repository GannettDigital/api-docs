## Identity Prospective Advertisers

### Resource Overview

| Method | URI Format |
|---|---|
| POST | /v3/identities/prospective_advertiser

### Resource Detail

#### POST User

Create a prospective advertiser.

|Parameter|Type|Required|Description|
|---|---|---|---|
|name|string|Yes|The name of prospective advertiser|
|address1|string|No|The first address of the prospective advertiser|
|address2|string|No|The second address of the prospective advertiser|
|city|string|No|The city of the advertiser|
|province|string|No|The province of the advertiser|
|postalCode|integer|Yes|the postal code of the advertiser|
|country|string|No|The country of the advertiser|
|phone1_number|string|No|The phone number of the advertiser|
|phone1_type|string|No|The phone type of the advertiser|
|phone1_country_code|string|No|The phone country code of the advertiser|
|phone2_number|string|No|The phone number of the advertiser|
|phone2_type|string|No|The phone type of the advertiser|
|phone2_country_code|string|No|The phone country code of the advertiser|
|fax|integer|No|fax address of the prospective advertiser|
|email|string|No|email address of the prospective advertiser|
|url|string|No|url address of the prospective advertiser|
|user_ids|Array|Yes|An array of user ids, that the prospective advertiser is associated with|

example request: 

```
curl -L -X POST 'https://api.gcion.com/apgb2b-reporting/v3/identities/prospect_advertiser' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
-H 'Content-Type: application/json' \
--data-raw '   "user": {
        "name": "Company",
        "Address1": "Old str 10",
        "Address2": "Old str 11",
        "city": "Chicago",
        "province": "Chicago",
        "postalCode": 2312,
        "country": "USA",
        "phone1_number": "+123456",
        "phone1_type": "type",
        "phone1_country_code": "+123",
        "fax": "123456",
        "email": "email@gmail.com",
        "url": "http://www.prospect-advertisers.com",
        "user_ids": [1, 124, 41242]
    }'
```

example success response (HTTP status 2xx):

```
{
    "name": "Company",
    "Address1": "Old str 10",
    "Address2": "Old str 11",
    "city": "Chicago",
    "province": "Chicago",
    "postalCode": 2312,
    "country": "USA",
    "phone1_number": "+123456",
    "phone1_type": "type",
    "phone1_country_code": "+123",
    "fax": "123456",
    "email": "email@gmail.com",
    "url": "http://www.prospect-advertisers.com",
    "user_ids": [1, 124, 41242]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
