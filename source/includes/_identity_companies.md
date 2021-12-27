## Identity Companies

### Resource Overview

| Method | URI Format |
|---|---|
| GET | /v3/identities/companies
| GET | /v3/identities/companies/[id]
| POST | /v3/identities/companies
| PUT | /v3/identities/companies/[id]
| DELETE | /v3/identities/companies/[id]
| POST | /v3/identities/companies/[id]/login_users
| PUT | /v3/identities/companies/[id]/login_users/[id]
| DELETE | /v3/identities/companies/[id]/login_users/[id]
| GET | /v3/identities/companies/[id]/products
| GET | /v3/identities/companies/[id]/products[product_code]
| POST | /v3/identities/companies/[id]/products
| PUT | /v3/identities/companies/[id]/products/[product_code]
| DELETE | /v3/identities/companies/[id]/products/[product_code]
### Resource Detail

#### GET Company(index)

When using the GET index method, the results will be filtered using these parameters:

| Parameter | Required | Description |
|---|---|---|
|`page_size`|No|Restrict number of companies in the result <br><b>Default value: 100</b> |
|`page`|No|Specifies which page of results to return <br><b>Default value: 1</b>|
|`gmaid`|No|Specifies a gmaid that will be used for searching a companies|
|`email`|No|Specifies a email that will be used for searching a companies|
|`url`|No|Specifies a url that will be used for searching a companies|
|`login_user_id`|No|Specifies a login user id, based on which a search of a companies wil be performed|
|`login_user_email`|No|Specifies a login user email, based on which a search of a companies wil be performed|

Get an existing company.

|Field|Type|Description|
|---|---|---|
|id|integer|The maid of company|
|gmaid|string|The global master_advertiser_id of the company|
|business_category_id|integer|The business category id of the advertiser|
|business_sub_category_id|integer|The business sub category id of the advertiser|
|name|string|The name of the company|
|address1|string|The first address of the company|
|address2|string|The second address of the company|
|city|string|The city of the advertiser|
|province|string|The province of the advertiser|
|postal_code|integer|the postal code of the advertiser|
|country|string|The country of the advertiser|
|phone_number|string|The phone number of the advertiser|
|phone_type|string|The phone type of the advertiser|
|phone_country_code|string|The phone country code of the advertiser|
|fax|integer|fax address of the company|
|email|string|email address of the company|
|url|string|url address of the company|
|login_users|Array|Array of login_users, that the company is associated with|

