## Identity Users

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /v1/identities/users/[id]
| POST | /v1/identities/users
| PUT | /v1/identities/users/[id]
| DELETE | /v1/identities/users/[id]

### Resource Detail

#### GET User

Get an existing user.

|Field|Description|
|---|---|
|id|id value of the user|
|email|The unique email of user|
|first_name|The first name of user|
|last_name|The last name of user|
|bu_id|Business user id|
|platform_id|The platform id for the user|
|cc_id|The legacy client center id value of the user|
|cc_role_id|The legacy client center cc_role_id value of the user|
|cc_type|The legacy client center type value of the user|
|locale|locale of the country the user is based in|
|profile_data|Meta data of the user|

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
    }
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### POST User

Create a user.

|Parameter|Required|Description|
|---|---|---|
|email|Yes|email unique value of the user|
|first_name|No|The first name of the user|
|last_name|No|The last name of the user|
|platform_id|Yes|The platform id for the user|
|bu_id|No|Business user id|
|cc_id|No|The legacy client center id value of the user|
|cc_role_id|No|The legacy client center cc_role_id value of the user|
|cc_type|No|The legacy client center type value of the user|
|locale|No|locale of the country the user is based in|
|profile_data|No|Meta data of the user|

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
    }
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### PUT User

Update an existing premium listing user profile.

|Parameter|Required|Description|
|---|---|---|
|id|Yes|id value of the user|
|email|Yes|email unique value of the user|
|first_name|No|The first name of the user|
|last_name|No|The last name of the user|
|platform_id|Yes|The platform id for the user|
|bu_id|No|Business user id|
|cc_id|No|The legacy client center id value of the user|
|cc_role_id|No|The legacy client center cc_role_id value of the user|
|cc_type|No|The legacy client center type value of the user|
|locale|No|locale of the country the user is based in|
|profile_data|No|Meta data of the user|

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
    "profile_data": null
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
