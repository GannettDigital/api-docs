### Custom Webhook

**Register via API**

**Webhook option:** We also have a Webhook to receive contacts in real time as they are recorded in the LOCALiQ platform. Our endpoint enables registration for webhook callbacks when new contacts or contact interactions occur. It requires the following parameters for a successful response: GMAID (advertiser ID).

**Zapier App:** The contact webhook is available as an integration on the Zapier marketplace. https://zapier.com/apps/localiq/integrations


```ruby
require 'uri'
require 'net/http'

url = URI("https://api.localiqservices.com/crm/webhooks?global_master_advertiser_id=TEST_1")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["Authorization"] = 'OAUTH_ACCESS_TOKEN'
request["Content-Type"] = 'application/json'
request.body = "{ \"event_type\": \"new_contact\", \"url\": \"https://my.webhook.site/new_contact\", \"authorization\": \"token jokin\" }"

response = http.request(request)
puts response.read_body
```

```java
OOkHttpClient client = new OkHttpClient();

MediaType mediaType = MediaType.parse("application/json");
RequestBody body = RequestBody.create(mediaType, "{ \"event_type\": \"new_contact\", \"url\": \"https://my.webhook.site/new_contact\", \"authorization\": \"token jokin\" }");
Request request = new Request.Builder()
  .url("https://api.localiqservices.com/crm/webhooks?global_master_advertiser_id=TEST_1")
  .post(body)
  .addHeader("Authorization", "OAUTH_ACCESS_TOKEN")
  .addHeader("Content-Type", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request POST \
  --url 'https://api.localiqservices.com/crm/webhooks?global_master_advertiser_id=TEST_1' \
  --header 'Authorization: OAUTH_ACCESS_TOKEN' \
  --header 'Content-Type: application/json' \
  --data '{ "event_type": "new_contact", "url": "https://my.webhook.site/9995ad74-3c32-4e6c-aa8f-25da0fd419d9/new_contact", "authorization": "token jokin" }'
```

> The above command returns JSON structured like this:

```json
{
    "id": "84+TEST_1"
}
```

This ID will be needed in the event the user chooses to de-register the webhook.

**Resource Overview**

`POST https://api.localiqservices.com/crm/webhooks`

**Parameters**

Parameter | Required | Description
--------- | -------- |-------- | -----------
global\_master\_advertiser\_id | yes | The global master advertiser id (for example, TEST_1).

**Payload**

Key | Description
--------- | -------- |-------- | -----------
event_type | We support both **new_contact** and **new_lead** as event types.  When event_type is new_contact, the registered webhook is created for new lead for a new contact.  When the event_type is new_lead, the registered webhook is created for a new lead for an existing contact.
url | Endpoint Webhook should POST data to
authorization | Authorization for Endpoint Webhook POSTs data to


**Response Data Details**
The body of the API response will the id of the webhook.

**MetaData**

Field Name | Description
---------- | -----------
id | identifier of the webhook registration.


**Deregister via API**

This endpoint De-registers a webhook created using the above register webhook method.  The ID returned by the register method is used to de-register the webhook.

```ruby
require 'uri'
require 'net/http'

url = URI("https://api.localiqservices.com/crm/webhooks/84+TEST_1")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Delete.new(url)
request["Authorization"] = 'OAUTH_ACCESS_TOKEN'
request["Content-Type"] = 'application/json'

response = http.request(request)
puts response.read_body
```

```java
OkHttpClient client = new OkHttpClient();

Request request = new Request.Builder()
  .url("https://api.localiqservices.com/crm/webhooks/84+TEST_1")
  .delete(null)
  .addHeader("Authorization", "OAUTH_ACCESS_TOKEN")
  .addHeader("Content-Type", "application/json")
  .build();

Response response = client.newCall(request).execute();
```

```shell
curl --request DELETE \
  --url 'https://api.localiqservices.com/crm/webhooks/84+TEST_1' \
  --header 'Authorization: OAUTH_ACCESS_TOKEN' \
  --header 'Content-Type: application/json'
```

> The above command returns JSON structured like this:

```json
{
    "id": "84+TEST_1"
}
```

**Resource&nbsp;Overview**

`DELETE https://api.localiqservices.com/crm/webhooks/[id]`

**Response&nbsp;Data Details**

A response status code of 200 indicates that the webhook was successfully de-registered.
A response status code of 404 indicates that the webhook ID was not found.

The body of the API response will be the id of the webhook that was deleted.

**MetaData**

