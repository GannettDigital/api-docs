## Identity Products
### Resource Overview

| Method | URI Format |
|---|---|
| GET | /v3/identities/products
#### GET Product(index)

Get all existing products.

|Field|Type|Description|
|---|---|---|
|product_code|string|The unique system identifier for a product|
|name|string|The name of the product|
|product_type|string|The type of the product|

example request:

```
curl -L -X GET 'https://data-connect-prod.gannettdigital.com/v3/identities/product \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN'
```

example successful response (HTTP status 200):
```
  "products": [
    {
      "product_code": "test_product",
      "name": "Test Name",
      "product_type": "test_type"
    },
    {
      "product_code": "test_product2",
      "name": "Test Name2",
      "product_type": "test_type2"
    }
  ]
}
```
#### Note
New products can be added via a ReachAnalytics Jira task ticket (assign tickets to Brian Roth).