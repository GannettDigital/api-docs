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
|`match_params`|Yes (in first case)|JSON object with `name` and `state` keys to match on|
|`platform_id`|Yes (in second case)|Array which restricts the results to one or more specific advertiser with the given platform id  Valid platform ids are: `USA`, `CAN`, `AUS` and `GBR` |
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

#### If you use the match_params parameter, the ones below won't be considered from the API
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
    "global_master_advertiser_id": "USA_105669",
    "name": "Z - Brian Gerrard",
    "address": {
        "address1": "8550 Balboa Blvd. Suite 140",
        "address2": "",
        "city": "Northridge",
        "province": "CA",
        "postalCode": "91325",
        "country": "USA"
    },
    "contactInfo": {
        "phone1": {
            "phoneNumber": "8187142804",
            "countryCode": "1",
            "phoneType": "Local"
        },
        "phone2": null,
        "fax": "",
        "email": "brian.gerrard@reachlocal.com",
        "url": ""
    },
    "businessUser": null,
    "hipaa_advertiser": false,
    "active_state": 0,
    "business": {
        "id": 3760,
        "name": "ReachLocal Encino",
        "cobrand": 2488
    },
    "users": [
        {
            "email": "jim.gibson@reachlocal.com;rsm",
            "locale": "en-US",
            "privilege": "AGENCY_ADMIN",
            "bu_id": 177082,
            "business_id": 3760
        }
    ],
    "service_users": [
        {
            "email": "chris.waters@reachlocal.com",
            "bu_id": 394895,
            "platform": "USA",
            "is_primary": false,
            "gs_function": "Facebook Analyst"
        },
        {
            "email": "chris.waters@reachlocal.com",
            "bu_id": 394895,
            "platform": "USA",
            "is_primary": false,
            "gs_function": "Custom Solutions"
        }
    ],
    "prospective_advertisers": [
        {
            "id": 17,
            "gmaid": "USA_421",
            "business_category_id": 14,
            "business_sub_category_id": 142,
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
            "fax": 123456,
            "email": "ssddsdddsddsdddda@gmail.com",
            "url": "http://www.prospect-advertisers.com",
            "is_freemium": true,
            "primary_user_id": 8,
            "users": [
                {
                    "id": 8,
                    "email": "emailssd@gmail.com",
                    "first_name": "Slim",
                    "last_name": "Shaddy",
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
            ]
        }
    ]
}

```

|Field Name|Datatype|Description|
|---|---|---|
|global_master_advertiser_id|String|Identifier for advertiser|
|name|String|Name of the advertiser|
|address|Object|Address information of the advertiser|
|contactInfo|Object|The contact information of the advertiser|
|businessUser|String|The business user that the advertiser is connected to|
|hipaa_advertiser|bool|Is the advertiser hipaa protected|
|active_state|Number|**0: Advertiser not active.**<br>**1: Advertiser not active, but in grace period**<br>**2: Advertiser is active**|
|business|Object|Business information of the advertiser [Business object.](#businessobject)|
|users|Array|Array of the users associated with the advertiser [Users Array.](#usersarray)|
|service_users|Array|Array of the users associated with the advertiser [Service Users Array.](#serviceusersarray)|
|prospective_advertisers|Array|Array of the prospective advertisers associated with the advertiser [Prospective Advertisers Array.](#prospectiveadvertisersarray)|


<a name="businessobject"></a>
**Business object**

|Field Name|Datatype|Description|
|---|---|---|
|id|Integer|the id of the business in identity service|
|name|String|The name of the business|
|cobrand|Integer|The id of the cobrand|

<a name="usersarray"></a>
**Users Array**

|Field Name|Datatype|Description|
|---|---|---|
|email|String|email of the user|
|locale|String|The locale of the user|
|privilege|String|Users privilege|
|bu_id|String|The business user id of the user|
|business_id|String|The business id of the user|

<a name="serviceusersarray"></a>
**Service Users Array**

|Field Name|Datatype|Description|
|---|---|---|
|email|String|email of the service user|
|bu_id|String|The business user id of the service user|
|platform|String|The platform of the service user|
|is_primary|boolean|Is primary service user|
|gs_function|String|The gs function of the service user|

<a name="prospectiveadvertisersarray"></a>
**Prospective Advertisers Array**

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
|is_freemium|bool|if the prospective advertiser is in a freemium mode|
|primary_user_id|id|the primary user id|
|users|Integer|users, that the prospective advertiser is associated with [Prospective Advertisers Users Array.](#prospectiveadvertisersusersarray)|

<a name="prospectiveadvertisersarray"></a>
**Prospective Advertisers Users Array**

|Field Name|Datatype|Description|
|---|---|---|
|email|string|Email unique value of the user|
|first_name|string|The first name of the user|
|last_name|string|The last name of the user|
|platform_id|integer|The platform id for the user|
|bu_id|integer|Business user id|
|cc_id|integer|The legacy client center id value of the user|
|cc_role_id|integer|The legacy client center cc_role_id value of the user|
|cc_type|string|The legacy client center type value of the user|
|locale|string|Locale of the country the user is based in|
|profile_data|JSON|Meta data of the user|