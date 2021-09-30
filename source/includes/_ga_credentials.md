# Google Oauth Credentials

## Resource Overview

| Methods | URI Format |
|---|---|
| GET |  /client_reports/oauth/google/[gmaid] |
| POST |            /client_reports/oauth/google |

Authorization on these methods is limited to services using a "trusted token".  Requests through gateways are not allowed.

## Resouce Details

### GET

Use GET to examine the account information for a given advertiser.  Note that tokens are not returned.

#### Example Local Dev Curl:

```
curl -L -X GET 'localhost:3001/client_reports/oauth/google/USA_130964' \
-H 'Authorization: token reachanalyticsreportingservicetoken' \
-H 'x-api-key: {{apigee_api_key}}'
```

#### Response

```
{
    "gmaid": "USA_130964",
    "view_id": "123954488",
    "view_name": "BuenaVista",
    "account_id": "79363368",
    "account_name": "MyAccount",
    "web_property_id": "UA-79363368-1",
    "web_property_name": "MyWebSite",
    "client_id": "123_xyz.googlecloud.com",
    "project_id" "rl-client-center",
    "created_at": "2020-04-08T16:21:59.000Z",
    "updated_at": "2020-07-22T20:55:49.000Z"
}
```

### POST

Use POST with a JSON payload to create/update google oauth credentials for a given advertiser.  The tokens will be used to fetch the Google Analytics Report.  The JSON payload must include gmaid, access_token, refresh_token, and view_id.  Option parameters are account_id, web_property_id, client_id, project_id. If provided client_id, project_id must match values used to create access_tokens and refresh_tokens or attempts to refresh a token will fail.

#### Example Local Dev Curl:

```
curl --location --request POST 'localhost:3001/client_reports/oauth/google' \
--header 'Authorization: token reachanalyticsreportingservicetoken' \
--header 'x-api-key: {{apigee_api_key}}' \
--header 'Content-Type: application/json' \
--data-raw '{
	"gmaid": "USA_130964",
	"access_token": "ya29.a0Ae4lvC0phUA4OmUwfCdM98DIYxYBCNIIGeqrZE-pEGYmx2dpAfoUrlm0as510JLvRsnmsNqdQiBfPq-IyNY8AvVkiVLGET5BHWyQtAfbgQd0hvZzrVsIGLAOoudK4zPN8cwHB2DQ3FYXpZ3hLg1bpYAjAL4SNCeAJOF4",
	"refresh_token": "1//0fqqc3cav1rVRCgYIARAAGA8SNwF-L9IrDXqtVOxZuKAgQcJhxMBO2dLQNWFiZvz-88BiILLr8kk7ByaZzARH1hil_r6uDrUJ5X4",
	"account_id": "79363368",
	"account_name": "www.laurelsprings.com",
	"web_property_id": "UA-79363368-1",
	"web_property_name": "http://www.absinsulating.com",
	"view_id": "123954488",
	"view_name": "Filtered view www.absinsulating.com",
    "client_id": "123_xyz.googlecloud.com",
    "project_id": "rl-client-center"
}'
```

#### Response

200 and no body if everything is OK, or an error message if not.
