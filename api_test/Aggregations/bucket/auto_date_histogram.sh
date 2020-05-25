
curl  -H "Content-Type: application/json"  -XGET 'localhost:9200/test_data/_search?size=0&pretty' -d '
{
    "aggs" : {
        "sales_over_time" : {
            "auto_date_histogram" : {
                "field" : "last_updated",
                "buckets" : 10,
                "format" : "yyyy-MM-dd"
            }
        }
    }
}
