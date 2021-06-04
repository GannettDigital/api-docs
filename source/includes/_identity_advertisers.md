### **Advertisers**

## Advertisers API

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /v3/identities/advertisers? |
| GET `show` | /v3/identities/advertisers/{gmaid} |

### Usage
Use GET to retrieve advertisers that match the query params.

### Parameters

When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Default | Description |
|---|---|---|---|
|`match_params`|No| - | JSON object with `name` and `state` keys to match on|
|`gmaid`| no |Restrict results to one or more specific gmaid|
|`advertiser_id`|No|Restrict results to one or more specific advertiser with the given advertiser id|
|`business_id`|No|Restrict results to one or more specific advertiser with the given business id|
|`cobrand_id`|No|Restrict results to one or more specific advertiser with the given cobrand id|
|`page_size`|No|Restrict number of keywords in result <br><b>Default value: 25</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 5000</b>|
|`active_state`|No|Specifies what column to sort by.  Valid active states are: `ACTIVE`, `INACTIVE` and `ALL` <br><b>Default value: `ALL`</b>|
|`advertiser_code`|No|Restrict results to one or more specific advertiser with the given advertiser code|

### Examples:

### GET (index)

```
curl -L -g -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/advertisers?[query_params]' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

> Response Description if query_params contains match_params

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|gmaid | String | no | gmaid of potenial matching advertiser|
|name | String | no | name of potenial matching advertiser|
|address1 | String | no | address of potenial matching advertiser|
|address2 | String | no | address of potenial matching advertiser|
|city | String | no | city of potenial matching advertiser|
|state | String | no | state of potenial matching advertiser|
|zip | String | no | zip code of potenial matching advertiser|
|country | String | no | country code of potenial matching advertiser|
|active_state | Integer | no | Active state of advertiser (0 = inactive, 1 = expiring soon, 2 = active)|

#### Example Response

```javascript
{
    "advertisers": [
        {
            "gmaid": "USA_133964",
            "name": "Red Lion Insulation - Jackson (BN)",
            "address1": "141 N. County Line Rd",
            "address2": "",
            "city": "Jackson",
            "state": "NJ",
            "zip": "08527",
            "country": "USA",
            "active_state": 2
        },
        {
            "gmaid": "USA_133965",
            "name": "Red Lion Insulation - Barrington (BN)",
            "address1": "66 E Gloucester Pike",
            "address2": "",
            "city": "Barrington",
            "state": "NJ",
            "zip": "08007",
            "country": "USA",
            "active_state": 1
        },
        {
            "gmaid": "USA_133967",
            "name": "Red Lion Insulation - Piscataway (BN)",
            "address1": "42 Colonial Dr",
            "address2": "",
            "city": "Piscataway",
            "state": "NJ",
            "zip": "08854",
            "country": "USA",
            "active_state": 0
        },
        {
            "gmaid": "USA_149837",
            "name": "Red Lion Insulation - Farmingdale",
            "address1": "5142 W Hurley Pond Rd",
            "address2": "",
            "city": "Farmingdale",
            "state": "NJ",
            "zip": "07727",
            "country": "USA",
            "active_state": 2
        }
    ]
}
```

> Response Description if query_params does not contain match_params

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|gmaid | String | no | gmaid of advertiser|
|name | String | no | name of advertiser|
|platform | String | no | platform of advertiser|
|advertiser_id | String | no | id advertiser|
|business_name | String | no | business name of advertiser|
|business_id | String | no | state of potenial matching advertiser|
|hipaa_protected | String | no | Is advertiser protected by hipaa |
|cobrand_id | String | no | Cobrand ID of advertiser |
|cobrand_name | String | no | Cobrand Name of advertiser |
|active_state | Integer | no | Active state of advertiser (0 = inactive, 1 = expiring soon, 2 = active)|

#### Example Response

```javascript
{
    "page": 1,
    "page_size": 1000,
    "advertisers_count": 1000,
    "advertisers": [
        {
            "advertiser_id": 1,
            "platform": "USA",
            "gmaid": "USA_1",
            "name": "Alive",
            "business_name": "test",
            "business_id": 2322,
            "hipaa_protected": false,
            "cobrand_id": 1123213,
            "cobrand_name": "test",
            "active_state": 0
        },
        {
            "advertiser_id": 3,
            "platform": "USA",
            "gmaid": "USA_3",
            "name": "Alive",
            "business_name": "test",
            "business_id": 232,
            "hipaa_protected": false,
            "cobrand_id": 112313,
            "cobrand_name": "test",
            "active_state": 1
        },
        {
            "advertiser_id": 2,
            "platform": "USA",
            "gmaid": "USA_2",
            "name": "Alive",
            "business_name": "test",
            "business_id": 222,
            "hipaa_protected": false,
            "cobrand_id": 113213,
            "cobrand_name": "test",
            "active_state": 2
        }
    ]
}
```

### Resource Overview&nbsp;&nbsp;&nbsp;

|Method|URI Format|
|---|---|
|GET|/v3/identities/advertisers/[gmaid]|

Use GET to retrieve information for the individual advertiser through gmaid.

This API should be used to retrieve information about an advertiser, i.e. name address etc. This API can also be used to check the active state of an advertiser for the purposes of retrieving metrics through our other APIs. An advertiser is considered inactive if they have had no active campaigns for 31 days. If an advertiser is inactive, the reporting APIs will error code 403  https://doc.api.localiq.com/?shell#error-codes


### GET (show)
### Response Data Details&nbsp;&nbsp;&nbsp;

> Retrieve data for a specific advertiser

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/advertisers/TEST_1' \
-H 'Accept: application/json' \
-H 'Authorization: TOKEN' \
-H 'x-api-key: APIGEE_KEY'
```

> Example Response

```json
{
    "gmaid": "TEST_1",
    "name": "John Smith's Pizza",
    "address1": "44421 S. 132th St.",
    "address2": "",
    "city": "Los Angeles",
    "state": "CA",
    "zip": "12345",
    "country": "USA",
    "active_state": 2,
    "advertiser_id": 123456,
    "locale": "en-US"
}

```

|Field Name|Datatype|Description|
|---|---|---|
|gmaid|String|Identifier for advertiser|
|name|String|Name of the advertiser|
|address1|String|Address where the advertiser is based in|
|address2|String|Address where the advertiser is based in|
|city|String|City where the advertiser is based in|
|state|String|State where the advertiser is based in|
|zip|String|Zip code of the advertiser|
|country|String|The country the advertiser is based in|
|active_state|Number|**0: Advertiser not active.**<br>**1: Advertiser not active, but in grace period**<br>**2: Advertiser is active**|
|advertiser_id|Integer|Advertiser ID. An ID assigned to a client at the time of sale.|
|locale|String|locale of the country the advertiser is based in|
