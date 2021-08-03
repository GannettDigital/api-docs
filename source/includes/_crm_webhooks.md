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
master_campaign_id | Integer | An integer uniquely identifying the campaign that this lead is attributed to.
campaign_name |  String | The name of the campaign that this lead is attributed to.
archived_at | Datetime | The date and time which this lead event was archived.<br>**The field is nullable**
created_at | Datetime | The date and time which this lead event was created.
important_at | Datetime | The date and time which this lead event was marked important.<br>**The field is nullable**
occured_at | Datetime | The date and time which this lead event occurred. This will usually be different than the date that the lead event was created.
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
  "lead": {
    "campaign_id": 350851,
    "master_campaign_id": "2705608",
    "campaign_name": "Orange Paper",
    "id": 1632500,
    "created_at": "2021-07-30T15:54:30Z",
    "occured_at": "2021-07-30T15:54:28Z",
    "tags": [
      "Form Lead",
      "Orange Paper"
    ],
    "event_type": "form",
    "contact_id": 1414924,
    "status": "pending_contact",
    "display_name": "Adam Smith",
    "contact": {
      "status": "pending_contact",
      "id": 1414924,
      "created_at": "2021-07-30T15:38:55Z",
      "tags": [
        "Orange Paper"
      ],
      "first_name": "Adam",
      "last_name": "Smith",
      "email": "a.smith@tattoine.net",
      "company": "",
      "phone_mobile": "",
      "phone_work": "612-867-5309",
      "address1": "Ocean drive",
      "address2": "",
      "city": "",
      "state": "",
      "postal": "",
      "country": ""
    },
            "chat": {
                "summary": "Ronita \nNo\nOn campus \nDo your college offer medical billing?\nYes. \nRonita Wade and my number 8627049412; email: ronitawade7075@hotmail.com\nNewark, NJ\nThe Belleville location would be better for me. \nIt would be better in September. \nYes\nOk\nThank You, Jennifer but they don’t have medical billing. ",
                "transcript": [
                    {
                        "id": 1,
                        "timestamp": "5/10/2021 2:05:06 PM",
                        "from": "Jennifer:",
                        "message": "Hello, thanks for contacting Eastern International College. My name is Jennifer, may I have your name?"
                    },
                    {
                        "id": 2,
                        "timestamp": "5/10/2021 2:05:23 PM",
                        "from": "Visitor:",
                        "message": "Ronita"
                    },
                    {
                        "id": 3,
                        "timestamp": "5/10/2021 2:05:40 PM",
                        "from": "Jennifer:",
                        "message": "Hi, Ronita.  Have you contacted Eastern International College before?"
                    },
                    {
                        "id": 4,
                        "timestamp": "5/10/2021 2:05:46 PM",
                        "from": "Visitor:",
                        "message": "No"
                    },
                    {
                        "id": 5,
                        "timestamp": "5/10/2021 2:05:52 PM",
                        "from": "Jennifer:",
                        "message": "Good to have you with us.  Are you interested in online or on-campus program?"
                    },
                    {
                        "id": 6,
                        "timestamp": "5/10/2021 2:06:05 PM",
                        "from": "Visitor:",
                        "message": "On campus"
                    },
                    {
                        "id": 7,
                        "timestamp": "5/10/2021 2:06:07 PM",
                        "from": "Jennifer:",
                        "message": "Okay.  Which of our programs are you interested in?"
                    },
                    {
                        "id": 8,
                        "timestamp": "5/10/2021 2:06:22 PM",
                        "from": "Visitor:",
                        "message": "Do your college offer medical billing?"
                    },
                    {
                        "id": 9,
                        "timestamp": "5/10/2021 2:06:57 PM",
                        "from": "Jennifer:",
                        "message": "Alright.   One of our Admissions Representatives can discuss this in greater detail. May I have your first and last name along with your phone number and email to better assist you?"
                    },
                    {
                        "id": 10,
                        "timestamp": "5/10/2021 2:07:31 PM",
                        "from": "Visitor:",
                        "message": "Yes."
                    },
                    {
                        "id": 11,
                        "timestamp": "5/10/2021 2:08:36 PM",
                        "from": "Visitor:",
                        "message": "Ronita Wade and my number 862-704-9412; email: ronitawade7075@hotmail.com"
                    },
                    {
                        "id": 12,
                        "timestamp": "5/10/2021 2:08:42 PM",
                        "from": "Jennifer:",
                        "message": "Thank you for the contact information, Ronita.  Which city and state are you located in?"
                    },
                    {
                        "id": 13,
                        "timestamp": "5/10/2021 2:09:09 PM",
                        "from": "Visitor:",
                        "message": "Newark, NJ"
                    },
                    {
                        "id": 14,
                        "timestamp": "5/10/2021 2:09:35 PM",
                        "from": "Jennifer:",
                        "message": "Great.  Which of our locations are you interested in attending Jersey City or Belleville location?"
                    },
                    {
                        "id": 15,
                        "timestamp": "5/10/2021 2:10:08 PM",
                        "from": "Visitor:",
                        "message": "The Belleville location would be better for me."
                    },
                    {
                        "id": 16,
                        "timestamp": "5/10/2021 2:10:17 PM",
                        "from": "Jennifer:",
                        "message": "Okay.  How soon are you interested in enrolling?"
                    },
                    {
                        "id": 17,
                        "timestamp": "5/10/2021 2:11:06 PM",
                        "from": "Visitor:",
                        "message": "It would be better in September."
                    },
                    {
                        "id": 18,
                        "timestamp": "5/10/2021 2:11:20 PM",
                        "from": "Jennifer:",
                        "message": "Sounds good!  For further assistance, I can connect you directly to our office by phone using our Call Connect service. Would you like to speak with someone now?"
                    },
                    {
                        "id": 19,
                        "timestamp": "5/10/2021 2:11:53 PM",
                        "from": "Visitor:",
                        "message": "Yes"
                    },
                    {
                        "id": 20,
                        "timestamp": "5/10/2021 2:12:23 PM",
                        "from": "Jennifer:",
                        "message": "Perfect.  One moment please, I'm attempting to connect you now (please be aware that, for routing purposes, your caller ID will show a 925 area code). Please pick up and wait to be connected. I will be here if you need anything."
                    },
                    {
                        "id": 21,
                        "timestamp": "5/10/2021 2:12:48 PM",
                        "from": "Visitor:",
                        "message": "Ok"
                    },
                    {
                        "id": 22,
                        "timestamp": "5/10/2021 2:13:29 PM",
                        "from": "Jennifer:",
                        "message": "You should now be connected. Is there anything else I can help you with?"
                    },
                    {
                        "id": 23,
                        "timestamp": "5/10/2021 2:15:43 PM",
                        "from": "Visitor:",
                        "message": "Thank You, Jennifer but they don’t have medical billing."
                    },
                    {
                        "id": 24,
                        "timestamp": "5/10/2021 2:16:06 PM",
                        "from": "Jennifer:",
                        "message": "You are welcome.  Thank you for contacting Eastern International College. Have a nice day, Ronita!"
                    }
                ]
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
            "campaign_id": 357509,
            "master_campaign_id": "2927264",
            "campaign_name": "Management Service | Eastern International College",
            "id": 136294964,
            "created_at": "2021-05-10T16:12:08-05:00",
            "occured_at": "2021-05-10T16:07:51-05:00",
            "tags": [
                "Call Lead",
                "Management Service | Eastern International College"
            ],
            "event_type": "call",
            "contact_id": 36996224,
            "status": "pending_contact",
            "display_name": "Bolanos, Kelly ",
            "contact": {
                "status": "pending_contact",
                "id": 36996224,
                "created_at": "2018-09-12T15:35:36-05:00",
                "tags": [
                    "Direct Site Traffic",
                    "Management Service | Eastern International College",
                    "Organic Search"
                ],
                "first_name": "Kelly ",
                "last_name": "Bolanos",
                "email": "bolanoskelly@gmail.com",
                "phone_work": "9738611219",
                "postal": "07011",
                "company": "Eastern International College",
                "city": "",
                "state": ""
            },
            "call": {
                "occured_at": "2021-05-10T16:07:51-05:00",
                "recording_url": "https://webservice.telmetrics.com/filedownload.ashx/4fcbd064-840d-4690-935c-71be733f68a4/2179874818.mp3",
                "duration": "03:47"
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
      "id":21,
      "contact_id":21,
      "campaign_id":3,
      "archived_at":null,
      "created_at":"2017-05-30T08:56:05.000-07:00",
      "important_at":null,
      "occured_at":"2017-05-30T08:15:05.000-07:00",
      "read_at":"2017-06-06T11:32:48-07:00",
      "event_type":"form",
      "campaign_name":"Campaign",
      "status":"none",
      "notes":"Free form event notes",
      "tags":[
         "bar",
         "baz",
         "foo",
         "Campaign"
      ],
      "contact":{
         "id":217,
         "first_name":"Harry",
         "last_name":"Brown",
         "title":"Dr.",
         "email":"slim.gleason@heatotekuhic.com",
         "company":"Group",
         "tags":[
            "nothing",
            "Campaign"
         ],
         "notes":"Some contact free form notes",
         "archived_at":null,
         "created_at":"2017-05-30T08:56:05.000-07:00",
         "status":"none",
         "phone_fax":null,
         "phone_home":"812-666-3948",
         "phone_mobile":"(699)385-8032",
         "phone_work":"379-420-69",
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
  "lead": {
    "campaign_id": 350851,
    "master_campaign_id": "2705608",
    "campaign_name": "Orange Paper",
    "id": 1632500,
    "created_at": "2021-07-30T15:54:30Z",
    "occured_at": "2021-07-30T15:54:28Z",
    "tags": [
      "Form Lead",
      "Orange Paper"
    ],
    "event_type": "form",
    "contact_id": 1414924,
    "status": "pending_contact",
    "display_name": "Adam Smith",
    "contact": {
      "status": "pending_contact",
      "id": 1414924,
      "created_at": "2021-07-30T15:38:55Z",
      "tags": [
        "Orange Paper"
      ],
      "first_name": "Adam",
      "last_name": "Smith",
      "email": "a.smith@tattoine.net",
      "company": "",
      "phone_mobile": "",
      "phone_work": "612-867-5309",
      "address1": "Ocean drive",
      "address2": "",
      "city": "",
      "state": "",
      "postal": "",
      "country": ""
    },
    "form": {
      "sub_type": "FormEmail",
      "full_message": "Message:\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "message": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "extra_fields": {
        "campaign_id": "USA_2705608",
        "campaign_name": "Orange Paper",
        "submit_button": "SUBMIT",
        "name": "Adam Smith",
        "phone": "6128675309",
        "email": "Adam@example.com",
        "address": "",
        "address1": "",
        "postal": "",
        "country": "",
        "company": "",
        "message": "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum."
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

