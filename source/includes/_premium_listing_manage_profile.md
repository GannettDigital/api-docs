## Premium Listings Manage User Profile

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /v1/identities/premium_listing/profiles/[premium_listing_user_identifier]
| POST | /v1/identities/premium_listing/profiles
| PUT | /v1/identities/premium_listing/profiles/[premium_listing_user_identifier]
| DELETE | /v1/identities/premium_listing/profiles/[premium_listing_user_identifier]

### Resource Detail

#### GET User

Get an existing premium listing provider user profile.

Get SSO information for an existing premium listing user profile.  The *premium_listing_user_identifier* is the identifier value of the user at the premium listing provider.  This will generally be an email address.

|Field|Description|
|---|---|
|premium_listing_user_identifier|identifier value of the user|
|user_id|The unique user id|
|wl_identifier|White label identifier used on the premium listing provider platform.  It is used to construct the single sign on link.|
|access_token|The SSO access token|
|sso_login_url|The SSO link|

example request: 

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/v1/identities/premium_listing/profiles/user%40example%2Ecom' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

example success response (HTTP status 2xx):

```
{
  "premium_listing_user_identifier": "user@example.com",
  "user_id": 8282628,
  "private_key": "X3gnfklrmEtjM9TlyPL22sQPSKk4QUPuBko8",
  "wl_identifier": "localiq",
  "access_token": "fqDkOBuCzr91PgwdkNnBKW33Ns9wcW3hW1ngaQFyElyCrhWUfyref99ZZJR2",
  "sso_login_url": "https://uberall.com/en/app/localiq?access_token=fqDkOBuCzr91PgwdkNnBKW33Ns9wcW3hW1ngaQFyElyCrhWUfyref99ZZJR2"
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### POST User

Create a premium listing provider profile using user data from the premium listing provider.  It will not create the user at the premium listing provider.

|Parameter|Required|Description|
|---|---|---|
|premium_listing_user_identifier|Yes|identifier value of the user|
|user_id|Yes|The unique user id|
|private_key|Yes|The private API key for the user.|
|wl_identifier|No|White label identifier used on the premium listing provider platform.  It is used to construct the single sign on link.  Defaults to localiq|

example request: 

```
curl -L -X POST 'https://api.gcion.com/apgb2b-reporting/v1/identities/premium_listing/profiles' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
-H 'Content-Type: application/json' \
--data-raw '{
  "premium_listing_user_identifier": "user@example.com",
  "user_id": 8282628,
  "private_key": "X3gnfklrmEtjM9TlyPL22sQPSKk4QUPuBko8",
  "wl_identifier": "localiq"
}'
```

example success response (HTTP status 2xx):

```
{
  "premium_listing_user_identifier": "user@example.com",
  "user_id": 8282628,
  "private_key": "X3gnfklrmEtjM9TlyPL22sQPSKk4QUPuBko8",
  "wl_identifier": "localiq",
  "access_token": "fqDkOBuCzr91PgwdkNnBKW33Ns9wcW3hW1ngaQFyElyCrhWUfyref99ZZJR2",
  "sso_login_url": "https://uberall.com/en/app/localiq?access_token=fqDkOBuCzr91PgwdkNnBKW33Ns9wcW3hW1ngaQFyElyCrhWUfyref99ZZJR2"
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### PUT User

Update an existing premium listing user profile.  It will not update the information at the premium listing provider.

The *premium_listing_user_identifier* is the identifier value of the user at the premium listing provider.  This will generally be an email address.

|Parameter|Required|Description|
|---|---|---|
|premium_listing_user_identifier|Yes|identifier value of the user|
|user_id|Yes|The unique user id|
|private_key|Yes|The private API key for the user.|
|wl_identifier|No|White label identifier used on the premium listing provider platform.  It is used to construct the single sign on link.|

Fields marked as required aren't necessarily required in the request, but are required on the resulting object.

example request: 

```
curl -L -X PUT 'https://api.gcion.com/apgb2b-reporting/v1/identities/premium_listing/profiles/user%40example%2Ecomcom' \
-H 'Content-Type: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY' \
--data-raw '{
  "user_id": 8282628,
  "private_key": "X3gnfklrmEtjM9TlyPL22sQPSKk4QUPuBko8",
  "wl_identifier": "localiq"
}'
```

example success response (HTTP status 2xx):

```
{
  "premium_listing_user_identifier": "user@example.com",
  "user_id": 8282628,
  "private_key": "X3gnfklrmEtjM9TlyPL22sQPSKk4QUPuBko8",
  "wl_identifier": "localiq",
  "access_token": "fqDkOBuCzr91PgwdkNnBKW33Ns9wcW3hW1ngaQFyElyCrhWUfyref99ZZJR2",
  "sso_login_url": "https://uberall.com/en/app/localiq?access_token=fqDkOBuCzr91PgwdkNnBKW33Ns9wcW3hW1ngaQFyElyCrhWUfyref99ZZJR2"
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### DELETE User

Delete an existing premium listing provider user profile.  It will not delete the user at the premium listing provider.

The *premium_listing_user_identifier* is the identifier value of the user at the premium listing provider.  This will generally be an email address.

example request: 

```
curl -L -X DELETE 'https://api.gcion.com/apgb2b-reporting/v1/identities/premium_listing/profiles/user%40example%2Ecom' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
