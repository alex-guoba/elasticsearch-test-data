# enable fieldata on text filed
curl  -H "Content-Type: application/json"  -XPUT 'localhost:9200/test_data/_mapping?pretty' -d '
{
  "properties": {
    "name": { 
      "type":     "text",
      "fielddata": true
    }
  }
}
'

# string_stats
curl  -H "Content-Type: application/json"  -XGET 'localhost:9200/test_data/_search?pretty' -d '
{
  "size": 0,
  "aggs": {
    "aggregation_name": {
      "string_stats": {
        "field": "name"
      }
    }
  }
}
'
