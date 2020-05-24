curl  -H "Content-Type: application/json"  -XGET 'localhost:9200/test_data/_search?pretty' -d '
{
    "query": {
        "match_all": {
        }
    },
    "highlight": {
        "fields" : {
            "topic" : {}
        }
    }
}
'
