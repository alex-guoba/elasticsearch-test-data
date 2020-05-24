curl -X GET "localhost:9200/test_data/_search?pretty" -H 'Content-Type: application/json' -d'
{
    "query" : {
        "match_all": {}
    },
    "script_fields" : {
        "test1" : {
            "script" : {
                "lang": "painless",
                "source": "doc.age.value * 2"
            }
        },
        "test2" : {
            "script" : {
                "lang": "painless",
                "source": "doc.age.value * params.factor",
                "params" : {
                    "factor"  : 2.0
                }
            }
        }
    }
}
'


