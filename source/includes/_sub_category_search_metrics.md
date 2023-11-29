## Search Metrics for Business Sub Categories

#### Resource Overview

```
Available Methods:      GET
URI Format:             /client_reports/sub_category_search_metrics/[gmaid]?[query_params]
```

#### Usage

Use GET to retrieve search metric stat report for a given advertiser and business sub category id

<% if false %>
### Business Category - Campaign Table Associations
![Business Sub Category Campaign Associations](https://github.com/GannettDigital/api-docs/blob/EDGE-9198-SubCategorySearchMetrics/source/images/business_sub_category_associations.png)
<% end %>

#### Parameters

When using the GET method, the results can be filtered using these parameters:

| Param                         | Function                                           | Required   | Default                   |
| ----------------------------- | -------------------------------------------------- | ---------- | ------------------------- |
| `global_master_campaign_id[]` | Returns the search metrics for campaign_id list    | `OPTIONAL` |                           |

#### Example Dev Curls:

###### Retrieve data for a given GMAID and campaign_id (list)

```
curl --location --request GET 'https://data-connect-staging.gannettdigital.com/client_reports/sub_category_search_metrics/TEST_1?global_master_campaign_id[]=USA_1234&global_master_campaign_id[]=USA_5678' \
--header 'Authorization: reachanalyticsreportingservicetoken'
```

Report data is returned as JSON e.g.:

```json
{
  "report_type": "sub_category_search_metrics",
  "report_data": {
    "campaigns": [
      {
        "id": "USA_1234",
        "name": "Winter 2023 Services",
        "search_metrics": [
          {
            "business_sub_category_id": 109,
            "business_sub_category_name": "Pet Adoption",
            "cp_click_avg": 1.3923322,
            "cp_click_std_dev": 0.6058227,
            "cp_click_median": 1.2725656,
            "cp_click_16": 0.8285518,
            "cp_click_83": 2.0893919,
            "cp_lead_avg": 3.2245355,
            "cp_lead_std_dev": 1.1849484,
            "cp_lead_median": 3.1994891,
            "cp_lead_16": 1.899118,
            "cl_lead_83": 4.5574494,
            "cp_call_avg": 3.5352362,
            "cp_call_std_dev": 1.1795996,
            "cp_call_median": 3.6362695,
            "cp_call_16": 2.0955609,
            "cp_call_83": 4.8079478,
            "ctr_avg": 0.0971623,
            "ctr_std_dev": 0.0635744,
            "ctr_median": 0.08084,
            "ctr_16": 0.05068,
            "ctr_83": 0.13217,
            "ctl_avg": 5.9390747,
            "ctl_std_dev": 3.3800717,
            "ctl_median": 5.07692,
            "ctl_16": 2.6,
            "ctl_83": 9.99999,
            "cp_qual_lead_avg": 3.4885108,
            "cp_qual_lead_std_dev": 1.1449597,
            "cp_qual_lead_median": 3.6101068,
            "cp_qual_lead_16": 2.0943302,
            "cp_qual_lead_83": 4.6171976,
            "budget_avg": 1756.7639257,
            "budget_std_dev": 907.119281,
            "budget_median": 1500.0,
            "budget_16": 800.0,
            "budget_83": 3000.0,
            "last_modified": "2023-05-04 19:01:08"
          },
          {
            "business_sub_category_id": 114,
            "business_sub_category_name": "Photography",
            "cp_click_avg": 1.3923322,
            "cp_click_std_dev": 0.6058227,
            "cp_click_median": 1.2725656,
            "cp_click_16": 0.8285518,
            "cp_click_83": 2.0893919,
            "cp_lead_avg": 3.2245355,
            "cp_lead_std_dev": 1.1849484,
            "cp_lead_median": 3.1994891,
            "cp_lead_16": 1.899118,
            "cl_lead_83": 4.5574494,
            "cp_call_avg": 3.5352362,
            "cp_call_std_dev": 1.1795996,
            "cp_call_median": 3.6362695,
            "cp_call_16": 2.0955609,
            "cp_call_83": 4.8079478,
            "ctr_avg": 0.0971623,
            "ctr_std_dev": 0.0635744,
            "ctr_median": 0.08084,
            "ctr_16": 0.05068,
            "ctr_83": 0.13217,
            "ctl_avg": 5.9390747,
            "ctl_std_dev": 3.3800717,
            "ctl_median": 5.07692,
            "ctl_16": 2.6,
            "ctl_83": 9.99999,
            "cp_qual_lead_avg": 3.4885108,
            "cp_qual_lead_std_dev": 1.1449597,
            "cp_qual_lead_median": 3.6101068,
            "cp_qual_lead_16": 2.0943302,
            "cp_qual_lead_83": 4.6171976,
            "budget_avg": 1756.7639257,
            "budget_std_dev": 907.119281,
            "budget_median": 1500.0,
            "budget_16": 800.0,
            "budget_83": 3000.0,
            "last_modified": "2023-05-04 19:01:08"
          }
        ]
      }
    ]
  }
}
```

if there is no campaign found, a response 403 will be returned with this body:

```json
{
  "report_type": "sub_category_search_metrics",
   "message": "one or more invalid campaigns specified (does not exist, or not valid for this advertiser)"
  }
}
```

if there is a campaign found, but no search metrics, empty array search metrics node will be returned:

```json
{
  "report_type": "sub_category_search_metrics",
  "report_data": {
    "campaigns": [
      {
       "campaign_id": "USA_1234",
        "campaign_name": "Winter 2023 Services",
        "search_metrics": []
      }
    ]
  }
}
```
