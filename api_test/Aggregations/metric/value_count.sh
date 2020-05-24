curl  -H "Content-Type: application/json"  -XGET 'localhost:9200/test_data/_search?pretty' -d '
{
  "size": 0,
  "aggs": {
    "aggregation_name": {
      "value_count": {
        "field": "age"
      }
    }
  }
}
'