Field Name | Description
---------- | -----------
id | identifier of the webhook registration.

### Webhook Payload

The lead event that triggered the webhook will be sent to the specified payload URL as an HTTP POST with a content type of application/json.

**Lead Object**

Field | Type | Description
--------- | -------- |-------- |--------
id | Integer | An integer uniquely identifying this lead event.
contact_id | Integer | An integer uniquely identifying the contact to which this lead belongs.
campaign_id | Integer | An integer uniquely identifying the campaign that this lead is attributed to.
campaign_name |  String | The name of the campaign that this lead is attributed to.
archived_at | Datetime | The date and time which this lead event was archived.<br>**The field is nullable**
created_at | Datetime | The date and time which this lead event was created.
important_at | Datetime | The date and time which this lead event was marked important.<br>**The field is nullable**
occured_at | Datetime | The date and time which this lead event occurred. This will usually be different than the date that the lead event was created.
read_at | Datetime | The date and time which this lead event was marked read.<br>**The field is nullable**
display_name | String | The display name of the lead event.
event_type| String | The type of the lead event. Valid values are **chat**, **call** and **form**.
status | String | The status of the associated contact.  Valid values are **pending_contact**, **active_lead**, **client** and **none**.<br>**The field is nullable**
notes | String | Free form text notes entered by end users onto the lead event.<br>**The field is nullable**
tags | Array of String | When present represents a collection of tags use for applying ad-hoc categorization and collation of lead events.<br>**The field is nullable**
contact | Contact | The contact to which this lead event belongs.
chat | Chat | The lead event payload will include a single **chat**, **call** or **form** object.  The object type will match the event_type field.
call | Call | The lead event payload will include a single **chat**, **call** or **form** object.  The object type will match the event_type field.
form | Form | The lead event payload will include a single **chat**, **call** or **form** object.  The object type will match the event_type field.

**Contact Object**

Field | Type | Description
--------- | -------- |-------- |--------
id | Integer |An integer uniquely identifying this contact.
first_name | String | The first name of the contact.<br>**The field is nullable**
last_name | String  | The last name of the contact.<br>**The field is nullable**
email | String | The email address of the contact.<br>**The field is nullable**
company | String | The company name for this contact.<br>**The field is nullable**
title | String | The title for this contact.<br>**The field is nullable**
phone_home | String | The home phone number for this contact.<br>**The field is nullable**
phone_work | String | The work phone number for this contact.<br>**The field is nullable**
phone_mobile | String | The mobile phone number for this contact.<br>**The field is nullable**
phone_fax | String | The fax phone number for this contact.<br>**The field is nullable**
address1 | String | The first address line for this contact.<br>**The field is nullable**
address2 | String | The second address line for this contact.<br>**The field is nullable**
city | String | The city for this contact.<br>**The field is nullable**
state | String | The state for this contact.<br>**The field is nullable**
postal | String | The postal code for this contact.<br>**The field is nullable**
country | String | The country for this contact.<br>**The field is nullable**
notes |String | Free form text notes entered by end users for the contact.<br>**The field is nullable**
tags | Array of String | When present represents a collection of tags use for applying ad-hoc categorization and collation of contacts.<br>**The field is nullable**
status | String | The status of the contact.  Valid values are **pending_contact**, **active_lead**, **client** and **none**.
created_at | Datetime | The date and time which this contact was created.
archived_at | Datetime | The date and time which this contact was archived.<br>**The field is nullable**

**Chat Object**
> Chat Lead Event

