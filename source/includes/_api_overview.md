# Table of Contents

**APIs are split into 3 main sections:**

[Reporting Metric APIs](#reporting_metric_apis): Performance metrics on your campaigns

[Lead Info APIs/Webhooks](#lead_info_apis_webhooks): Lead information such as details, counts, and CRM integrations

[Deprecated APIs](#deprecated_apis): APIs that are deprecated and no longer updated or maintained

|Category|API to use|When you want|
|---|---|---|
|Identity|[Identity](#identity_api)|The identity endpoint is used to gain insight into the resources that are accessible by an advertiser.  It will return advertisers that the user is authorized to retrieve data for, the active state of the advertisers, and the privilege details used to determine HIPAA access.|
|Campaigns|[Campaigns & Cycles](#campaigns_and_cycles)|List of campaigns and cycles for a given advertiser|
|Campaigns|[Campaigns Overview](#campaigns_overview)|Total campaign performance metrics for all active campaigns in the last 30 days and basic metrics for all campaigns listed individually. This will include all types of campaign. It is best used as an “overview”|
|Campaigns|[Campaigns Totals](#campaigns_totals)|Total lead count for all running campaigns type over the last 30 days|
|Display|[Display Campaign Metrics](#unified_display)|Detailed performance metrics for display campaigns including creatives metrics|
|Display|[GeoFence Campaign Metrics](#geofence_campaign_metrics)|Detailed performance metrics for Geo Fence campaigns broken down by geofence and conversion fence|
|Search|[Search Campaign Metrics](#search_campaign_metrics)|Detailed Performance metrics for search campaigns organized by campaigns.  Includes device breakdown.|
|Search|[Keyword Performance Metrics](#keyword_performance_metrics)|Keywords with metrics on each of them for both search and site retargeting campaigns|
|Social|[SocialAds Campaign Metrics](#socialads_campaign_metrics)|Detailed performance metrics for social campaigns (Facebook). Includes age, gender & device breakdown|
|Social|[YouTube Campaign Metrics](#youtube_campaign_metrics)|Detailed performance metrics for social campaigns (You Tube)|
|XMO|[XMO Campaign Metrics](#xmo_metrics)|Detailed performance metrics for Cross Media Optimization campaigns (XOM)|
|XMO |[XMO Channel Metrics](#xmo_channel)|Detailed performance metrics for Cross Media Optimization channels (XOM)|
|Traffic Metrics|[Marketing Activity](#marketing_activity)|Basic metrics organized by traffic; paid (LOCALiQ & others) and organic|
|Traffic Metrics|[Top referrers](#top_referrers)|Information on top referrers for both paid & organic traffic|
|Traffic Metrics|[Total Track](#total_track)|Custom Tracking campaign metrics that have metrics on contacts from tracking phone number(s) and trackable URLs (Web & Phone)|
|Traffic Metrics|[Web Event Metrics](#web_event_metrics)|Performance metric on pages that was selected as important by the advertiser; CVT or Web Events. Web Events can be pages that generate leads (Qualified web event) or pages that are informational and of value to the client (non-qualified web events)|
|Contact/Leads|[Contacts](#contacts)|Contact information of every lead. HIPAA compatible; only authorized user will be able to retrieve data from this API. This API can be used for CRM integration purposes.|
|Contact/Leads|[Contact Interactions](#contact_interactions)|Contact information and interaction details of every lead. This API has ph call recording link, transcripts of emails, forms & chats. HIPAA compatible; only authorized user will be able to retrieve data from this API. This API can be used for CRM integration purposes.|
|Contact/Leads|[CRM Webhooks](#crm_webhooks)|Self-service integration on Client Center through Edge. This web hook sends real time contact interaction details to receiver. This API can be used for CRM integration purposes.|
|Lead Metrics|[Chat Summary](#chat_summary)|Counts on chats received, types of changes from both LOCALiQ and organic traffic|
|Lead Metrics|[Lead Details](#lead_details)|Lead (Calls, emails, web events, and chats) metric from all LOCALiQ campaigns. This API also has number of calls broken down by call duration and time of day. This API does not have information on individual leads. Use the Contact and Contact Interactions API to retrieve details like name, transcripts, form information, etc.|
|Lead Metrics|[LSA Campaigns](#lsa_campaigns)|Local Service Ad Metrics by Campaign and Interval|
|Lead Metrics|[LSA Campaign Rollup](#lsa_campaign_rollup)|Local Service Ads - Metric rollup by campaign|
|Lead Metrics|[LSA Lead Details](#lsa_leads)|Local Service Ads - Individual Leads for a date range|
|First Party Data |[Capture External Events Confirmed Calls](#lcapture_external_event_fpd)|First Party Data - Send LOCALiQ high value call recording URLs|
|First Party Data |[Capture External Events Chat](#capture_external_event_chat)|Local Service Ads - Send LOCALiQ offline Chats that occur|
|Custom Integration|FranConnect/Franchise Management Software |If you are interested in this custom integration, please contact your account team (Offer #2095)|

