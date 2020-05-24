curl  -H "Content-Type: application/json"  -XGET 'localhost:9200/test_data/_search?pretty' -d '
{
  "query": {
    "match": {
      "remark": "text3"
    }
  },
  "aggs": {
    "aggregation_name": {
      "avg": {
        "field": "age"
      }
    }
  }
}
'
