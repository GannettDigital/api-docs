# Google Services 

## Resource Overview

| Methods | URI Format |
|---|---|
| GET | /client_reports/oauth/google/[gmaid] |
| POST | /client_reports/oauth/google |

Authorization on these methods is limited to services using a "trusted token".  Requests through gateways are not allowed.

## Resouce Details

### GET

Use GET to examine the account information for a given advertiser.  Note that tokens are not returned.

### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param | Required | Default | Description |
|---|---|---|---|
|service| no |--|Returns only credentials for that service. Allowed values are: `analytics` or `search_console`|

#### Example Local Dev Curl:

```
curl -L -X GET 'localhost:3001/client_reports/oauth/google/USA_130964?service=analytics' \
-H 'Authorization: token reachanalyticsreportingservicetoken' \
-H 'x-api-key: {{apigee_api_key}}'
```

#### Response

```
{
    "gmaid": "USA_130964",
    "service": "analytics",
    "view_id": "123954488",
    "view_name": "BuenaVista",
    "account_id": "79363368",
    "account_name": "MyAccount",
    "web_property_id": "UA-79363368-1",
    "web_property_name": "MyWebSite",
    "client_id": "123_xyz.googlecloud.com",
    "project_id": "rl-client-center",
    "site_url": "www.testsite.com",
    "created_at": "2020-04-08T16:21:59.000Z",
    "updated_at": "2020-07-22T20:55:49.000Z"
}
```

### POST

Use POST with a JSON payload to create/update Google service credentials for a given advertiser and given service. The values will be used to fetch the matching Google service data. When provided client_id and project_id must match values used to create access_token and refresh_token or attempts to refresh a token will fail.

### Parameters

| Parameter | Required | Description |
|---|---|---|
|`gmaid`|Yes|Creates/updates credentials for specified Global Master Advertiser ID|
|`access_token`|Yes|Creates/updates value. Value received from request to `https://oauth2.googleapis.com/token`|
|`refresh_token`|Yes|Creates/updates value. Value received from request to `https://oauth2.googleapis.com/token`|
|`service`|Yes|Creates/updates value. Allowed values: `analytics` or `search_console`. Default: `analytics`|
|`client_id`|No|Creates/updates value. Value found in Google Cloud Platform Console -> API & Services -> Credentials|
|`project_id`|No|Creates/updates value. Value found in Google Cloud Platform Console -> Dashboard -> Project Info|
|`site_url`|No|Creates/updates value. Required for `search_console` service. See [googe_site_urls](https://github.com/GannettDigital/api-docs/blob/master/source/includes/_google_site_urls.md)|
|`view_id`|No|Creates/updates value. Required for `analytics` service. Value found in Google Analytics UI at `https://analytics.google.com`|
|`view_name`|No| Creates/updates value.|
|`account_id`|No|Creates/updates value.|
|`account_name`|No|Creates/updates value.|
|`web_property_id`|No|Creates/updates value.|
|`web_property_name`|No|Creates/updates value.|


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
	"service": "analytics"
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
