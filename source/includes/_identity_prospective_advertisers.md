## Identity Prospective Advertisers

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /v3/identities/prospective_advertisers/[id]
| POST | /v3/identities/prospective_advertisers
| PUT | /v3/identities/prospective_advertisers/[id]
| DELETE | /v3/identities/prospective_advertisers/[id]

### Resource Detail

#### GET User(show)

Get an existing prospective advertiser.

|Field|Type|Description|
|---|---|---|
|prospective_advertiser_id|integer|The maid of prospective advertiser|
|master_advertiser_id|integer|The maid of prospective advertiser|
|platform_id|integer|The platform of prospective advertiser|
|business_category_id|integer|The maid of prospective advertiser|
|business_sub_category_id|integer|The maid of prospective advertiser|
|name|string|The name of prospective advertiser|
|address1|string|The first address of the prospective advertiser|
|address2|string|The second address of the prospective advertiser|
|city|string|The city of the advertiser|
|province|string|The province of the advertiser|
|postal_code|integer|the postal code of the advertiser|
|country|string|The country of the advertiser|
|phone_number|string|The phone number of the advertiser|
|phone_type|string|The phone type of the advertiser|
|phone_country_code|string|The phone country code of the advertiser|
|fax|integer|fax address of the prospective advertiser|
|email|string|email address of the prospective advertiser|
|url|string|url address of the prospective advertiser|
|user_id|integer|User id, that the prospective advertiser is associated with|

example request: 

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/prospective_advertisers/8 \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

example success response (HTTP status 2xx):

```
{
    "prospective_advertiser_id": 8,
    "master_advertiser_id": 152,
    "platform_id": 2,
    "business_category_id": 14,
    "business_sub_category_id": 142,
    "name": "Company",
    "address1": "Old str 10",
    "address2": "Old str 11",
    "city": "Chicago",
    "province": "Chicago",
    "postal_code": 2312,
    "country": "USA",
    "phone_number": "+123456",
    "phone_type": "type",
    "phone_country_code": "+123",
    "fax": "123456",
    "email": "email@gmail.com",
    "url": "http://www.prospect-advertisers.com",
    "user_id": 12
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### POST Prospective Advertiser

Create a prospective advertiser.

|Parameter|Type|Required|Description|
|---|---|---|---|
|master_advertiser_id|integer|Yes|The maid of prospective advertiser|
|platform_id|integer|Yes|The platform of prospective advertiser|
|business_category_id|integer|Yes|The maid of prospective advertiser|
|business_sub_category_id|integer|Yes|The maid of prospective advertiser|
|name|string|Yes|The name of prospective advertiser|
|address1|string|No|The first address of the prospective advertiser|
|address2|string|No|The second address of the prospective advertiser|
|city|string|No|The city of the advertiser|
|province|string|No|The province of the advertiser|
|postal_code|integer|Yes|the postal code of the advertiser|
|country|string|No|The country of the advertiser|
|phone_number|string|No|The phone number of the advertiser|
|phone_type|string|No|The phone type of the advertiser|
|phone_country_code|string|No|The phone country code of the advertiser|
|fax|integer|No|fax address of the prospective advertiser|
|email|string|No|email address of the prospective advertiser|
|url|string|No|url address of the prospective advertiser|
|user_ids|Array|Yes|An array of user ids, that the prospective advertiser is associated with|

example request: 

```
curl -L -X POST 'https://api.gcion.com/apgb2b-reporting/v3/identities/prospective_advertisers' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
-H 'Content-Type: application/json' \
--data-raw '   "prospective_advertiser": {
        "master_advertiser_id": 152,
        "platform_id": 2,
        "business_category_id": 14,
        "business_sub_category_id": 142,
        "name": "Company",
        "address1": "Old str 10",
        "address2": "Old str 11",
        "city": "Chicago",
        "province": "Chicago",
        "postal_code": 2312,
        "country": "USA",
        "phone_number": "+123456",
        "phone_type": "type",
        "phone_country_code": "+123",
        "fax": "123456",
        "email": "email@gmail.com",
        "url": "http://www.prospect-advertisers.com",
        "user_ids": [1, 124, 41242]
    }'
```

example success response (HTTP status 2xx):

```
{
    "master_advertiser_id": 152,
    "platform_id": 2,
    "business_category_id": 14,
    "business_sub_category_id": 142,
    "name": "Company",
    "address1": "Old str 10",
    "address2": "Old str 11",
    "city": "Chicago",
    "province": "Chicago",
    "postal_code": 2312,
    "country": "USA",
    "phone_number": "+123456",
    "phone_type": "type",
    "phone_country_code": "+123",
    "fax": "123456",
    "email": "email@gmail.com",
    "url": "http://www.prospect-advertisers.com",
    "user_ids": [1, 124, 41242]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### PUT Prospective Advertiser

Update a prospective advertiser.

|Parameter|Type|Required|Description|
|---|---|---|---|
|master_advertiser_id|integer|Yes|The maid of prospective advertiser|
|platform_id|integer|Yes|The platform of prospective advertiser|
|business_category_id|integer|Yes|The maid of prospective advertiser|
|business_sub_category_id|integer|Yes|The maid of prospective advertiser|
|name|string|Yes|The name of prospective advertiser|
|address1|string|No|The first address of the prospective advertiser|
|address2|string|No|The second address of the prospective advertiser|
|city|string|No|The city of the advertiser|
|province|string|No|The province of the advertiser|
|postal_code|integer|Yes|the postal code of the advertiser|
|country|string|No|The country of the advertiser|
|phone_number|string|No|The phone number of the advertiser|
|phone_type|string|No|The phone type of the advertiser|
|phone_country_code|string|No|The phone country code of the advertiser|
|fax|integer|No|fax address of the prospective advertiser|
|email|string|No|email address of the prospective advertiser|
|url|string|No|url address of the prospective advertiser|
|user_ids|Array|Yes|An array of user ids, that the prospective advertiser is associated with|

example request: 

```
curl -L -X PUT 'https://api.gcion.com/apgb2b-reporting/v3/identities/prospective_advertisers/12' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
-H 'Content-Type: application/json' \
--data-raw '   "prospective_advertiser": {
        "name": "Other Company",
    }'
```

example success response (HTTP status 2xx):

```
{
    "master_advertiser_id": 152,
    "platform_id": 2,
    "business_category_id": 14,
    "business_sub_category_id": 142,
    "name": "Other Company",
    "address1": "Old str 10",
    "address2": "Old str 11",
    "city": "Chicago",
    "province": "Chicago",
    "postal_code": 2312,
    "country": "USA",
    "phone_number": "+123456",
    "phone_type": "type",
    "phone_country_code": "+123",
    "fax": "123456",
    "email": "email@gmail.com",
    "url": "http://www.prospect-advertisers.com",
    "user_id": 12
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### DELETE Prospective Advertiser

Delete an existing user.

example request: 

```
curl -L -X DELETE 'https://api.gcion.com/apgb2b-reporting/v3/identities/prospective_advertisers/1' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
