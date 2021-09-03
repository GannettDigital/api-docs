## Identity Users

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /v3/identities/users?
| GET | /v3/identities/users/[id]
| POST | /v3/identities/users
| PUT | /v3/identities/users/[id]
| DELETE | /v3/identities/users/[id]

### Resource Detail

#### Parameters

When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`first_name`|No|Restrict results to one or more specific user with the given first name|
|`last_name`|No|Restrict results to one or more specific user with the given last name|
|`email`|No|Restrict results to one or more specific user with the given email|
|`page_size`|No|Restrict number of users in result <br><b>Default value: 100</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|

#### GET User(index)

Get an existing user.

|Field|Type|Description|
|---|---|---|
|id|integer|id value of the user|
|email|string|The unique email of user|
|first_name|string|The first name of user|
|last_name|string|The last name of user|
|bu_id|integer|Business user id|
|platform_id|integer|The platform id for the user|
|cc_id|integer|The legacy client center id value of the user|
|cc_role_id|integer|The legacy client center cc_role_id value of the user|
|cc_type|string|The legacy client center type value of the user|
|locale|string|Locale of the country the user is based in|
|profile_data|JSON|Meta data of the user|
|prospective_advertisers|Array|Array of prospective advertisers, that the user is associated with|

example request: 

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/users?first_name=Slim&last_name=Sha&email=scas \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

example success response (HTTP status 2xx):

```
{
    "users": [
        {
            "id": 8,
            "email": "sсasdsad@gmail.com",
            "first_name": "Slims",
            "last_name": "Shady",
            "bu_id": 1,
            "platform_id": 1,
            "cc_id": 1,
            "cc_role_id": 1,
            "cc_type": "type",
            "locale": "EN",
            "profile_data": {
                "test": "test",
                "test2": "test"
            },
            "prospective_advertisers": [
                {
                    "id": 1,
                    "master_advertiser_id": null,
                    "platform_id": null,
                    "name": "Company",
                    "address1": "Old str 10",
                    "address2": "Old str 11",
                    "city": "Chicago",
                    "province": "Chicago",
                    "postal_code": "2312",
                    "country": "USA",
                    "phone_number": "+123456",
                    "phone_type": "type",
                    "phone_country_code": "+123",
                    "business_category_id": 14,
                    "business_sub_category_id": 142,
                    "fax": 123456,
                    "email": "em@gmail.com",
                    "url": "http://www.prospect-advertisers.com",
                    "is_freemium": false,
                    "created_at": "2021-08-27T13:19:29.000Z",
                    "updated_at": "2021-08-27T13:25:55.000Z"
                }
            ]
        }
    ],
    "page": 1,
    "total_pages": 1,
    "per_page": 100
}
```

#### GET User(show)

Get an existing user.

|Field|Type|Description|
|---|---|---|
|id|integer|id value of the user|
|email|string|The unique email of user|
|first_name|string|The first name of user|
|last_name|string|The last name of user|
|bu_id|integer|Business user id|
|platform_id|integer|The platform id for the user|
|cc_id|integer|The legacy client center id value of the user|
|cc_role_id|integer|The legacy client center cc_role_id value of the user|
|cc_type|string|The legacy client center type value of the user|
|locale|string|Locale of the country the user is based in|
|profile_data|JSON|Meta data of the user|
|prospective_advertisers|Array|Array of prospective advertisers, that the user is associated with|

example request: 

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/users/8 \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

example success response (HTTP status 2xx):

