## CRM Webhooks
<a name="crm_webhooks"></a>

### Registering the Webhook

Client Center has an automation feature that is capable of triggering on “New Lead for New Contact” and “New Lead for Existing Contact” events.  When either of these events occur, this webhook integration will trigger and POST the Lead Event JSON Payload to a URL configured for the webhook.  Create a webhook using the integrations account setting.

![Integrations webhook](/images/webhook.png)

When creating a webhook integration in Client Center, the CRM provider should be asked for the Payload URL.

![Create webhook](/images/create_webhook.png)

Webhook Components:

- Payload URL
  - A Payload URL (also called an Endpoint URL, Postback URL, or HTTP POST URL) is a place in the CRM where our data can be sent.
  - We will not be able to send the data without a Payload URL.
- Payload URL Examples
  - `https://api.crmprovider.com/contact`
  - `https://www.crmprovider.net/lead/genericlead.asmx`
  - `https://devdashboard.crmprovider.com/post/`
- Authentication Header
  - This section is optional and will only be used if there is a token that needs to be included in the header of the API call. This would consist of identifiable information like an ID or a code provided by the CRM to ensure that whoever is trying to send the data is actually who they say they are.
- Which events should trigger a webhook?
  - Leads can be sent for New Contacts and/or Existing Contacts. Two webhooks would need to be created if an advertiser wanted to send data for both new and existing contacts, but the same information (Payload URL, Authentication Header, etc.) can be used for each.
- Which lead types should trigger a webhook?
  - Leads can be filtered to only send Calls, only Chats, only Forms & Emails, or any combination of these three options.
- Payload Format
  - The format that we will send the data in. This can either be sent in JSON, which is the standard format, or in ADF/XML.
- The webhook can be set to Active by checking the box next to "Active". If left unchecked, the webhook will not send data.

All leads for an advertiser will be sent through the webhook and cannot be filtered by a specific campaign.
