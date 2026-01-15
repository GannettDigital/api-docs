## RentCafe Property Pet Policy
<a name="RentCafe Property Pet Policy"></a>

Returns property office pet policy.

### Resource Overview

| Method | URI Format |
|---|---|
| GET `index` | /property/petpolicy|

### Usage
Use GET to retrieve the property pet policy details.

### Examples:

### GET (index)

```
curl -L -g -X GET '/property/petpolicy' \
  -H 'Accept: */*' \
  -H 'Authorization: token 1b01Secret' \
  -H 'Content-Type: application/json'
```

**Response**

| Field Name | Datatype |
|---|---|
|errorCode| Integer |
|errorMessage| String |
|details| Array of details |

**Pet Policy**

| Field Name | Datatype | Description |
|---|---|---|
|petId| Integer | Rentcafe Pet Policy Id. Example : "petId": 1467115 |
|petPropertyId| Integer | Rentcafe property id. Example :"petPropertyId": 1087796 |
|petType| String | Cats allowed - 1,Dogs allowed - 2,PetFriendly - 3,NotAllowed - 4. Example : "petType": "2 |
|petTypeorder| Integer | Pet type order. Example : "petTypeorder": 2 |
|sComment| String | Pet policy related comment. Example : "sComment": "Big dogs only." |
|iMaxAllowed| String | Max pets allowed. Example : "iMaxAllowed": "1" |
|dDeposit| Integer | Pet deposit. Example : "dDeposit": 20 |
|dFee| Integer | Pet fee. Example "dFee": 10 |
|dRent| Integer | Pet rent. Example : "dRent": 15 |
|dWeight| Integer | Pet weight. Example : "dWeight": 150 |
|dFeeMax| Integer | Maximum pet fee. Example : "dFeeMax": 30 |
|dFeeMin| Integer | Minimum pet fee. Example : "dFeeMin": 30 |
|bPetCare| String | 0 - Pet care is not available , 1- Pet care is available. Example : "bPetCare": "0" |
|restrictions| String | Pet restrictions if any. Example "restrictions": "No breed restrictions!" |


#### Example Response

```javascript
{
  "errorCode": 200,
  "errorMessage": "string",
  "petPolicies": [
    {
      "petId": 0,
      "petPropertyId": 0,
      "petType": "string",
      "petTypeorder": 0,
      "sComment": "string",
      "iMaxAllowed": "string",
      "dDeposit": 0,
      "dFee": 0,
      "dRent": 0,
      "dWeight": 0,
      "dFeeMax": 0,
      "dFeeMin": 0,
      "bPetCare": "string",
      "restrictions": "string"
    }
  ]
}

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
