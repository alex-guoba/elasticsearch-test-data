
echo "post script."
curl -X POST "localhost:9200/_scripts/calculate-score?pretty" -H 'Content-Type: application/json' -d'
{
      "script": {
          "lang": "painless",
              "source": "Math.log(_score * 2) + params.my_modifier"
                }
        }
'

echo "get script."
curl -X GET "localhost:9200/_scripts/calculate-score?pretty" -H 'Content-Type: application/json' 


echo "use script."
curl -X GET "localhost:9200/test_data/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "size": 2,
  "_source": [ "last_update", "name", "age", "topic" ],
  "query": {
    "script_score": {
      "query": {
        "match": {
            "remark": "text3"
        }
      },
      "script": {
        "id": "calculate-score",
        "params": {
          "my_modifier": 2
        }
      }
    }
  }
}
'

