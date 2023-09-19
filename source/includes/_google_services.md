# Google API Services

## Resource Overview

| Methods | URI Format |
|---|---|
| GET | /client_reports/oauth/google/[gmaid] |
| POST | /client_reports/oauth/google |

Authorization on these methods is limited to services using a "trusted token".  Requests through gateways are not allowed.

## Resouce Details

### GET

Use GET to examine the configurations for a given advertiser.  Note that tokens are not returned.

#### Example Local Dev Curl:

```
curl -L -X GET 'localhost:3001/client_reports/oauth/google/USA_130964?service=analytics' \
-H 'Authorization: token reachanalyticsreportingservicetoken'
```

#### Response

```
{
    google_api_configurations:
    [
        {
            "gmaid": "USA_130964",
            "project_id": "rl-client-center",
            "client_id": "123_xyz.googlecloud.com",
            "view_id": "123954488",
            "view_name": "BuenaVista",
            "service_type": "ua",
            "account_id": "79363368",
            "account_name": "MyAccount",
            "web_property_id": "UA-79363368-1",
            "web_property_name": "MyWebSite",
            "site_url": null,
            "created_at": "2020-04-08T16:21:59.000Z",
            "updated_at": "2020-07-22T20:55:49.000Z"
        },
        {
            "gmaid": "USA_130964",
            "project_id": "client-center-284215",
            "client_id": "123_xyz.googlecloud.com",
            "service_type": "ga4",
            "view_id": null,
            "view_name": null,
            "account_id": "190007778",
            "account_name": "Client Center (GA4)",
            "web_property_id": null,
            "web_property_name": null,
            "ga4_property_id": "262580323",
            "ga4_property_name": "Client Center (QA)",
            "site_url": null,
            "created_at": "2023-09-13T18:07:15.000Z",
            "updated_at": "2023-09-18T19:35:16.000Z"
        },
        {
            "gmaid": "USA_130964",
            "service": "search_console",
            "view_id": null,
            "view_name": null,
            "account_id": "79363368",
            "account_name": null,
            "web_property_id": null,
            "web_property_name": null,
            "client_id": "456_xyz.googlecloud.com",
            "project_id": "rl-cc-search-console",
            "site_url": "www.testsite.com",
            "created_at": "2020-04-08T16:30:59.000Z",
            "updated_at": "2020-04-08T16:30:59.000Z",
        }
    ]
{
```
### POST

Use POST with a JSON payload to create/update Google service credentials for a given advertiser. The values will be used when call are made to the  Google API report endpoint.

### Parameters

| Parameter | Required | Description |
|---|---|---|
|`gmaid`|Yes|Creates/updates configuration for specified Global Master Advertiser ID|
|`access_token`|Yes|Creates/updates value. Value received from request to `https://oauth2.googleapis.com/token`|
|`refresh_token`|Yes|Creates/updates value. Value received from request to `https://oauth2.googleapis.com/token`|
|`service_type`|Yes|Creates/updates value. Value received from request to `https://oauth2.googleapis.com/service_type`|
|`client_id`|No|Creates/updates value. Value found in Google Cloud Platform Console -> API & Services -> Credentials, see WARNING below|
|`project_id`|No|Creates/updates value. Value found in Google Cloud Platform Console -> Dashboard -> Project Info|
|`site_url`|No|Creates/updates value. Required for `search_console` report. See [googe_site_urls](https://github.com/GannettDigital/api-docs/blob/master/source/includes/_google_site_urls.md)|
|`view_id`|No|Creates/updates value. Required for `analytics` report. Value found in Google Analytics UI at `https://analytics.google.com`|
|`view_name`|No| Creates/updates value.|
|`account_id`|No|Creates/updates value.|
|`account_name`|No|Creates/updates value.|
|`web_property_id`|No|Creates/updates value.|
|`web_property_name`|No|Creates/updates value.|
|`ga4_property_id`|No|Creates/updates value.|
|`ga4_property_name`|No|Creates/updates value.|

**WARNING:** If a `client_id` value is not included the call will create/updated a default configuration for project_id: `client-center-284215` that can only be used to call: `/client_reporting/google_analytics`. Therefore if you intend the configuration to be used to call another report (Ex. `/client_reporting/google_search_console`) the `client_id` should be treated as a `required` param. When provided `client_id` must match value used to create access_token and refresh_token or attempts to refresh a token will fail.

**Special Case: Neigborly Google Analytics**
For each Neighborly brand only the last configuration created (by any gmaid within that brand) is used when making a call to `google_analytics`
#### Example Local Dev Curl:

```
curl --location --request POST 'localhost:3001/client_reports/oauth/google' \
--header 'Authorization: token reachanalyticsreportingservicetoken' \
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
Note that when no configurations are found in the database, expect a reponseas
``````
[
    {
        "name": "google_api_configurations",
        "message": "No configs found for USA_130964"
    }
]
```