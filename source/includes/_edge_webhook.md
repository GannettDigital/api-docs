# Edge Webhook

Edge has an automation feature that is capable of triggering on “New Lead for New Contact” and “New Lead for Existing Contact” events.  When either of these events occur, this webhook integration will trigger and POST the Lead Event JSON Payload to a URL configured for the webhook.  Create a webhook using the integrations account setting.

![Integrations webhook](/images/webhook.png)

When creating a webhook integration in Edge, a payload URL must be provided.  An additional optional authentication can be specified that will be included as a value in the POST request's header.

![Create webhook](/images/create_webhook.png)

## Lead Event JSON Payload

The lead event that triggered the webhook will be sent to the specified payload URL as an HTTP POST with a content type of application/json.

### Lead Object

Field | Type | Nullable | Description
--------- | -------- |-------- |--------
id | Integer | no | An integer uniquely identifying this lead event.
contact_id | Integer | no | An integer uniquely identifying the contact to which this lead belongs.
campaign_id | Integer | no | An integer uniquely identifying the campaign that this lead is attributed to.
campaign_name |  String| no | The name of the campaign that this lead is attributed to.
archived_at | Datetime | yes | The date and time which this lead event was archived.
created_at | Datetime | no | The date and time which this lead event was created.
important_at | Datetime | yes | The date and time which this lead event was marked important.
occured_at | Datetime | no | The date and time which this lead event occurred. This will usually be different than the date that the lead event was created.
read_at | Datetime | yes | The date and time which this lead event was marked read.
display_name | String | no | The display name of the lead event.
event_type| String | no | The type of the lead event. Valid values are **chat**, **call** and **form**.
status | String | no | The status of the associated contact.  Valid values are **pending_contact**, **active_lead**, **client** and **none**.
notes | String | yes | Free form text notes entered by end users onto the lead event.
tags | Array of String | yes | When present represents a collection of tags use for applying ad-hoc categorization and collation of lead events.
contact | Contact | no | The contact to which this lead event belongs.
chat | Chat | | The lead event payload will include a single **chat**, **call** or **form** object.  The object type will match the event_type field.
call | Call | | The lead event payload will include a single **chat**, **call** or **form** object.  The object type will match the event_type field.
form | Form | | The lead event payload will include a single **chat**, **call** or **form** object.  The object type will match the event_type field.

### Contact Object
Field | Type | Nullable | Description
--------- | -------- |-------- |--------
id | Integer | no |An integer uniquely identifying this contact.
first_name | String | yes | The first name of the contact.
last_name | String | yes | The last name of the contact.
email | String | yes | The email address of the contact.
company | String | yes | The company name for this contact.
title | String | yes | The title for this contact.
phone_home | String | yes | The home phone number for this contact.
phone_work | String | yes | The work phone number for this contact.
phone_mobile | String | yes | The mobile phone number for this contact.
phone_fax | String | yes | The fax phone number for this contact.
address1 | String | yes | The first address line for this contact.
address2 | String | yes | The second address line for this contact.
city | String | yes | The city for this contact.
state | String | yes | The state for this contact.
postal | String | yes | The postal code for this contact.
country | String | yes | The country for this contact.
notes |String | yes | Free form text notes entered by end users for the contact.
tags | Array of String | yes | When present represents a collection of tags use for applying ad-hoc categorization and collation of contacts.
status | String | no | The status of the contact.  Valid values are **pending_contact**, **active_lead**, **client** and **none**.
created_at | Datetime | no | The date and time which this contact was created.
archived_at | Datetime | yes | The date and time which this contact was archived.

### Chat Object
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
      "campaign_name":"unknown",
      "status":"pending_contact",
      "notes":null,
      "tags":[
         "unknown",
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
            "unknown",
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

Field | Type | Nullable | Description
--------- | -------- |-------- |--------
summary | String | yes | A freeform text description of the chat.
transcript | Array of ChatTranscripts | no | An ordered array of chat transcript objects.

### ChatTranscript Object
Field | Type | Nullable | Description
--------- | -------- |-------- |--------
id | Integer | no | A sequential id of the line chat transcript.  It uniquely identifies a line of the chat transcript within this lead event.
timestamp | String | no |The date and time that the external chat API registered for this line of the chat transcript.
from | String | no | The display name of the member of the chat who sent this message.
message | String | no |The message body of this line of the chat transcript.

### Call Object
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
      "campaign_name":"unknown",
      "status":"pending_contact",
      "notes":null,
      "tags":[
         "blue",
         "fuschia",
         "purple",
         "unknown"
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
            "unknown",
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

Field | Type | Nullable | Description
--------- | -------- |-------- |--------
occured_at | Datetime | no | The date and time that the call occurred.
duration | Integer | no | The duration of the call in seconds.
recording_url | String | no | The URL address to an audio recording of the call.

### Form Object
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
      "campaign_name":"unknown",
      "status":"none",
      "notes":"Free form lead event notes",
      "tags":[
         "bar",
         "baz",
         "foo",
         "unknown"
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
            "unknown"
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
      "campaign_name":"unknown",
      "status":"pending_contact",
      "notes":null,
      "tags":[  
         "unknown"
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

Field | Type | Nullable | Description
--------- | -------- |-------- |--------
sub_type | String | no | The subtype of the form.  Valid values are **FormPost** and **FormEmail**.
full_message | String | no | The full form message
subject | String | yes | 
extra_fields | Array of String | yes |