example request:

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/companies \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
```

example success response (HTTP status 2xx):

```
{
    "id": 8,
    "gmaid: "USA_132",
    "business_category_id": 14,
    "business_sub_category_id": 142,
    "name": "Company",
    "address1": "Old str 10",
    "address2": "Old str 11",
    "city": "Chicago",
    "province": "Chicago",
    "postal_code": 2312,
    "country": "USA",
    "phone_number": "+123456",
    "phone_type": "type",
    "phone_country_code": "+123",
    "fax": "123456",
    "email": "email@gmail.com",
    "url": "http://www.some_company.com",
    "is_freemium": true,
    "primary_login_user_id": 1,
    "login_users": [
        {
            "id": 1,
            "email": "CODsoap@gmail.com",
            "first_name": "Slims",
            "last_name": "Shady",
            "bu_id": 1,
            "locale": "EN",
            "profile_data": null
        }
    ]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### GET Company(show)

Get an existing company.

|Field|Type|Description|
|---|---|---|
|id|integer|The maid of company|
|gmaid|string|The global master_advertiser_id of the company|
|business_category_id|integer|The business category id of the advertiser|
|business_sub_category_id|integer|The business sub category id of the advertiser|
|name|string|The name of the company|
|address1|string|The first address of the company|
|address2|string|The second address of the company|
|city|string|The city of the advertiser|
|province|string|The province of the advertiser|
|postal_code|integer|the postal code of the advertiser|
|country|string|The country of the advertiser|
|phone_number|string|The phone number of the advertiser|
|phone_type|string|The phone type of the advertiser|
|phone_country_code|string|The phone country code of the advertiser|
|fax|integer|fax address of the company|
|email|string|email address of the company|
|url|string|url address of the company|
|login_users|Array|Array of login_users, that the company is associated with|
|products|Array|Array of this companies products|

example request:

```
curl -L -X GET 'https://api.gcion.com/apgb2b-reporting/v3/identities/companies/8 \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
```

example success response (HTTP status 2xx):

```
{
    "id": 8,
    "gmaid: "USA_132",
    "business_category_id": 14,
    "business_sub_category_id": 142,
    "name": "Company",
    "address1": "Old str 10",
    "address2": "Old str 11",
    "city": "Chicago",
    "province": "Chicago",
    "postal_code": 2312,
    "country": "USA",
    "phone_number": "+123456",
    "phone_type": "type",
    "phone_country_code": "+123",
    "fax": "123456",
    "email": "email@gmail.com",
    "url": "http://www.some_company.com",
    "is_freemium": true,
    "primary_login_user_id": 1,
    "login_users": [
        {
            "id": 1,
            "email": "CODsoap@gmail.com",
            "first_name": "Slims",
            "last_name": "Shady",
            "bu_id": 1,
            "locale": "EN",
            "profile_data": null
        }
    ],
    "products": [
        {
            "product_code": "test_product1",
            "product_name": "Test Product1",
            "product_type": "test",
            "created_at": "2021-11-18T15:41:41.000Z",
            "updated_at": "2021-11-18T15:41:41.000Z",
            "external_id": "123",
            "origin": "local",
            "active": true,
            "details": {
                "color":"pink",
                "flavor":"watermelon"
            }
        }
    ]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### POST Company

Create a company.

|Parameter|Type|Required|Description|
|---|---|---|---|
|gmaid|string|No|The global master_advertiser_id of the company|
|business_category_id|integer|No|The business category id of the advertiser|
|business_sub_category_id|integer|No|The business sub category id of the advertiser|
|name|string|No|The name of the company|
|address1|string|No|The first address of the company|
|address2|string|No|The second address of the company|
|city|string|No|The city of the advertiser|
|province|string|No|The province of the advertiser|
|postal_code|integer|No|the postal code of the advertiser|
|country|string|No|The country of the advertiser|
|phone_number|string|No|The phone number of the advertiser|
|phone_type|string|No|The phone type of the advertiser|
|phone_country_code|string|No|The phone country code of the advertiser|
|fax|integer|No|fax address of the company|
|email|string|Yes|email address of the company|
|url|string|Yes|url address of the company|
|login_user_id|Integer|Yes|An id of a login user, that the company is associated with|

example request:

```
curl -L -X POST 'https://api.gcion.com/apgb2b-reporting/v3/identities/companies' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'Content-Type: application/json' \
--data-raw '   "company": {
        "gmaid": "USA_132",
        "business_category_id": 14,
        "business_sub_category_id": 142,
        "name": "Company",
        "address1": "Old str 10",
        "address2": "Old str 11",
        "city": "Chicago",
        "province": "Chicago",
        "postal_code": 2312,
        "country": "USA",
        "phone_number": "+123456",
        "phone_type": "type",
        "phone_country_code": "+123",
        "fax": "123456",
        "email": "email@gmail.com",
        "url": "http://www.some_company.com",
        "login_user_id": 1
    }'
