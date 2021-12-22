## Identity Login Users

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /v3/identities/login_users?
| GET | /v3/identities/login_users/[id]
| POST | /v3/identities/login_users
| PUT | /v3/identities/login_users/[id]
| DELETE | /v3/identities/login_users/[id]

### Resource Detail

#### Parameters

When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`first_name`|No|Restrict results to one or more specific user with the given first name|
|`last_name`|No|Restrict results to one or more specific user with the given last name|
|`email`|No|Restrict results to one or more specific user with the given email|
|`page_size`|No|Restrict number of login users in result <br><b>Default value: 100</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|

#### GET User(index)

Get an existing user.

|Field|Type|Description|
|---|---|---|
|id|integer|id value of the login user|
|email|string|The unique email of the login user|
|first_name|string|The first name of the login user|
|last_name|string|The last name of the login user|
|bu_id|integer|Business user id|
|locale|string|Locale of the country the user is based in|
|profile_data|JSON|Meta data of the user|
|companies|Array|Array of companies, that the loign user is associated with|
|client_center_users|Array|Array of client center user, that the login user is associated with|
|ldap_id|string|Id of the user used to reference a directory server|
|verified|boolean|indicates the email of user has been verified|

example request:

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/login_users?first_name=Slim&last_name=Sha&email=scas \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

example success response (HTTP status 2xx):

```
{
    "login_users": [
        {
            "id": 8,
            "email": "sсasdsad@gmail.com",
            "first_name": "Slims",
            "last_name": "Shady",
            "bu_id": 1,
            "locale": "EN",
            "profile_data": {
                "test": "test",
                "test2": "test"
            },
            "companies": [
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
                    "url": "http://www.some_company.com",
                    "is_freemium": false,
                    "created_at": "2021-08-27T13:19:29.000Z",
                    "updated_at": "2021-08-27T13:25:55.000Z"
                }
            ],
            "client_center_users": [
                {
                    "external_id": 23,
                    "platform_id": 6,
                    "role": null,
                    "type_of": null,
                    "login_user_id": 1,
                    "created_at": "2021-10-11T13:42:04.000Z",
                    "updated_at": "2021-10-11T13:42:04.000Z"
                },
                {
                    "external_id": 1,
                    "platform_id": 1,
                    "role": 1,
                    "type_of": 1,
                    "login_user_id": 1,
                    "created_at": "2021-10-11T00:00:00.000Z",
                    "updated_at": "2021-10-11T00:00:00.000Z"
                },
            ],
            "ldap_id": "qwerty123",
            "verified": false
        }
    ],
    "page": 1,
    "total_pages": 1,
    "per_page": 100
}
```

#### GET User(show)

Get an existing login user.

|Field|Type|Description|
|---|---|---|
|id|integer|id value of the login user|
|email|string|The unique email of the login user|
|first_name|string|The first name of the login user|
|last_name|string|The last name of the login user|
|bu_id|integer|Business user id|
|locale|string|Locale of the country the user is based in|
|profile_data|JSON|Meta data of the login user|
|companies|Array|Array of companies, that the user is associated with|
|client_center_users|Array|Array of client center user, that the login user is associated with|
|ldap_id|string|Id of the user used to reference a directory server|
|verified|boolean|indicates the email of user has been verified|

example request:

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/login_users/8 \
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
    "locale": "EN",
    "profile_data": {
        "test": "test",
        "test2": "test"
    },
    "companies": [
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
            "url": "http://www.some_company.com",
            "is_freemium": false,
            "created_at": "2021-08-27T13:19:29.000Z",
            "updated_at": "2021-08-27T13:25:55.000Z"
        }
    ],
    "client_center_users": [
        {
            "external_id": 23,
            "platform_id": 6,
            "role": null,
            "type_of": null,
            "login_user_id": 1,
            "created_at": "2021-10-11T13:42:04.000Z",
            "updated_at": "2021-10-11T13:42:04.000Z"
        },
        {
            "external_id": 1,
            "platform_id": 1,
            "role": 1,
            "type_of": 1,
            "login_user_id": 1,
            "created_at": "2021-10-11T00:00:00.000Z",
            "updated_at": "2021-10-11T00:00:00.000Z"
        },
    ],
    "ldap_id": "qwerty123",
    "verified": true
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### POST Login User

Create a login user.

|Parameter|Type|Required|Description|
|---|---|---|---|
|email|string|Yes|Email unique value of the user|
|first_name|string|No|The first name of the user|
|last_name|string|No|The last name of the user|
|bu_id|integer|No|Business user id|
|locale|string|No|Locale of the country the user is based in|
|profile_data|JSON|No|Meta data of the user|
|ldap_id|string|No|Id of the user used to reference a directory server|
|verified|boolean|No|Indicates the email of user has been verified.  Defaults to false.|


