## Data

The raw dataset is not stored in this repository.

Download the ecommerce dataset and place the CSV files in:

```
data/raw/
```

Files required:

- users.csv
- products.csv
- orders.csv
- order_items.csv
- reviews.csv
- events.csv

When running in Databricks, upload these files to a Unity Catalog Volume or another supported storage location and update the file paths in the Bronze SQL scripts.