```

example success response (HTTP status 2xx):

```
{
    "id": 14,
    "gmaid": "USA_132",
    "business_category_id": 14,
    "business_sub_category_id": 142,
    "name": "Company",
    "address1": "Old str 10",
    "address2": "Old str 11",
    "city": "Chicago",
    "province": "Chicago",
    "postal_code": 2312,
    "country": "USA",
    "phone_number": "+123456",
    "phone_type": "type",
    "phone_country_code": "+123",
    "fax": "123456",
    "email": "email@gmail.com",
    "url": "http://www.some_company.com",
    "is_freemium": true,
    "primary_user_id": 1,
    "login_users": [
        {
            "id": 1,
            "email": "CODsoap@gmail.com",
            "first_name": "Slims",
            "last_name": "Shady",
            "bu_id": 1,
            "locale": "EN",
            "profile_data": null
        }
    ],
    "product":[]
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### PUT Company

Update a company.

|Parameter|Type|Required|Description|
|---|---|---|---|
|gmaid|string|No|The global master_advertiser_id of the company|
|business_category_id|integer|No|The business category id of the advertiser|
|business_sub_category_id|integer|No|The business sub category id of the advertiser|
|name|string|No|The name of the company|
|address1|string|No|The first address of the company|
|address2|string|No|The second address of the company|
|city|string|No|The city of the advertiser|
|province|string|No|The province of the advertiser|
|postal_code|integer|No|the postal code of the advertiser|
|country|string|No|The country of the advertiser|
|phone_number|string|No|The phone number of the advertiser|
|phone_type|string|No|The phone type of the advertiser|
|phone_country_code|string|No|The phone country code of the advertiser|
|fax|integer|No|fax address of the company|
|email|string|No|email address of the company|
|url|string|No|url address of the company|
|login_user_id|Integer|No|An id of a login user, that the company is associated with|

example request:

```
curl -L -X PUT 'https://api.gcion.com/apgb2b-reporting/v3/identities/companies/12' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'Content-Type: application/json' \
--data-raw '{
        "name": "Other Company",
    }'
```

example success response (HTTP status 2xx):

```
{
    "id": 14,
    "gmaid": "USA_132",
    "business_category_id": 14,
    "business_sub_category_id": 142,
    "name": "Other Company",
    "address1": "Old str 10",
    "address2": "Old str 11",
    "city": "Chicago",
    "province": "Chicago",
    "postal_code": 2312,
    "country": "USA",
    "phone_number": "+123456",
    "phone_type": "type",
    "phone_country_code": "+123",
    "fax": "123456",
    "email": "email@gmail.com",
    "url": "http://www.some_company.com",
    "is_freemium": true,
    "primary_login_user_id": 1,
    "login_users": [
        {
            "id": 1,
            "email": "CODsoap@gmail.com",
            "first_name": "Slims",
            "last_name": "Shady",
            "bu_id": 1,
            "locale": "EN",
            "profile_data": null
        }
    ],
    "products": []
}
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### DELETE Company

Delete a company.

example request:

```
curl -L -X DELETE 'https://api.gcion.com/apgb2b-reporting/v3/identities/companies/1' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
```

Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.


#### POST Company user

Create a company login user.

|Parameter|Type|Required|Description|
|---|---|---|---|
|login_user_id|Integer|Yes|An id of a login user, that the company is associated with|

example request:

```
curl -L -X POST 'https://api.gcion.com/apgb2b-reporting/v3/identities/companies/1/login_users' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'Content-Type: application/json' \
--data-raw '{
        "login_user_id": 1
    }'
```
Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### PUT Company login user

UPDATE a company login user.

|Parameter|Type|Required|Description|
|---|---|---|---|
|login_user_id|Integer|YES|An id of a login user, that the company is associated with|
|company_id|Integer|YES|An id of an company, that the login user is associated with|
|is_primary|Bool|No|Field which shows, if the login user is a primary one|

example request:

```
curl -L -X PUT 'https://api.gcion.com/apgb2b-reporting/v3/identities/companies/1/login_users/1' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
-H 'Content-Type: application/json' \
--data-raw '   "company_login_user": {
        "is_primary": true
    }'
