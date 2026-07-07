DROP TABLE IF EXISTS workspace.default.bronze_orders;

CREATE STREAMING TABLE bronze_orders
AS SELECT *,
  current_timestamp() AS _ingestion_timestamp,
  _metadata.file_name AS _source_file
FROM STREAM read_files(
  '/Volumes/e-commerce/ecommerce/raw_data/ecommerce_dataset/',
  format => 'csv',
  header => true,
  schemaLocation => '/Volumes/e-commerce/ecommerce/raw_data/ecommerce_dataset/orders.csv',
  fileNamePattern => 'orders.csv'
);