```
{
    "id": 8,
    "email": "sсasdsad@gmail.com",
    "first_name": "Slims",
    "last_name": "Shady",
    "bu_id": 1,
    "platform_id": 1,
    "cc_id": 1,
    "cc_role_id": 1,
    "cc_type": "type",
    "locale": "EN",
    "profile_data": {
        "test": "test",
        "test2": "test"
    },
    "prospective_advertisers": [
        {
            "id": 1,
            "master_advertiser_id": null,
            "platform_id": null,
            "name": "Company",
            "address1": "Old str 10",
            "address2": "Old str 11",
            "city": "Chicago",
            "province": "Chicago",
            "postal_code": "2312",
            "country": "USA",
            "phone_number": "+123456",
            "phone_type": "type",
            "phone_country_code": "+123",
            "business_category_id": 14,
            "business_sub_category_id": 142,
            "fax": 123456,
            "email": "em@gmail.com",
            "url": "http://www.prospect-advertisers.com",
            "is_freemium": false,
            "created_at": "2021-08-27T13:19:29.000Z",
            "updated_at": "2021-08-27T13:25:55.000Z"
        }
    ]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### POST User

Create a user.

|Parameter|Type|Required|Description|
|---|---|---|---|
|email|string|Yes|Email unique value of the user|
|first_name|string|No|The first name of the user|
|last_name|string|No|The last name of the user|
|platform_id|integer|Yes|The platform id for the user|
|bu_id|integer|No|Business user id|
|cc_id|integer|No|The legacy client center id value of the user|
|cc_role_id|integer|No|The legacy client center cc_role_id value of the user|
|cc_type|string|No|The legacy client center type value of the user|
|locale|string|No|Locale of the country the user is based in|
|profile_data|JSON|No|Meta data of the user|

example request: 

```
curl -L -X POST 'https://api.gcion.com/apgb2b-reporting/v3/identities/users' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
-H 'Content-Type: application/json' \
--data-raw '   "user": {
        "email": "email@gmail.com",
        "first_name": "Slim",
        "last_name": "Shady",
        "bu_id": 1,
        "cc_id": 1,
        "cc_role_id": 1,
        "cc_type": "type",
        "locale": "EN",
        "platform_id": 1,
        "profile_data": {
            "test": "test",
            "test2": "test"
        }
    }'
```

example success response (HTTP status 2xx):

```
{
    "id": 10,
    "email": "email@gmail.com",
    "first_name": "Slim",
    "last_name": "Shady",
    "bu_id": 1,
    "platform_id": 1,
    "cc_id": 1,
    "cc_role_id": 1,
    "cc_type": "type",
    "locale": "EN",
    "profile_data": {
        "test": "test",
        "test2": "test"
    },
    "prospective_advertisers": []
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### PUT User

Update an existing user.

|Parameter|Type|Required|Description|
|---|---|---|---|
|email|string|Yes|Email unique value of the user|
|first_name|string|No|The first name of the user|
|last_name|string|No|The last name of the user|
|platform_id|integer|Yes|The platform id for the user|
|bu_id|integer|No|Business user id|
|cc_id|integer|No|The legacy client center id value of the user|
|cc_role_id|integer|No|The legacy client center cc_role_id value of the user|
|cc_type|string|No|The legacy client center type value of the user|
|locale|string|No|Locale of the country the user is based in|
|profile_data|JSON|No|Meta data of the user|

Fields marked as required aren't necessarily required in the request, but are required on the resulting object.

example request: 

```
curl -L -X PUT 'https://api.gcion.com/apgb2b-reporting/v3/identities/users/1' \
-H 'Content-Type: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
--data-raw '{
    "user": {
        "first_name": "Bono"
    }
}'
```

example success response (HTTP status 2xx):

```
{
    "id": 1,
    "email": "email@gmail.com",
    "first_name": "Bono",
    "last_name": "Shady",
    "bu_id": 1,
    "platform_id": 1,
    "cc_id": 1,
    "cc_role_id": 1,
    "cc_type": "type",
    "locale": "EN",
    "profile_data": null,
    "prospective_advertisers": [
        {
            "id": 1,
            "master_advertiser_id": null,
            "platform_id": null,
            "name": "Company",
            "address1": "Old str 10",
            "address2": "Old str 11",
            "city": "Chicago",
            "province": "Chicago",
            "postal_code": "2312",
            "country": "USA",
            "phone_number": "+123456",
            "phone_type": "type",
            "phone_country_code": "+123",
            "business_category_id": 14,
            "business_sub_category_id": 142,
            "fax": 123456,
            "email": "em@gmail.com",
            "url": "http://www.prospect-advertisers.com",
            "is_freemium": false,
            "created_at": "2021-08-27T13:19:29.000Z",
            "updated_at": "2021-08-27T13:25:55.000Z"
        }
    ]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### DELETE User

Delete an existing user.

example request: 

```
curl -L -X DELETE 'https://api.gcion.com/apgb2b-reporting/v3/identities/users/1' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
