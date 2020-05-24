
## Matric Aggregations


### [Fielddata](https://www.elastic.co/guide/en/elasticsearch/reference/current/fielddata.html)

Fielddata can consume a lot of heap space, especially when loading high cardinality text fields. Once fielddata has been loaded into the heap, it remains there for the lifetime of the segment. Also, loading fielddata is an expensive process which can cause users to experience latency hits. This is why fielddata is disabled by default.
