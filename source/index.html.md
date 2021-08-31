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
  - trouble_shooting_errors

  - release_notes

  - api_overview

  - identity_apis
  - identity

  - api
  - campaigns_and_cycles
  - campaigns_overview_report
  - campaigns_totals

  - display
  - unified_display_campaign_metrics
  - geofence_campaign_metrics

  - search
  - keyword_performance_metrics
  - search_campaign_metrics
  - google_keyword_report
  - google_search_report

  - social
  - socialads_campaign_metrics
  - youtube_campaign_metrics

  - traffic_metrics
  - discovery
  - top_referrers
  - total_track
  - web_events_metrics
  - cross_media_optimization
  - xmedia
  - xmedia_channel

  - integrations
  - contacts
  - contact_interactions
  - edge_webhook
  - crm_webhooks
  - lead_metrics
  - chat_summary
  - lead_detail
  - lsa_campaigns
  - lsa_campaign_rollup
  - lsa_leads
  - zapier
  - fpd
  - capture_external_event_fpd
  - capture_external_event_chat
  - etl_reports
  - etl_reports/etl_lead_attribution

  - deprecated_apis
  - creative_ad_metrics
  - display_campaign_metrics
  - lead_event_feed_service/overview
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
  - lead_event_feed_service/leads/leads_object
  - lead_event_feed_service/leads/index
  - lead_event_feed_service/user_info/user_info_object
  - lead_event_feed_service/user_info/show
  - lead_event_feed_service/web_events/web_events_object
  - lead_event_feed_service/web_events/index
  - lead_event_feed_service/web_events/show
  - lead_event_feed_service/web_events/update
  - lead_event_feed_service/web_events/destroy

  - errors
  - trouble_shooting_errors

search: false
---

# Introduction

<aside class="notice"><b>10/30/2020:</b> We have updated the format of our documentation. Please update your bookmarks. Thank you.</aside>

Our mission is to enable your growth and satisfaction through flexible access to digital marketing reporting data.

We have 3 major approaches for providing data: APIs, Webhooks and Integration apps.

<img alt='API' src='/images/api.png' height=180 width=180 />
<img alt='Webhook' src='/images/webhook_icon.png' height=180 width=180 />
<img alt='Integration' src='/images/integration.png' height=180 width=180 />

**API**

  - Interface to the data – through a request & response interchange between applications

  - APIs that serve up metrics for your Search, Display, and Social Campaigns. There are also APIs that serve up campaign level metrics independent of the product. <br>


**Webhooks**

  - Event driven interface to the data – automated exchange based on specific event or rules occurring

  - Webhooks for contact creation on the LOCALiQ platform

  - Webhooks for interactions occurring on your campaign; call, chat, web & email events.


**Integrations**

  - API and/or Web hooks with a specific purpose

  - CRM integrations (Contacts and Leads)

  - FranConnect Integration

This site describes the resources that make up the LOCALiQ reporting REST API offerings. For questions or general information, please contact us at:

**LOCALiQ API Support**: [apiservices@localiq.com](mailto:apiservices@localiq.com)
