# Contacts

## Get All Contacts

```ruby
require 'uri'
require 'net/http'

url = URI("https://externalapi.reachlocal.com/api/contacts?gmaid=GMAID")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["accept"] = 'application/json'
request["authorization"] = 'Bearer OAUTH_ACCESS_TOKEN'

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://externalapi.reachlocal.com/api/contacts?gmaid=GMAID")
  .get()
  .addHeader("accept", "application/json")
  .addHeader("authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request GET \
  --url 'https://externalapi.reachlocal.com/api/contacts?gmaid=GMAID' \
  --header 'accept: application/json' \
  --header 'authorization: Bearer OAUTH_ACCESS_TOKEN'
```

> The above command returns JSON structured like this:

```json
[
    {
        "address1": "476 Sally Extensions",
        "city": "South Keely",
        "cm_contact_state_code": "none",
        "company": "Acme",
        "country": "United States Minor Outlying Islands",
        "email": "example.user1@example.com",
        "first_name": "Example",
        "last_name": "User1",
        "notes": "Possimus omnis laudantium qui. Cum numquam autem eius doloremque officia tempora. Voluptas cupiditate ratione dolor illum quidem. Magni corporis autem. Ducimus et nihil quae sint dolorem facilis quibusdam.",
        "phone_fax": null,
        "phone_home": "141-723-0803",
        "phone_mobile": "(659) 169-1441 x49696",
        "phone_work": "933.612.2269 x0341",
        "postal": "47696",
        "state": "Mississippi",
        "contact_id": "USA_401",
        "name": "User1, Example"
    },
    {
        "address1": "56440 Norbert Burg",
        "city": "Lake Lesly",
        "cm_contact_state_code": "none",
        "company": null,
        "country": null,
        "email": "example.user2@example.org",
        "first_name": "Example",
        "last_name": "User2",
        "notes": "Accusamus odio voluptatem aut optio culpa sed alias. Fugiat qui quas quis voluptas. Neque non aut veritatis repudiandae.",
        "phone_fax": null,
        "phone_home": "902-674-1712",
        "phone_mobile": "(897) 736-6456 x756",
        "phone_work": "(863) 452-5688",
        "postal": "59255",
        "state": "Virginia",
        "contact_id": "USA_411",
        "name": "User2, Example"
    }
]
```

This endpoint retrieves all contacts.

### HTTP Request

`GET https://externalapi.reachlocal.com/api/contacts`

### Query Parameters

Parameter | Required | Default | Description
--------- | -------- |-------- | -----------
gmaid | yes | none | The global master advertiser id (for example, USA_142687).
per_page | no | 500 | The number of records to display per page.
page | no | 1 | The page number of the paginated result set to return.  This parameter is optional, but if the page requested doesn’t exist in the result set defined by the other parameters an empty JSON array is returned.
updated_after | no | none | Specifies the lower bound for the earliest date and time when searching for contacts.  All contacts returned in the response will have been either created or updated after this datetime.  The format expected is ISO8601.

### Contact Response Body
The body of the API response will be a JSON array of contact objects.

Field Name | Datatype | Nullable | Description
---------- | -------- | -------- | -----------
contact_id | String | no | A string uniquely identifying this contact.
first_name | String | yes | The first name of the contact.
last_name | String | yes | The last name of the contact.
name | String | yes | The display name of this contact.
email | String | yes | The email address of the contact.
company |String | yes | The company name for this contact.
phone_home |String | yes | The home phone number for this contact.
phone_work |String | yes | The work phone number for this contact.
phone_mobile |String | yes | The mobile phone number for this contact.
phone_fax |String | yes | The fax phone number for this contact.
address1 |String | yes | The first address line for this contact.
city |String | yes | The city for this contact.
state |String | yes | The state for this contact.
postal |String | yes | The postal code for this contact.
country |String | yes | The country for this contact.
notes |String | yes | Free form text notes entered by end users for the contact.
cm_contact_state_code |String | no | The status of the contact.  Valid values are pending_contact, active_lead, client and none.