```javascript
{
   "lead":{
      "id":282638,
      "contact_id":323223,
      "campaign_id":1727,
      "archived_at":null,
      "created_at":"2017-05-30T08:55:09.000-07:00",
      "important_at":"2017-06-06T11:32:59.000-07:00",
      "occured_at":"2017-05-30T08:51:09.000-07:00",
      "display_name":"Meghan Cummerata",
      "read_at":"2017-06-09T08:05:37-07:00",
      "event_type":"chat",
      "campaign_name":"Campaign Name 1",
      "status":"pending_contact",
      "notes":null,
      "tags":[
         "Campaign Name 1",
         "red",
         "blue"
      ],
      "contact":{
         "id":323223,
         "first_name":"Meghan",
         "last_name":"Cummerata",
         "title":"Mrs",
         "email":"jazmyn.halvorson@mann.name",
         "company":"Gusikowski and Sons",
         "tags":[
            "Campaign Name 1",
            "red",
            "blue"
         ],
         "notes":null,
         "archived_at":null,
         "created_at":"2017-05-30T08:55:09.000-07:00",
         "status":"pending_contact",
         "phone_home":"699.533.3659",
         "phone_mobile":"699.533.3657",
         "phone_work":"699.533.3658",
         "address1":"555 Elm Street",
         "address2":"Apartment 12",
         "city":"Anytown",
         "state":"Minnesota",
         "postal":"55811",
         "country":"United States"
      },
      "chat":{
         "summary":"Est voluptatem porro exercitationem quia veniam.",
         "transcript":[
            {
               "id":1,
               "timestamp":"05/30/2017 10:55:09",
               "from":"Alia:",
               "message":"In pariatur ad vel aut eum."
            },
            {
               "id":2,
               "timestamp":"05/30/2017 10:55:09",
               "from":"Visitor:",
               "message":"Consequuntur accusantium omnis sunt tempore eveniet provident exercitationem consequatur."
            },
            {
               "id":3,
               "timestamp":"05/30/2017 10:55:09",
               "from":"Alia:",
               "message":"Dicta et aut illo voluptatem cupiditate totam itaque nemo."
            },
            {
               "id":4,
               "timestamp":"05/30/2017 10:55:09",
               "from":"Visitor:",
               "message":"Labore modi quis porro qui dolorem molestias aperiam et."
            },
            {
               "id":5,
               "timestamp":"05/30/2017 10:55:09",
               "from":"Alia:",
               "message":"Tenetur aut iste et sit amet qui fugit."
            },
            {
               "id":6,
               "timestamp":"05/30/2017 10:55:09",
               "from":"Visitor:",
               "message":"Blanditiis sunt laudantium iusto reiciendis provident enim qui aut."
            },
            {
               "id":7,
               "timestamp":"05/30/2017 10:55:09",
               "from":"Alia:",
               "message":"Soluta eius ipsam quia rerum rerum est officia."
            },
            {
               "id":8,
               "timestamp":"05/30/2017 10:55:09",
               "from":"Visitor:",
               "message":"Rerum dicta nihil voluptatem."
            },
            {
               "id":9,
               "timestamp":"05/30/2017 10:55:09",
               "from":"Alia:",
               "message":"Quibusdam et est quod."
            },
            {
               "id":10,
               "timestamp":"05/30/2017 10:55:09",
               "from":"Visitor:",
               "message":"Dolores ea harum facere officia voluptatem."
            }
         ]
      }
   }
}
```

Field | Type | Description
--------- |-------- |--------
summary | String | A freeform text description of the chat.<br>**The field is nullable**
transcript | Array of ChatTranscripts | An ordered array of chat transcript objects.

**ChatTranscript Object**

Field | Type | Description
--------- | -------- |--------
id | Integer | A sequential id of the line chat transcript.  It uniquely identifies a line of the chat transcript within this lead event.
timestamp | String |The date and time that the external chat API registered for this line of the chat transcript.
from | String | The display name of the member of the chat who sent this message.
message | String |The message body of this line of the chat transcript.

**Call Object**
> Call Lead Event

```javascript
{
   "lead":{
      "id":912873,
      "contact_id":8389,
      "campaign_id":1,
      "archived_at":null,
      "created_at":"2017-05-30T08:54:49.000-07:00",
      "important_at":"2017-06-06T11:42:54.000-07:00",
      "occured_at":"2017-05-30T08:18:49.000-07:00",
      "read_at":"2017-06-09T09:18:53-07:00",
      "event_type":"call",
      "campaign_name":"Campaign Name 2",
      "status":"pending_contact",
      "notes":null,
      "tags":[
         "blue",
         "fuschia",
         "purple",
         "Campaign Name 2"
      ],
      "contact":{
         "id":8389,
         "first_name":"Eliezer",
         "last_name":"Braun",
         "title":null,
         "email":null,
         "company":"",
         "tags":[
            "green",
            "orange",
            "Campaign Name 2",
            "yellow"
         ],
         "notes":"Freeform notes about the contact",
         "archived_at":null,
         "created_at":"2017-05-30T08:54:50.000-07:00",
         "status":"pending_contact",
         "phone_fax":null,
         "phone_home":null,
         "phone_mobile":null,
         "phone_work":"(833)174-7656 x881",
         "address1":null,
         "address2":null,
         "city":"Jaimemouth",
         "state":"Florida",
         "postal":"37111",
         "country":null
      },
      "call":{
         "occured_at":"2017-05-30T08:18:49.000-07:00",
         "duration":52,
         "recording_url":"http://calltrackdata.com/webreports/audio/20140508/2089563981_nfhzbbha.mp3"
      }
   }
}
```

