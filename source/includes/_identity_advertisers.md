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

| Parameter | Required | Description |
|---|---|---|
|`platform_id`|Yes|Array which restricts the results to one or more specific advertiser with the given platform id  Valid platform ids are: `USA`, `CAN`, `AUS` and `GBR` |
|`gmaid`|No|Restrict results to one or more specific gmaid|
|`advertiser_id`|No|Restrict results to one or more specific advertiser with the given advertiser id|
|`business_id`|No|Restrict results to one or more specific advertiser with the given business id|
|`cobrand_id`|No|Restrict results to one or more specific advertiser with the given cobrand id. An ID used to uniquely identify a cobrand; given to a collection of of business or BID. This is an internal LOCALiQ data construct used for internal purposes|
|`page_size`|No|Restrict number of advertisers in result <br><b>Default value: 25</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 5000</b>|
|`active_state`|No|Array of active states that can include 0: Advertiser not active. 1: Advertiser not active, but in grace period. 2: Advertiser is active.|
|`advertiser_code`|No|Non-unique identifier. This is an internal LOCALiQ data construct used for internal purposes|
|`business_category`|No|LOCALiQ’s categorization of the client’s business e.g. Home & Home improvement, Real Estate, Automotive-For Sale etc|
|`business_sub_category`|No|LOCALiQ’s sub categorization within client’s business category. e.g. Real Estate -- Inspection, Real Estate -- Appraisers, Automobile Dealer (General - New), Automobile Dealer (General - Used) etc|
|`advertiser_name`|No|Restrict results to one or more specific advertiser with the given advertiser name|
|`business_name`|No|Restrict results to one or more specific advertiser with the given business name|

#### GET (index)

```
curl -L -g -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/advertisers?[query_params]' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

Response Description

| Field Name | Datatype | Nullable | Description |
|---|---|---|---|
|gmaid | String | no | The global master advertiser id of the advertiser. |
|name | String | no | The name of the advertiser |
|platform | String | no | The platform for the advertiser |
|advertiser_id | String | no |The advertiser_id for this advertiser.  Not necessarily the same as the numerical portion of the gmaid. |
|business_name | String | no | The business name of this advertiser. |
|business_id | String | no | The unique business id that this advertiser belongs to. |
|hipaa_protected | String | no | Is advertiser protected by hipaa |
|cobrand_id | String | no | An ID used to  uniquely identify a cobrand. |
|cobrand_name | String | no | Name given to a collection of of business or BID.  This is an internal LOCALiQ data construct used to aggregate like businesses e.g. partner, Gannett etc. |
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

```
curl -L -g -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/advertisers?platform_id[]=USA&business_id=15' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

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
            "business_id": 15,
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
            "business_id": 15,
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
            "business_id": 15,
            "hipaa_protected": false,
            "cobrand_id": 113213,
            "cobrand_name": "test",
            "active_state": 2
        }
    ]
}
```

```
curl -L -g -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/advertisers?platform_id[]=USA&active_state[]=0' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json' \
  -H 'x-api-key: SJNPPSecret'
```

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
            "business_id": 15,
            "hipaa_protected": false,
            "cobrand_id": 1123213,
            "cobrand_name": "test",
            "active_state": 0
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