### Pagination Headers

In the event that there are more than one page of results, there will be a link header present in the HTTP response.  There will be multiple values for this header.  Each value is comprised of a URI and a link relation type (rel).

If there is only one page of results, this header will not be included in the response.

Not all link relation types will be present in all responses.  For example, the “first”  and “prev” link relation types will not be present on the first page of a result set and “last” and “next” will not be present on the last.

Link Relation Type | Interpretation of URI
------------------ | ---------------------
first | The URI of the first page of this result set
prev | The URI of the previous page of this result set.
next | The URI of the next page of this result set.
last | The URI of the last page of this result set.

## Create or Update Contact

```ruby
require 'uri'
require 'net/http'

url = URI("https://externalapi.qa.reachlocal.com/api/contacts")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["accept"] = 'application/json'
request["authorization"] = 'Bearer OAUTH_ACCESS_TOKEN'
request["content-type"] = 'application/json'
request.body = "{\"gmaid\": \"USA_142687\",\"contact\":{\"first_name\":\"Example\",\"last_name\":\"User\",     \"email\":\"example.user@example.com\",\"tags\":[\"apples\", \"oranges\"]}}"

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{\"gmaid\": \"USA_142687\",\"contact\":{\"first_name\":\"Example\",\"last_name\":\"User\",\"email\":\"example.user@example.com\",\"tags\":[\"apples\", \"oranges\"]}}");
Request request = new Request.Builder()
  .url("https://externalapi.qa.reachlocal.com/api/contacts")
  .post(body)
  .addHeader("accept", "application/json")
  .addHeader("authorization", "Bearer OAUTH_ACCESS_TOKEN")
  .addHeader("content-type", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request POST \
  --url https://externalapi.qa.reachlocal.com/api/contacts \
  --header 'accept: application/json' \
  --header 'authorization: Bearer OAUTH_ACCESS_TOKEN' \
  --header 'content-type: application/json' \
  --data '{"gmaid": "GMAID","contact":{"first_name":"Example","last_name":"User","email":"example.user@example.com","tags":["apples", "oranges"]}}'
```

> The above command returns JSON structured like this:

```json
{
    "cm_contact": {
        "address1": null,
        "city": null,
        "cm_contact_state_code": "none",
        "company": null,
        "country": null,
        "email": "example.user@example.com",
        "first_name": "Example",
        "last_name": "User",
        "notes": null,
        "phone_fax": null,
        "phone_home": null,
        "phone_mobile": null,
        "phone_work": null,
        "postal": null,
        "state": null,
        "name": "User, Example"
    }
}
```

This endpoint is used to create or update an existing contact.

### HTTP Request

`POST https://externalapi.reachlocal.com/api/contacts`

### Post Body Parameters

Parameter | Required | Description
--------- | -------- | -----------
gmaid | yes  | The global master advertiser id (for example, USA_142687).
contact | yes | A JSON hash representing the attributes for the contact.

The contact attributes must include at least one of the following fields: email, phone_home, phone_work or phone_mobile.

Contact Field | Description
--------- | -----------
first_name | The first name of the contact.
last_name | The last name of the contact.
name | The display name of this contact.
email | The email address of the contact.
company | The company name for this contact.
phone_home |The home phone number for this contact.
phone_work | The work phone number for this contact.
phone_mobile | The mobile phone number for this contact.
phone_fax | The fax phone number for this contact.
address1 | The first address line for this contact.
address2 | The second address line for this contact.
city | The city for this contact.
state | The state for this contact.
postal | The postal code for this contact.
country | The country for this contact.
notes | Free form text notes entered by end users for the contact.
status | The status field accepts one of the following exact values: new, prospect, customer or other.  If no status is present, the status field is empty, or if the value doesn't match, that contact status will be set to new.
tags | A JSON array of strings representing tags assigned to this contact.
