## LOCALiQ App on Zapier®
<a name="zapier"></a>

**Summary:** Zapier® is a tool that allows two systems to exchange data without any coding. LOCALiQ makes available a lead app on the Zapier® platform for CRM integration.

- The LOCALiQ app on Zapier® is available at no additional cost. Please see note below.
- Advertiser IDs (GMAIDs) are maintained through Campaign Central/Corp and can be found in the general settings of your account settings.

**Note:** There is an additional monthly subscription cost through Zapier®. The cost depends on the number of leads sent per month and the number of leads transmitted between the systems (which Zapier® refers to as "Tasks"). Pricing information for Zapier® can be found [here](https://zapier.com/pricing).

**LOCALiQ App Options:**

There are 3 options under the LOCALiQ App on Zapier®. 2 triggers and 1 create/match-action. The triggers push data from LOCALiQ to a connected app. The create/match-action allows you to have a trigger in another app push data into the LOCALiQ platform.

**Triggers**

 - **Contacts:** This trigger supports integration with CRM products. It delivers contact data (first name, last name, email, phone number, etc.) generated for an advertiser in near real-time.
 - **Contact Interactions:** This trigger supports integration with CRM products. It delivers all interactions (or leads) generated for an advertiser in near real-time. [View Data Details](#zapier_contact_interactions).

 **Create/Match Actions**

  - **Create Contact Interaction and Match/Create Contact:** This action will push data from your connected app (CRM) into the LOCALiQ platform and attempts to match the interaction to an existing contact (using an email, phone number, or recording url). If a match is not found a new contact is created. All interaction data will be treated as a first party data event within our platform. This is a great way to enrich your campaign data. 

**Recommended Usage Pattern:**

This is a self-service solution and it is recommended that you use your own Zapier® account to create a Zap between our LOCALiQ leads app and your CRM app. When using one of our triggers, leads from all your campaigns will flow in real time from our platform to your CRM. When using our create/match action data will flow from your CRM into our platform.

As an alternative, if you would like LOCALiQ to create the Zap, maintain, and manage it using our Zapier® account, please reach out to your account team and request Offer 2095. This service is available at an additional fee.

### LOCALiQ Account on Zapier

**How Do I Connect to My LOCALiQ Account on Zapier?**

1) Log in to your [Zapier account](https://zapier.com/sign-up) or create a new account.

2) Navigate to "My Apps" from the top menu bar.

3) Now click on "Connect a new account..." and search for "LOCALiQ"

4) Use your LOCALiQ business user credentials to connect your LOCALiQ account to Zapier.

  - Business User credentials are provided to you by your account team during account creation. These credentials allow you to access the account data through the APIs as well as the Client Center. If you need to check if you have a Business User created or need to reset your password, you can navigate to ReachSecurePay (https://reachsecurepay.com/client/index.php) and enter your email address. If you encounter the error message “Email Address is invalid” or “Email Address not found”, please contact your account management team. If you progress to the login screen, you can select “Create a new password” which will either send you a password reset email or allow you to set your password manually (this will only occur if your password has never been set).

  - The business user must be set up to allow access to HIPAA information to access HIPAA data through the API. You can reach your account team to check and/or edit privileges on your business user. Please follow the needed due diligence when adding HIPAA privileges to your business user account since the implications of it are far beyond API access to data. This control applies to APIs that provide data that are classified as HIPAA and protected by law.

5) Once that's done you can start creating an automation! Use a pre-made Zap or create your own with the Zap Editor. Creating a Zap requires no coding knowledge and you'll be walked step-by-step through the setup.

6) Need inspiration? See [LOCALiQ and Zapier](https://zapier.com/apps/LOCALiQ/integrations).

### Using the LOCALiQ Trigger Zap?

1) Click "Make a New Zap!" button in the upper right-hand corner of the Zapier® Dashboard

2) Pick the LOCALiQ Contacts or Contact Interactions option as your Trigger

3) Choose the Action to map data to the receiving system (this could either be your CRM's app or a POST to an endpoint)

4) Enable the Zap and your are done!

Also see: [Learn key concepts in Zapier®](https://zapier.com/help/create/basics/learn-key-concepts-in-zapier)

### Using the LOCALiQ Zap Action?

1) Click "Make a New Zap!" button in the upper right-hand corner of the Zapier® Dashboard

2) Pick something like your CRM's "New Interaction Created" as your Trigger 

3) Choose the LOCALiQ "Create Event and Match/Create Contact" as your Action and map your data to the [given fields](#zapier_create_event_form)

4) Enable the Zap and your are done!