example request:

```
curl -L -X POST 'https://api.gcion.com/apgb2b-reporting/v3/identities/login_users' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
-H 'Content-Type: application/json' \
--data-raw '   "user": {
        "email": "email@gmail.com",
        "first_name": "Slim",
        "last_name": "Shady",
        "bu_id": 1,
        "locale": "EN",
        "profile_data": {
            "test": "test",
            "test2": "test"
        },
        "ldap_id": "qwerty123"
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
    "locale": "EN",
    "profile_data": {
        "test": "test",
        "test2": "test"
    },
    "companies": [],
    "client_center_users": [],
    "ldap_id": "qwerty123"
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### PUT Login User

Update an existing login user.

|Parameter|Type|Required|Description|
|---|---|---|---|
|email|string|Yes|Email unique value of the user|
|first_name|string|No|The first name of the user|
|last_name|string|No|The last name of the user|
|bu_id|integer|No|Business user id|
|locale|string|No|Locale of the country the user is based in|
|profile_data|JSON|No|Meta data of the user|
|verified|boolean|No|Indicates the email of user has been verified|

Fields marked as required aren't necessarily required in the request, but are required on the resulting object.

example request:

```
curl -L -X PUT 'https://api.gcion.com/apgb2b-reporting/v3/identities/login_users/1' \
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
    "locale": "EN",
    "profile_data": null,
    "companies": [
        {
            "id": 1,
            "gmaid": "USA_888",
            "business_category_id": null,
            "business_sub_category_id": null,
            "name": "Slate Quarry",
            "address1": null,
            "address2": null,
            "city": null,
            "province": null,
            "postal_code": null,
            "country": null,
            "phone_number": null,
            "phone_type": null,
            "phone_country_code": null,
            "fax": null,
            "email": "email@gmail.com",
            "url": "slate.com",
            "is_freemium": true,
            "primary_login_user_id": 1
        }
    ],
    "client_center_users": [
        {
            "external_id": 23,
            "platform_id": 6,
            "role": null,
            "type_of": null,
            "login_user_id": 1,
            "created_at": "2021-10-11T13:42:04.000Z",
            "updated_at": "2021-10-11T13:42:04.000Z"
        },
        {
            "external_id": 1,
            "platform_id": 1,
            "role": 1,
            "type_of": 1,
            "login_user_id": 1,
            "created_at": "2021-10-11T00:00:00.000Z",
            "updated_at": "2021-10-11T00:00:00.000Z"
        }
    ],
    "ldap_id": "qwerty123"
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### DELETE Login User

Delete an existing login user.

example request:

```
curl -L -X DELETE 'https://api.gcion.com/apgb2b-reporting/v3/identities/login_users/1' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### POST Client center user

Create a client center user.

|Parameter|Type|Required|Description|
|---|---|---|---|
|external_id|Integer|No|An id of a client center user, that the login user is associated with.|
|platform_id|Integer|Yes|An id that indicates the client center plaform in which the login user has a registration Valid platform ids are: 1 (`USA`), 2 (`CAN`), 3 (`AUS`) and 6 (`GBR`)|
|type_of|Integer|No|Type of a client center user, that the login user is associated with.|
|role|Integer|Yes|A role id of a client center user, that the login user is associated with.|

example request:

```
curl -L -X POST 'https://api.gcion.com/apgb2b-reporting/v3/identities/login_users/1/client_center_user' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
-H 'Content-Type: application/json' \
--data-raw '   "client_center_user_id": {
        "platform_id": 1
    }'
```
Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### PUT Client center user

UPDATE a client center user.

|Parameter|Type|Required|Description|
|---|---|---|---|
|external_id|Integer|No|An id of a client center user, that the login user is associated with.|
|platform_id|Integer|Yes|An id that indicates the client center plaform in which the login user has a registration Valid platform ids are: 1 (`USA`), 2 (`CAN`), 3 (`AUS`) and 6 (`GBR`)|
|type_of|Integer|No|Type of a client center user, that the login user is associated with.|
|role|Integer|Yes|A role id of a client center user, that the login user is associated with.|
|login_user_id|Integer|No|An id of a login user id, that the client center user is associated with.|

example request:

```
curl -L -X PUT 'https://api.gcion.com/apgb2b-reporting/v3/identities/companies/1/users/1' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
-H 'Content-Type: application/json' \
--data-raw '   "client_center_user_id": {
        "external_id": 45
    }'
```
Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.


#### DELETE Client Center User

Delete an existing Client Center user.

example request:

```
curl -L -X DELETE 'https://api.gcion.com/apgb2b-reporting/v3/identities/login_users/1/client_center_users/1' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