Field | Type | Description
--------- | -------- |--------
occured_at | Datetime | The date and time that the call occurred.
duration | Integer | The duration of the call in seconds.
recording_url | String | The URL address to an audio recording of the call.

**Form Object**
> Form Lead Event

```javascript
{
   "lead":{
      "id":217,
      "contact_id":217,
      "campaign_id":1,
      "archived_at":null,
      "created_at":"2017-05-30T08:56:05.000-07:00",
      "important_at":null,
      "occured_at":"2017-05-30T08:15:05.000-07:00",
      "read_at":"2017-06-06T11:32:48-07:00",
      "event_type":"form",
      "campaign_name":"Campaign Name 1",
      "status":"none",
      "notes":"Free form lead event notes",
      "tags":[
         "bar",
         "baz",
         "foo",
         "Campaign Name 1"
      ],
      "contact":{
         "id":217,
         "first_name":"Harry",
         "last_name":"VonRueden",
         "title":"Dr.",
         "email":"filiberto.gleason@heathcotekuhic.com",
         "company":"Graham Group",
         "tags":[
            "nothing",
            "Campaign Name 1"
         ],
         "notes":"Some contact free form notes",
         "archived_at":null,
         "created_at":"2017-05-30T08:56:05.000-07:00",
         "status":"none",
         "phone_fax":null,
         "phone_home":"812-344-3948",
         "phone_mobile":"(399)385-8032",
         "phone_work":"379-420-3202",
         "address1":null,
         "address2":null,
         "city":null,
         "state":null,
         "postal":null,
         "country":null
      },
      "form":{
         "sub_type":"FormPost",
         "full_message":"Subject:\nLabore vel iusto dicta quidem.\n\nMessage:\nEt modi animi ex ut non enim. Voluptate sit laborum qui voluptatum similique ut praesentium. Ut vel dicta totam.",
         "subject":"Labore vel iusto dicta quidem.",
         "message":"Et modi animi ex ut non enim. Voluptate sit laborum qui voluptatum similique ut praesentium. Ut vel dicta totam.",
         "extra_fields":{
            "slogan":"Exclusive object-oriented time-frame",
            "SomeCustomField":"Eaque enim qui labore occaecati distinctio.",
            "another_custom_field":"Aut saepe quidem aut repudiandae soluta."
         }
      }
   }
}
```
> Email Lead Event

```javascript
{
   "lead":{
      "id":104,
      "contact_id":104,
      "campaign_id":1,
      "archived_at":null,
      "created_at":"2017-06-12T14:50:44.000-07:00",
      "important_at":null,
      "occured_at":"2017-06-12T14:07:44.000-07:00",
      "read_at":null,
      "event_type":"form",
      "campaign_name":"Campaign Name 2",
      "status":"pending_contact",
      "notes":null,
      "tags":[
         "Campaign Name 2"
      ],
      "parsed_contact_attributes":{
         "first_name":"Elisa",
         "last_name":"Shanahan",
         "phone_home":null,
         "phone_work":null,
         "phone_mobile":null,
         "email":"soledad_ziemann@christiansenswift.net",
         "company":null,
         "title":null
      },
      "form":{
         "sub_type":"FormEmail",
         "full_message":"Subject:\nVoluptatibus ab aliquam dolorem assumenda consequatur veniam id.\n\nMessage:\nImpedit aut error. Eos sed porro. Vel dolorem in excepturi sed. Sit delectus itaque nostrum qui quo alias recusandae. Et repudiandae molestiae. Atque sequi aut sint ut totam ea. Rerum minus animi eum.",
         "subject":"Voluptatibus ab aliquam dolorem assumenda consequatur veniam id.",
         "message":"Impedit aut error. Eos sed porro. Vel dolorem in excepturi sed. Sit delectus itaque nostrum qui quo alias recusandae. Et repudiandae molestiae. Atque sequi aut sint ut totam ea. Rerum minus animi eum.",
         "extra_fields":{

         }
      }
   }
}
```

Field | Type | Description
--------- | -------- |--------
sub_type | String | The subtype of the form.  Valid values are **FormPost** and **FormEmail**.
full_message | String | The full form message
subject | String | Subject <br>**The field is nullable**|
extra_fields | Array of String | extra fields <br>**The field is nullable**|

