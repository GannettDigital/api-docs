## Identity Prospective Advertisers

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /v3/identities/prospective_advertisers
| GET | /v3/identities/prospective_advertisers/[id]
| POST | /v3/identities/prospective_advertisers
| PUT | /v3/identities/prospective_advertisers/[id]
| DELETE | /v3/identities/prospective_advertisers/[id]
| POST | /v3/identities/prospective_advertisers/[id]/users
| PUT | /v3/identities/prospective_advertisers/[id]/users/[id]
| DELETE | /v3/identities/prospective_advertisers/[id]/users/[id]

### Resource Detail

#### GET User(index)

When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`page_size`|No|Restrict number of prospective advertisers in the result <br><b>Default value: 100</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|

Get an existing prospective advertiser.

|Field|Type|Description|
|---|---|---|
|id|integer|The maid of prospective advertiser|
|gmaid|integer|The global master_advertiser_id of the prospective advertiser|
|business_category_id|integer|The business category id of the advertiser|
|business_sub_category_id|integer|The business sub category id of the advertiser|
|name|string|The name of the prospective advertiser|
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
|users|Array|Array of users, that the prospective advertiser is associated with|

example request: 

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/prospective_advertisers \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

example success response (HTTP status 2xx):

```
{
    "id": 8,
    "gmaid: "USA_132",
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
    "is_freemium": true,
    "primary_user_id": 1,
    "users": [
        {
            "id": 1,
            "email": "CODsoap@gmail.com",
            "first_name": "Slims",
            "last_name": "Shady",
            "bu_id": 1,
            "platform_id": 1,
            "cc_id": 1,
            "cc_role_id": 1,
            "cc_type": "type",
            "locale": "EN",
            "profile_data": null
        }
    ]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### GET User(show)

Get an existing prospective advertiser.

|Field|Type|Description|
|---|---|---|
|id|integer|The maid of prospective advertiser|
|gmaid|integer|The global master_advertiser_id of the prospective advertiser|
|business_category_id|integer|The business category id of the advertiser|
|business_sub_category_id|integer|The business sub category id of the advertiser|
|name|string|The name of the prospective advertiser|
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
|users|Array|Array of users, that the prospective advertiser is associated with|

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
    "id": 8,
    "gmaid: "USA_132",
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
    "is_freemium": true,
    "primary_user_id": 1,
    "users": [
        {
            "id": 1,
            "email": "CODsoap@gmail.com",
            "first_name": "Slims",
            "last_name": "Shady",
            "bu_id": 1,
            "platform_id": 1,
            "cc_id": 1,
            "cc_role_id": 1,
            "cc_type": "type",
            "locale": "EN",
            "profile_data": null
        }
    ]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### POST Prospective Advertiser

Create a prospective advertiser.

|Parameter|Type|Required|Description|
|---|---|---|---|
|gmaid|integer|No|The global master_advertiser_id of the prospective advertiser|
|business_category_id|integer|No|The business category id of the advertiser|
|business_sub_category_id|integer|No|The business sub category id of the advertiser|
|name|string|No|The name of the prospective advertiser|
|address1|string|No|The first address of the prospective advertiser|
|address2|string|No|The second address of the prospective advertiser|
|city|string|No|The city of the advertiser|
|province|string|No|The province of the advertiser|
|postal_code|integer|No|the postal code of the advertiser|
|country|string|No|The country of the advertiser|
|phone_number|string|No|The phone number of the advertiser|
|phone_type|string|No|The phone type of the advertiser|
|phone_country_code|string|No|The phone country code of the advertiser|
|fax|integer|No|fax address of the prospective advertiser|
|email|string|Yes|email address of the prospective advertiser|
|url|string|Yes|url address of the prospective advertiser|
|user_id|Integer|Yes|An id of a user, that the prospective advertiser is associated with|

example request: 

```
curl -L -X POST 'https://api.gcion.com/apgb2b-reporting/v3/identities/prospective_advertisers' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
-H 'Content-Type: application/json' \
--data-raw '   "prospective_advertiser": {
        "gmaid": "USA_132",
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
        "user_id": 1
    }'
