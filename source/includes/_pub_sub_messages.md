## Google Pub/Sub Messaging

### Resource Overview

Data connect publishes structured messages to a Google Pub/Sub queue when certain events occur.  This document attempts to describe how to interpret the messages as well as describing how to parse them.

#### Identity Service

Whenever a product and company association is modified an informative message is published to the Pub/Sub topic.

The message is formatted in JSON.  In the example message, the product TEST_PRODUCT is being associated to the company with the id 3 and the advertiser gmaid USA_332240.

```javascript
{
  "source": "identity_service",
  "model": "company_product",
  "action": "create",
  "id": 388,
  "company_id": 3,
  "product_code": "TEST_PRODUCT",
  "platform_id": 1,
  "master_advertiser_id": 332240,
  "active": true,
  "details": {
    "flavor": "watermelon",
    "username": "foo"
  }
}
```

| Name | Description |
|---|---|
|`source`|Always `identity_service`|
|`model`|The class name of the model that generated the event.  Probably not useful to consumers.  Currently `company_product` is the only instrumented model|
|`action`|The action that was performed on the model.  Possible values are `create`, `update` and `destroy`|
|`id`|The primary key identifier of the model|
|`company_id`|The primary key identifier of the company|
|`product_code`|The code identifier of the product|
|`platform_id`|The platform identifier of the model.  Possible values are 1 => `USA`, 2 => `CAN`, 3 => `AUS`, 6 => `GBR` and 7 => `TEST`|
|`master_advertiser_id`|The master advertiser identifier|
|`active`|Possible values are `true` and `false`|
|`details`|A free form set of key/value pairs that were defined on the company product association|

#### LIPS

LIPS will publish to the Pub/Sub topic whenever the creation of contact interactions that result in the creation of a new or update of an existing contact.

The message is formatted in JSON.  In the example message, the contact interaction 31589324 is a new lead for what is a new contact 15319451 for the advertiser gmaid USA_332240.  If the "action" was update, the contact interaction 31589324 would have been a new lead for an existing contact.
##### Contact Interaction

```javascript
{
  "action": create,
  "master_advertiser_id": 332240,
  "platform_id": 1,
  "lead_type": "CallEvent",
  "contact_id": 15319451,
  "contact_interaction_id": 31589324,
  "gmaid": "USA_332240",
  "tags": ["chat", "message"]
}
```

| Name | Description |
|---|---|
|`action`|The action that was performed on the model.  Possible values are `create` and `update`|
|`master_advertiser_id`|The master advertiser identifier|
|`platform_id`|The platform identifier of the model.  Possible values are 1 => `USA`, 2 => `CAN`, 3 => `AUS`, 6 => `GBR` and 7 => `TEST`|
|`lead_type`|The type of lead.  Possible values are `CallEvent`, `FormEvent`, `FpdEvent` and `ChatEvent` |
|`contact_id`|The primary key identifier of the contact|
|`contact_interaction_id`|The primary key identifier of the contact interaction|
|`gmaid`|A combination of the platform code combined with the master advertiser id joined by an underscore (USA_35272 for platform id 1 and master advertiser id 35272) |
|`tags`| Array of tag strings given contact interaction |

##### Contact

```javascript
{
  "action": create,
  "master_advertiser_id": 332240,
  "platform_id": 1,
  "contact_id": 15319451,
  "status": "active",
  "tags": ["chat", "message"]
}
```

| Name | Description |
|---|---|
|`action`|The action that was performed on the model.  Possible values are `create` and `update`|
|`master_advertiser_id`|The master advertiser identifier|
|`platform_id`|The platform identifier of the model.  Possible values are 1 => `USA`, 2 => `CAN`, 3 => `AUS`, 6 => `GBR` and 7 => `TEST`|
|`contact_id`|The primary key identifier of the contact|
|`status`|Status of given contact|
|`tags`|Array of tag strings given contact|

##### Tag

```javascript
{
  "action": create,
  "master_advertiser_id": 332240,
  "platform_id": 1,
  "contact_id": 15319451,
  "status": "active",
  "tags": ["chat", "message"]
}
```

| Name | Description |
|---|---|
|`action`|The action that was performed on the model.  Possible values are `create` and `delete`|
|`master_advertiser_id`|The master advertiser identifier|
|`platform_id`|The platform identifier of the model.  Possible values are 1 => `USA`, 2 => `CAN`, 3 => `AUS`, 6 => `GBR` and 7 => `TEST`|
|`id`|The primary key identifier of the entity(`Contact interaction ` or `Contact`)|
|`status`|Status of given contact|
|`tags`|Array of tag strings given contact|
|`changed_tags`|Array of removed or created tags depends on the `action`|
