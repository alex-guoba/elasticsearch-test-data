curl -X GET "localhost:9200/test_data/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "query": {
    "function_score": {
      "script_score": {
        "script": {
          "lang": "painless",
          "source": "return (int)doc.age.value;"
        }
      }
    }
  }
}
'

