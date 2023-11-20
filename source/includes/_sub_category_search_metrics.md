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
        "cp_click_std_dev": 0.6058227,
        "cp_click_median": 1.2725656,
        "cp_click_16": 0.8285518,
        "cp_click_83": 2.0893919,
        "cp_lead_avg": 3.2245355,
        "cp_lead_std_dev": 1.1849484,
        "cp_lead_median": 3.1994891,
        "cp_lead_16": 1.8991180,
        "cl_lead_83": 4.5574494,
        "cp_call_avg": 3.5352362,
        "cp_call_std_dev": 1.1795996,
        "cp_call_median": 3.6362695,
        "cp_call_16": 2.0955609,
        "cp_call_83": 4.8079478,
        "ctr_avg": 0.0971623,
        "ctr_std_dev": 0.0635744,
        "ctr_median": 0.0808400,
        "ctr_16": 0.0506800,
        "ctr_83": 0.1321700,
        "ctl_avg": 5.9390747,
        "ctl_std_dev": 3.3800717,
        "ctl_median": 5.0769200,
        "ctl_16": 2.6000000,
        "ctl_83": 9.9999900,
        "cp_qual_lead_avg": 3.4885108,
        "cp_qual_lead_std_dev": 1.1449597,
        "cp_qual_lead_median": 3.6101068,
        "cp_qual_lead_16": 2.0943302,
        "cp_qual_lead_83": 4.6171976,
        "budget_avg": 1756.7639257,
        "budget_std_dev": 907.1192810,
        "budget_median": 1500.0000000,
        "budget_16": 800.0000000,
        "budget_83": 3000.0000000,
        "last_modified": "2023-05-04 19:01:08"
      }
  }
}
```