Also see: [Learn key concepts in Zapier®](https://zapier.com/help/create/basics/learn-key-concepts-in-zapier)

### Contact Interactions Payload
<a name="zapier_contact_interactions"></a>

**Summary:** This HIPAA Compliant trigger returns all interactions (or leads) generated by a campaign for an advertiser.

**Contact Interaction Details**

Field | Type | Description
--------- |-------- |--------
id | Integer | An integer uniquely identifying this contact interaction.
contact_id | Integer | An integer uniquely identifying the contact to which this contact interaction belongs.
campaign_id | Integer | An integer uniquely identifying the campaign that this contact interaction is attributed to.
campaign_name |  String| The name of the campaign that this contact interaction is attributed to.
archived_at | Datetime | The date and time which this contact interaction was archived.
created_at | Datetime | The date and time which this contact interaction was created.
important_at | Datetime | The date and time which this contact interaction was marked important.
occured_at | Datetime | The date and time which this contact interaction occurred. This will usually be different than the date that the contact interaction was created.
read_at | Datetime | The date and time which this contact interaction was marked read.
display_name | String | The display name of the contact interaction.
event_type| String | The type of the contact interaction . Valid values are **chat**, **call** and **form**.
status | String | The status of the associated contact.  Valid values are **pending_contact**, **active_contact interaction**, **client** and **none**.
notes | String | Free form text notes entered by end users onto the contact interaction .
tags | Array of String | When present represents a collection of tags use for applying ad-hoc categorization and collation of contact interactions.
contact | Contact | The contact to which this contact interaction belongs.  See the contacts page of this document for details

Depending on the type of contact interaction (see the `event_type` attribute), the payload will also include one of the following:

**Chat**

Field | Nullable | Description
--------- |-------- |--------
summary | String | A freeform text description of the chat.
transcript | Array of ChatTranscripts | An ordered array of chat transcript objects.

**ChatTranscript Object**

Field | Type | Description
--------- |-------- |--------
id | Integer | A sequential id of the line chat transcript.  It uniquely identifies a line of the chat transcript within this contact interaction.
timestamp | Datetime |The date and time that the external chat API registered for this line of the chat transcript.
from | String | The display name of the member of the chat who sent this message.
message | String |The message body of this line of the chat transcript.

**Call**

Field | Type | Description
--------- |-------- |--------
occured_at | Datetime | The date and time that the call occurred.
duration | Integer | The duration of the call in seconds.
recording_url | String | The URL address to an audio recording of the call.

**Form Fill**

Field | Type | Description
--------- | -------- |-------- |--------
sub_type | String | The subtype of the form.  Valid values are **FormPost** and **FormEmail**.
full_message | String | The full form message
subject | String |
extra_fields | Array of String |

### Contacts Payload
<a name="zapier_contacts"></a>

**Summary:** This HIPAA Compliant trigger returns all contacts (first name, last name, email and/or phone number) generated by a campaign for an advertiser.

**Contact Details**

Field | Type | Description
--------- | -------- |--------
id | Integer |An integer uniquely identifying this contact.
first_name | String | The first name of the contact.
last_name | String | The last name of the contact.
email | String | The email address of the contact.
company | String | The company name for this contact.
title | String | The title for this contact.
phone_home | String | The home phone number for this contact.
phone_work | String | The work phone number for this contact.
phone_mobile | String | The mobile phone number for this contact.
phone_fax | String | The fax phone number for this contact.
address1 | String | The first address line for this contact.
address2 | String | The second address line for this contact.
city | String | The city for this contact.
state | String | The state for this contact.
postal | String | The postal code for this contact.
country | String | The country for this contact.
notes |String | Free form text notes entered by end users for the contact.
tags | Array | yes | When present represents a collection of tags use for applying ad-hoc categorization and collation of contacts.
status | String | The status of the contact.  Valid values are **pending_contact**, **active_lead**, **client** and **none**.
created_at | Datetime | The date and time which this contact was created.
archived_at | Datetime | The date and time which this contact was archived.

### Create Event Action Form
<a name="zapier_create_event_form"></a>

Field | Type | Required | Description
--------- | -------- | -------- | ------- |
GMAID | string | YES | LOCALiQ global master advertiser ids are maintained through Campaign Central/Corp.
Email | string | MAYBE | Used to match or create contact. One of url, email, or phone number required.
Phone Number | string | MAYBE | Used to match or create contact. One of url, email, or phone number required.
Call Recording URL | string | MAYBE | Used to match or create contact. One of url, email, or phone number required.
Occurrence Time | datetime | NO | Occurrence time of event. Reccommended format: `YYYY-MM-DD HH:MM:SS`
First Name | string | NO | First name of contact.
Last Name | string | NO | Last name of contact.
Address1 | string | NO | Address1 of contact.
Address2 | string | NO | Address2 of contact.
City | string | NO | City of contact.
State | string | NO | State of contact.
Postal Code | string | NO | Postal code of contact.
Country | string | NO | Country of contact.
