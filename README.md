dbt_food_delivery/
│
├── models/
│   ├── staging/
│   │   ├── stg_customers.sql
│   │   ├── stg_restaurants.sql
│   │   ├── stg_orders.sql
│   │   └── stg_payments.sql
│   ├── intermediate/
│   │   ├── int_order_payments.sql
│   ├── marts/
│   │   ├── core/
│   │   │   ├── dim_customers.sql
│   │   │   ├── dim_restaurants.sql
│   │   │   └── fact_orders.sql
│   │   └── reporting/
│   │       └── rpt_revenue_by_city.sql
│
├── seeds/
│   └── customers.csv ...
│
├── snapshots/
│
├── macros/
│
├── tests/
│
├── dbt_project.yml
└── models/schema.yml
└── target/