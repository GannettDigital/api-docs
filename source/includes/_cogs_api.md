# Advertiser COGS API

This endpoint retrieves the total impression, clicks and COGS for each publisher in your SEM campaign. The API is specific to ARS (BID 12735) and all the advertiser linked to this business in the USA platform. Data is available only for 2018 and beyond.

The totals can be summarized by month to date, week to date or by the day. E.g. Monthly totals: Start date :1/15/2019 – End date: 2/10/2019 date range will include 15 days in Jan and 10 days in Feb.

##### Parameters
The API accepts the request parameters listed below and is grouped by the interval size for each publisher.
| Parameter | Required | Description |
|---|---|---|
| start_date | yes | Restricts the results to those occurring on or after this date. |
| end_date | yes | Restricts the results to those occurring on or before this date. |
| interval_size | Use calendar_month or calendar_week to roll up the data points into calendar intervals <br><b>Default: 1 day per interval</b> |

#### Recommended usage pattern
The API supports up to 90 days (3 months) time window between the start_date and end_date request parameters. For more than 90 days of metrics the API should be called again by slicing the start_date and end_date into the recommend 90-day time window. For prior year’s data, request the API again with the same date range for the prior year.

#### HTTP Request
GET https:// api.reachlocalservices.com/client_reports/advertiser_cogs

#### Example Request
```
curl -X GET \
--url 'https://api.reachlocalservices.com/client_reports/advertiser_cogs?start_date=2019-01-
01&end_date=2019-03-31&interval_size=calendar_month \
--header 'Authorization: Bearer OAUTH_ACCESS_TOKEN' \
--header 'Content-Type: application/json'
```

