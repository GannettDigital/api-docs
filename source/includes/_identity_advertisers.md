### **Advertisers**

### Resource Overview&nbsp;&nbsp;&nbsp;

|Method|URI Format|
|---|---|
|GET|/v3/identities/advertisers/[gmaid]|

Use GET to retrieve information for the individual advertiser through gmaid.

This API should be used to retrieve information about an advertiser, i.e. name address etc. This API can also be used to check the active state of an advertiser for the purposes of retrieving metrics through our other APIs. An advertiser is considered inactive if they have had no active campaigns for 31 days. If an advertiser is inactive, the reporting APIs will error code 403  https://reachlocal.github.io/api-docs/?shell#error-codes


### Response Data Details&nbsp;&nbsp;&nbsp;

> Retrieve data for a specific advertiser

```
curl -H "Authorization: Bearer OAUTH_ACCESS_TOKEN \
https://api.reachlocalservices.com/v3/identites/advertisers/TEST_1"
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
