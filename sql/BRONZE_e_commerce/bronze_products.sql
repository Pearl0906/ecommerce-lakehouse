CREATE OR REFRESH STREAMING TABLE bronze_products
AS SELECT *,
  current_timestamp() AS _ingestion_timestamp,
  _metadata.file_name AS _source_file
FROM STREAM read_files(
  '/Volumes/e-commerce/ecommerce/raw_data/ecommerce_dataset/',
  format => 'csv',
  header => true,
  schemaLocation => '/Volumes/e-commerce/ecommerce/raw_data/ecommerce_dataset/products.csv',
  fileNamePattern => 'products.csv'
);