```

example success response (HTTP status 2xx):

```
{
    "id": 14,
    "gmaid": "USA_132",
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
    "is_freemium": true,
    "primary_user_id": 1,
    "users": [
        {
            "id": 1,
            "email": "CODsoap@gmail.com",
            "first_name": "Slims",
            "last_name": "Shady",
            "bu_id": 1,
            "platform_id": 1,
            "cc_id": 1,
            "cc_role_id": 1,
            "cc_type": "type",
            "locale": "EN",
            "profile_data": null
        }
    ]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### PUT Prospective Advertiser

Update a prospective advertiser.

|Parameter|Type|Required|Description|
|---|---|---|---|
|gmaid|integer|No|The global master_advertiser_id of the prospective advertiser|
|business_category_id|integer|No|The business category id of the advertiser|
|business_sub_category_id|integer|No|The business sub category id of the advertiser|
|name|string|No|The name of the prospective advertiser|
|address1|string|No|The first address of the prospective advertiser|
|address2|string|No|The second address of the prospective advertiser|
|city|string|No|The city of the advertiser|
|province|string|No|The province of the advertiser|
|postal_code|integer|No|the postal code of the advertiser|
|country|string|No|The country of the advertiser|
|phone_number|string|No|The phone number of the advertiser|
|phone_type|string|No|The phone type of the advertiser|
|phone_country_code|string|No|The phone country code of the advertiser|
|fax|integer|No|fax address of the prospective advertiser|
|email|string|No|email address of the prospective advertiser|
|url|string|No|url address of the prospective advertiser|
|user_id|Integer|Yes|An id of a user, that the prospective advertiser is associated with|

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
    "id": 14,
    "gmaid": "USA_132",
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
    "is_freemium": true,
    "primary_user_id": 1,
    "users": [
        {
            "id": 1,
            "email": "CODsoap@gmail.com",
            "first_name": "Slims",
            "last_name": "Shady",
            "bu_id": 1,
            "platform_id": 1,
            "cc_id": 1,
            "cc_role_id": 1,
            "cc_type": "type",
            "locale": "EN",
            "profile_data": null
        }
    ]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### DELETE Prospective Advertiser

Delete a prospective advertiser.

example request: 

```
curl -L -X DELETE 'https://api.gcion.com/apgb2b-reporting/v3/identities/prospective_advertisers/1' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.


#### POST Prospective Advertiser user

Create a prospective advertiser user.

|Parameter|Type|Required|Description|
|---|---|---|---|
|user_id|Integer|Yes|An id of an user, that the prospective advertiser is associated with|

example request: 

```
curl -L -X POST 'https://api.gcion.com/apgb2b-reporting/v3/identities/prospective_advertisers/1/users' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
-H 'Content-Type: application/json' \
--data-raw '   "prospective_advertiser_user": {
        "user_id": 1
    }'
```
Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### PUT Prospective Advertiser user

UPDATE a prospective advertiser user.

|Parameter|Type|Required|Description|
|---|---|---|---|
|user_id|Integer|YES|An id of an user, that the prospective advertiser is associated with|
|prospective_advertiser_id|Integer|YES|An id of an prospective advertiser, that the user is associated with|
|is_primary|Bool|No|Field which shows, if the user is a primary one|

example request: 

```
curl -L -X PUT 'https://api.gcion.com/apgb2b-reporting/v3/identities/prospective_advertisers/1/users/1' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
-H 'Content-Type: application/json' \
--data-raw '   "prospective_advertiser_user": {
        "is_primary": true
    }'
```
Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.


#### DELETE Prospective Advertiser User

Delete an existing Prospective Advertiser user.

example request: 

```
curl -L -X DELETE 'https://api.gcion.com/apgb2b-reporting/v3/identities/prospective_advertisers/1' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.