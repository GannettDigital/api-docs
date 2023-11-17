# Sub Category Search Metrics

This report returns the benchmark statistical results of a given business sub category.

Example Request:

```
client_reports/sub_category_search_metrics?business_sub_category=101
```

Report data is returned as JSON e.g.:

```json
{
  "report_type": "sub_category_search_metrics",
  "report_data": {
    "sub_category_search_metrics": {
        "cp_click_avg": 1.3923322,
        "cp_lead_avg": 3.2245355,
        "cp_call_avg": 3.5352362,
        "ctr_avg": 0.0971623,
        "ctl_avg": 5.9390747,
        "cp_qual_lead_avg": 3.4885108,
        "budget_avg": 1756.7639257,
      }
  }
}
```
