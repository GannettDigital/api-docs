### **Advertisers**

### Resource Overview&nbsp;&nbsp;&nbsp;

|Method|URI Format|
|---|---|
|GET|/v3/identities/advertisers/[gmaid]|

Use GET to retrieve information for the individual advertiser through gmaid.

The data returned will include google only totals for impressions, clicks, click-through-rate (CTR), media_cost, keywords, and average position.  It will also show breakdowns per keyword for clicks, media cost, impressions, average position, first page cost-per-click (CPC) and top page cost-per-click.  Data will be returned in pages, controlled by the parameters page and page_size.  The first page is page 1.  Default values of 1 and 15 will be used if not specified.  Data is sorted in alphabetical order by keyword.


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
|active_state|Integer|The identifier for the state of the advertiser|
|advertiser_id|Integer|The identifier for advertiser|
|locale|String|locale of the country the advertiser is based in|
