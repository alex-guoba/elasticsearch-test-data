
# group the people by remark[text] and show the oldest 
curl  -H "Content-Type: application/json"  -XGET 'localhost:9200/test_data/_search?pretty' -d '
{
  "size": 0,
  "aggs": {
    "aggregation_name": {
      "terms": {
        "field": "remark",
        "size": 10
      },

      "aggs": {
        "aggregation_name": {
           "top_hits": {
             "size": 1,

             "sort": [
               {
                 "age": {
                   "order": "desc"
                 }
               }, 
               {
                 "last_updated": {
                   "order": "asc"
                 }
               } 
             ]
           }
        }
      }
    }
  }
}
'