```
Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.


#### DELETE Company User

Delete an existing Company user.

example request:

```
curl -L -X DELETE 'https://api.gcion.com/apgb2b-reporting/v3/identities/companies/1/login_users/1' \
-H 'Accept: application/json' \
-H 'Authorization: TRUSTED_TOKEN' \
```

Upon a successful request (HTTP status 2xx), the response body will be empty.

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### GET Company Product(index)

Get all products for existing company.

|Field|Type|Description|
|---|---|---|
|company_products|array|Array of all company products|

example request:

```
curl --location --request GET 'https://data-connect-pre-production.gannettdigital.com/v3/identities/companies/4/products' \
--header 'Authorization: TRUSTED_TOKEN' \
```

example success response (HTTP status 2xx):

```
{
  "company_products": [
    {
      "company_id": 4,
      "product_code": "test_product",
      "product_name": "Test Name",
      "product_type": "test_type",
      "external_id": "123",
      "origin": "local",
      "active": true,
      "details": {
        "color":"pink",
        "flavor":"watermelon"
      }
    },
    {
      "company_id": 4,
      "product_code": "test_product2",
      "product_name": "Test Product2",
      "product_type": "test",
      "external_id": "123",
      "origin": "local",
      "active": false,
      "details": null
    }
  ]
}
```
Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### GET Company Product(show)

Get company product by product_code.

|Field|Type|Description|
|---|---|---|
|company_id|integer|The maid of company|
|product_code|string|The unique identifier of the product|
|product_name|string|The name of the product|
|product_type|string|The type of the product|
|external_id|string|The external id of the product|
|origin|string|The origin of the product|
|active|boolean|Active status of product|
|details|json|A collection of key value pairs specific to this company's instance of this product|

example request:

```
curl --location --request GET 'https://data-connect-pre-production.gannettdigital.com/v3/identities/companies/4/products/test_product' \
--header 'Authorization: TRUSTED_TOKEN' \
```

example success response (HTTP status 2xx):

```
{
  "company_id": 4,
  "product_code": "test_product",
  "product_name": "Test Name",
  "product_type": "test_type",
  "external_id": "123",
  "origin": "local",
  "active": true,
  "details": {
    "color":"pink",
    "flavor":"watermelon"
  }
}
```
Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
#### POST Company Product

Create a company product.

|Parameter|Type|Required|Description|
|---|---|---|---|
|product_code|string|yes|The unique identifier of a product|
|active|boolean|yes|Active status of product|
|external_id|string|no|The external id of the product|
|origin|string|no|The origin of the product|
|details|json|no|A collection of key value pairs specific to this company's instance of this product|

example request:

```
curl --location --request POST 'https://data-connect-pre-production.gannettdigital.com/v3/identities/companies/4/products' \
--header 'Authorization: TRUSTED_TOKEN' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data-raw '{
   "product_code":"test_product2",
   "active":true,
   "origin":"local",
   "external_id":"123",
   "details": {
       "color":"pink",
       "flavor":"watermelon"
       }
}'
```

Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.

#### PUT Company Product

UPDATE a company product.

|Parameter|Type|Required|Description|
|---|---|---|---|
|external_id|string|no|The external id of the product|
|origin|string|no|The origin of the product|
|active|boolean|no|Active status of product|
|details|json|no|A collection of key value pairs specific to this company's instance of this product|

example request:

```
curl --location --request PUT 'https://data-connect-pre-production.gannettdigital.com/v3/identities/companies/1/products/test_product' \
--header 'Authorization: TRUSTED_TOKEN' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data-raw '{
   "active":false,
   "details": {
        "color":"pink",
        "flavor":"watermelon"
    }
}'
```
Error responses will have an appropriate 4xx HTTP response code along with a JSON body indicating what went wrong.
#### DELETE Company Product

Delete an existing company product.

example request:

```
curl --location --request DELETE 'https://data-connect-pre-production.gannettdigital.com/v3/identities/companies/4/products/test_product' \
--header 'Authorization: TRUSTED_TOKEN' \
```
Upon a successful request (HTTP status 2xx), the response body will be empty.
