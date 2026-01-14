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
|---|---|---|---|
|errorCode| Integer |
|errorMessage| String |
|details| Array of details |

**Office Hours**

|petId| Integer |
|petPropertyId| Integer |
|petType| String |
|petTypeorder| Integer |
|sComment| String |
|iMaxAllowed| String |
|dDeposit| Integer |
|dFee| Integer |
|dRent| Integer |
|dWeight| Integer |
|dWeight| Integer |
|dFeeMax| Integer |
|dFeeMin| Integer |
|bPetCare| String |
|restrictions| String |


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
