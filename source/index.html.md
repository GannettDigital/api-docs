---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell
  - ruby
  - java

toc_footers:
  - <a href='https://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - terms_and_conditions
  - authentication
  - api
  - campaigns
  - campaigns_overview_report
  - campaigns_totals
  - display_activity_report
  - display_creative_report
  - geofence_summary_report
  - search_activity_report
  - search_compliance_report
  - keyword
  - keyword_compliance_report
  - facebook_campaign_report
  - youtube
  - lead_detail
  - lead_event_feed_service/overview
  - lead_event_feed_service/leads/leads_object
  - lead_event_feed_service/leads/index
  - lead_event_feed_service/call_events/call_events_object
  - lead_event_feed_service/call_events/index
  - lead_event_feed_service/call_events/show
  - lead_event_feed_service/call_events/update
  - lead_event_feed_service/call_events/destroy
  - lead_event_feed_service/chat_events/chat_events_object
  - lead_event_feed_service/chat_events/index
  - lead_event_feed_service/chat_events/show
  - lead_event_feed_service/chat_events/update
  - lead_event_feed_service/chat_events/destroy
  - lead_event_feed_service/email_events/email_events_object
  - lead_event_feed_service/email_events/index
  - lead_event_feed_service/email_events/show
  - lead_event_feed_service/email_events/update
  - lead_event_feed_service/email_events/destroy
  - lead_event_feed_service/web_events/web_events_object
  - lead_event_feed_service/web_events/index
  - lead_event_feed_service/web_events/show
  - lead_event_feed_service/web_events/update
  - lead_event_feed_service/web_events/destroy
  - lead_event_feed_service/user_info/user_info_object
  - lead_event_feed_service/user_info/show
  - capture_external_event_api
  - capture_discovery
  - capture_top_referrers
  - total_track
  - webhooks
  - edge_webhook  
  - integrations
  - contacts
  - contact_interactions
  - crm_webhooks
  - errors

search: false
---

# Introduction

Our mission is to enable your growth and satisfaction through flexible access to digital marketing reporting data.

We have 3 major types of reporting API offerings; API, Webhooks and Integration apps.

<img alt='API' src='/images/api.png' height=200 width=200 />
<img alt='Webhook' src='/images/webhook_icon.png' height=200 width=200 />
<img alt='Integration' src='/images/integration.png' height=200 width=200 />

* API (Interface to the data – through a request & response interchange between applications)
  * APIs that serve up metrics for your Search, Display campaigns and Social Campaigns. There are also APIs that serve up campaign level metrics independent of the product.

* Webhooks (Event driven interface to the data – automated exchange based on specific event or rules occurring)
  * Webhooks to contact creation on the LocaliQ platform
  * Webhooks to interaction occurring on your campaign; call, chat, web & email events.

* Integrations (API and/or Web hooks with a specific purpose)
  * CRM integrations (for Contacts and Leads)
  * FranConnect Integration (coming soon)

This site describes the resources that make up the LocaliQ reporting REST API offerings. For questions or general information, please contact [LocaliQ API Support](mailto: apiservices@reachlocal.com).
