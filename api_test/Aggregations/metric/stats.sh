
# A multi-value metrics aggregation that computes stats over numeric values extracted from the aggregated documents. These values can be extracted either from specific numeric fields in the documents, or be generated by a provided script.
curl  -H "Content-Type: application/json"  -XGET 'localhost:9200/test_data/_search?pretty' -d '
{
  "size": 0,
  "aggs": {
    "aggregation_name": {
      "stats": {
        "field": "age"
      }
    }
  }
}
'