##### Example Response
```javascript
{
  "report_data": {
    "report_type": "advertiser_cogs",
    "report_date": "2019-03-28",
    "business_id": "USA_12735",
    "params": {
      "end_date": "2019-03-31",
      "start_date": "2019-01-01",
      "interval_size": "calendar_month"
    },
    "advertisers": [
      {
        "advertiser_code": "8976",
        "advertiser_name": "Jack Howk",
        "campaigns": []
      },
      {
        "advertiser_code": "8927",
        "advertiser_name": "ARS Cleveland",
        "campaigns": [
          {
            "campaign_name": "SEM | ARS Cleveland | Branded",
            "global_master_campaign_id": "USA_1985531",
            "type": "search",
            "status": "running",
            "currency": "USD",
            "intervals": [
              {
                "start_date": "2019-01-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 0,
                    "clicks": 0,
                    "COGS": 0
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 682,
                    "clicks": 81,
                    "COGS": 391.56
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 215,
                    "clicks": 9,
                    "COGS": 17.88
                  }
                ]
              },
              {
                "start_date": "2019-02-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 0,
                    "clicks": 0,
                    "COGS": 0
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 610,
                    "clicks": 77,
                    "COGS": 361.32
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 172,
                    "clicks": 15,
                    "COGS": 29.38
                  }
                ]
              },
              {
                "start_date": "2019-03-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 0,
                    "clicks": 0,
                    "COGS": 0
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 603,
                    "clicks": 58,
                    "COGS": 281.53
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 126,
                    "clicks": 9,
                    "COGS": 11.22
                  }
                ]
              }
            ],
            "totals_by_publisher": [
              {
                "wp_name": "CitySearch",
                "impressions": 0,
                "clicks": 0,
                "COGS": 0
              },
              {
                "wp_name": "Google",
                "impressions": 1895,
                "clicks": 216,
                "COGS": 1034.41
              },
              {
                "wp_name": "Yahoo Bing Search",
                "impressions": 513,
                "clicks": 33,
                "COGS": 58.48
              }
            ],
            "totals": {
              "impressions": 2408,
              "clicks": 249,
              "COGS": 1092.89
            }
          },
          {
            "campaign_name": "SEM | ARS Cleveland | Emergency Plumbing",
            "global_master_campaign_id": "USA_2447310",
            "type": "search",
            "status": "running",
            "currency": "USD",
            "intervals": [
              {
                "start_date": "2019-01-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 5,
                    "clicks": 5,
                    "COGS": 12.46
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 4067,
                    "clicks": 131,
                    "COGS": 2238.89
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 3789,
                    "clicks": 61,
                    "COGS": 413.54
                  },
                  {
                    "wp_name": "Yahoo Gemini Search",
                    "impressions": 145,
                    "clicks": 5,
                    "COGS": 5.77
                  }
                ]
              },
              {
                "start_date": "2019-02-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 0,
                    "clicks": 0,
                    "COGS": 0
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 2247,
                    "clicks": 59,
                    "COGS": 662.08
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 2710,
                    "clicks": 43,
                    "COGS": 175.69
                  },
                  {
                    "wp_name": "Yahoo Gemini Search",
                    "impressions": 41,
                    "clicks": 2,
                    "COGS": 1.59
                  }
                ]
              },
              {
                "start_date": "2019-03-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 0,
                    "clicks": 0,
                    "COGS": 0
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 2711,
                    "clicks": 68,
                    "COGS": 1486.89
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 3674,
                    "clicks": 65,
                    "COGS": 436.54
                  },
                  {
                    "wp_name": "Yahoo Gemini Search",
                    "impressions": 5,
                    "clicks": 0,
                    "COGS": 0
                  }
                ]
              }
            ],
            "totals_by_publisher": [
              {
                "wp_name": "CitySearch",
                "impressions": 5,
                "clicks": 5,
                "COGS": 12.46
              },
              {
                "wp_name": "Google",
                "impressions": 9025,
                "clicks": 258,
                "COGS": 4387.86
              },
              {
                "wp_name": "Yahoo Bing Search",
                "impressions": 10173,
                "clicks": 169,
                "COGS": 1025.77
              },
              {
                "wp_name": "Yahoo Gemini Search",
                "impressions": 191,
                "clicks": 7,
                "COGS": 7.36
              }
            ],
            "totals":
              {
                "impressions": 19394,
                "clicks": 439,
                "COGS": 5433.45
              }
          },
          {
            "campaign_name": "SEM | ARS Cleveland | Plumbing",
            "global_master_campaign_id": "USA_1983382",
            "type": "search",
            "status": "running",
            "currency": "USD",
            "intervals": [
              {
                "start_date": "2019-01-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 0,
                    "clicks": 0,
                    "COGS": 0
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 12362,
                    "clicks": 335,
                    "COGS": 4305.06
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 3569,
                    "clicks": 74,
                    "COGS": 589.61
                  }
                ]
              },
              {
                "start_date": "2019-02-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 0,
                    "clicks": 0,
                    "COGS": 0
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 11828,
                    "clicks": 245,
                    "COGS": 2766.39
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 3284,
                    "clicks": 77,
                    "COGS": 563.77
                  }
                ]
              },
              {
                "start_date": "2019-03-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 0,
                    "clicks": 0,
                    "COGS": 0
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 13842,
                    "clicks": 240,
                    "COGS": 3608.33
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 2721,
                    "clicks": 53,
                    "COGS": 435.14
                  }
                ]
              }
            ],
            "totals_by_publisher": [
              {
                "wp_name": "CitySearch",
                "impressions": 0,
                "clicks": 0,
                "COGS": 0
              },
              {
                "wp_name": "Google",
                "impressions": 38032,
                "clicks": 820,
                "COGS": 10679.78
              },
              {
                "wp_name": "Yahoo Bing Search",
                "impressions": 9574,
                "clicks": 204,
                "COGS": 1588.52
              }
            ],
            "totals": {
              "impressions": 47606,
              "clicks": 1024,
              "COGS": 12268.3
            }
          },
          {
            "campaign_name": "SEM | ARS Cleveland | Plumbing Competitor",
            "global_master_campaign_id": "USA_2022257",
            "type": "search",
            "status": "running",
            "currency": "USD",
            "intervals": [
              {
                "start_date": "2019-01-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 46,
                    "clicks": 46,
                    "COGS": 115
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 8015,
                    "clicks": 316,
                    "COGS": 3980.48
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 2912,
                    "clicks": 61,
                    "COGS": 281.46
                  }
                ]
              },
              {
                "start_date": "2019-02-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 69,
                    "clicks": 69,
                    "COGS": 172.5
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 8435,
                    "clicks": 373,
                    "COGS": 4937.6
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 3528,
                    "clicks": 65,
                    "COGS": 267.72
                  }
                ]
              },
              {
                "start_date": "2019-03-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 80,
                    "clicks": 80,
                    "COGS": 200
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 7225,
                    "clicks": 324,
                    "COGS": 4368.5
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 2071,
                    "clicks": 55,
                    "COGS": 261.03
                  }
                ]
              }
            ],
            "totals_by_publisher": [
              {
                "wp_name": "CitySearch",
                "impressions": 195,
                "clicks": 195,
                "COGS": 487.5
              },
              {
                "wp_name": "Google",
                "impressions": 23675,
                "clicks": 1013,
                "COGS": 13286.58
              },
              {
                "wp_name": "Yahoo Bing Search",
                "impressions": 8511,
                "clicks": 181,
                "COGS": 810.21
              }
            ],
            "totals": {
              "impressions": 32381,
              "clicks": 1389,
              "COGS": 14584.29
            }
          },
          {
            "campaign_name": "SEM | ARS Cleveland | Sewers",
            "global_master_campaign_id": "USA_2424811",
            "type": "search",
            "status": "ended",
            "currency": "USD",
            "intervals": [
              {
                "start_date": "2019-01-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 7,
                    "clicks": 7,
                    "COGS": 17.12
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 10014,
                    "clicks": 238,
                    "COGS": 2322.46
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 4001,
                    "clicks": 91,
                    "COGS": 741.45
                  },
                  {
                    "wp_name": "Yahoo Gemini Search",
                    "impressions": 12843,
                    "clicks": 54,
                    "COGS": 184.52
                  }
                ]
              },
              {
                "start_date": "2019-02-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 0,
                    "clicks": 0,
                    "COGS": 0
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 2170,
                    "clicks": 52,
                    "COGS": 463.18
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 1340,
                    "clicks": 17,
                    "COGS": 165.57
                  },
                  {
                    "wp_name": "Yahoo Gemini Search",
                    "impressions": 27,
                    "clicks": 0,
                    "COGS": 0
                  }
                ]
              }
            ],
            "totals_by_publisher": [
              {
                "wp_name": "CitySearch",
                "impressions": 7,
                "clicks": 7,
                "COGS": 17.12
              },
              {
                "wp_name": "Google",
                "impressions": 12184,
                "clicks": 290,
                "COGS": 2785.64
              },
              {
                "wp_name": "Yahoo Bing Search",
                "impressions": 5341,
                "clicks": 108,
                "COGS": 907.02
              },
              {
                "wp_name": "Yahoo Gemini Search",
                "impressions": 12870,
                "clicks": 54,
                "COGS": 184.52
              }
            ],
            "totals": {
              "impressions": 30402,
              "clicks": 459,
              "COGS": 3894.3
            }
          }
        ]
      },
      {
        "advertiser_code": "8130",
        "advertiser_name": "Beutler Air Conditioning and Plumbing",
        "campaigns": [
          {
            "campaign_name": "SEM | Beutler (ARS) | Branded",
            "global_master_campaign_id": "USA_1937621",
            "type": "search",
            "status": "running",
            "currency": "USD",
            "intervals": [
              {
                "start_date": "2019-01-01",
                "data": [
                  {
                    "wp_name": "Google",
                    "impressions": 1182,
                    "clicks": 216,
                    "COGS": 713.74
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 1281,
                    "clicks": 42,
                    "COGS": 149.12
                  }
                ]
              },
              {
                "start_date": "2019-02-01",
                "data": [
                  {
                    "wp_name": "Google",
                    "impressions": 1070,
                    "clicks": 173,
                    "COGS": 726.94
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 1324,
                    "clicks": 43,
                    "COGS": 154.59
                  }
                ]
              },
              {
                "start_date": "2019-03-01",
                "data": [
                  {
                    "wp_name": "Google",
                    "impressions": 790,
                    "clicks": 122,
                    "COGS": 506.23
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 1050,
                    "clicks": 27,
                    "COGS": 93.99
                  }
                ]
              }
            ],
            "totals_by_publisher": [
              {
                "wp_name": "Google",
                "impressions": 3042,
                "clicks": 511,
                "COGS": 1946.91
              },
              {
                "wp_name": "Yahoo Bing Search",
                "impressions": 3655,
                "clicks": 112,
                "COGS": 397.7
              }
            ],
            "totals": {
              "impressions": 6697,
              "clicks": 623,
              "COGS": 2344.61
            }
          },
          {
            "campaign_name": "SEM | Beutler (ARS) | HVAC",
            "global_master_campaign_id": "USA_1939550",
            "type": "search",
            "status": "running",
            "currency": "USD",
            "intervals": [
              {
                "start_date": "2019-01-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 72,
                    "clicks": 72,
                    "COGS": 77.6
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 34129,
                    "clicks": 460,
                    "COGS": 6344.45
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 7620,
                    "clicks": 226,
                    "COGS": 992.76
                  }
                ]
              },
              {
                "start_date": "2019-02-01",
                "data": [
                  {
                    "wp_name": "CitySearch",
                    "impressions": 37,
                    "clicks": 37,
                    "COGS": 67.76
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 32630,
                    "clicks": 466,
                    "COGS": 7714.08
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 6263,
                    "clicks": 186,
                    "COGS": 1334.24
                  }
                ]
              },
              {
                "start_date": "2019-03-01",
                "data": [
                  {
                    "wp_name": "Google",
                    "impressions": 29134,
                    "clicks": 360,
                    "COGS": 5770.91
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 5209,
                    "clicks": 174,
                    "COGS": 1162.73
                  }
                ]
              }
            ],
            "totals_by_publisher": [
              {
                "wp_name": "CitySearch",
                "impressions": 109,
                "clicks": 109,
                "COGS": 145.36
              },
              {
                "wp_name": "Google",
                "impressions": 95893,    
                "clicks": 1286,
                "COGS": 19829.44
              },
              {
                "wp_name": "Yahoo Bing Search",
                "impressions": 19092,
                "clicks": 586,
                "COGS": 3489.73
              }
            ],
            "totals": {
              "impressions": 115094,
              "clicks": 1981,
              "COGS": 23464.53
            }
          },
          {
            "campaign_name": "SEM | Beutler (ARS) | Plumbing",
            "global_master_campaign_id": "USA_1939558",
            "type": "search",
            "status": "running",
            "currency": "USD",
            "intervals": [
              {
                "start_date": "2019-01-01",
                "data": [           
                  {
                    "wp_name": "CitySearch",
                    "impressions": 0,
                    "clicks": 0,
                    "COGS": 0
                  },
                  {
                    "wp_name": "Google",
                    "impressions": 12145,
                    "clicks": 214,
                    "COGS": 2344.08
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 2239,
                    "clicks": 73,
                    "COGS": 469.28
                  }
                ]
              },
              {
                "start_date": "2019-02-01",
                "data": [
                  {
                    "wp_name": "Google",
                    "impressions": 741,
                    "clicks": 13,
                    "COGS": 138.04
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 116,
                    "clicks": 3,
                    "COGS": 13.52
                  }
                ]
              },
              {
                "start_date": "2019-03-01",
                "data": [
                  {
                    "wp_name": "Google",
                    "impressions": 656,
                    "clicks": 6,
                    "COGS": 57.79
                  },
                  {
                    "wp_name": "Yahoo Bing Search",
                    "impressions": 105,
                    "clicks": 7,
                    "COGS": 57
                  }
                ]
              }
            ],
            "totals_by_publisher": [
              {
                "wp_name": "CitySearch",
                "impressions": 0,
                "clicks": 0,
                "COGS": 0
              },
              {
                "wp_name": "Google",
                "impressions": 13542,
                "clicks": 233,
                "COGS": 2539.91
              },
              {
                "wp_name": "Yahoo Bing Search",
                "impressions": 2460,
                "clicks": 83,       
                "COGS": 539.8
              }
            ],
            "totals": {
              "impressions": 16002,
              "clicks": 316,
              "COGS": 3079.71
            }
          }
        ]
      },
    ]
  }
}

```
