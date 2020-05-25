
## Matric Aggregations


### [Fielddata](https://www.elastic.co/guide/en/elasticsearch/reference/current/fielddata.html)

Fielddata can consume a lot of heap space, especially when loading high cardinality text fields. Once fielddata has been loaded into the heap, it remains there for the lifetime of the segment. Also, loading fielddata is an expensive process which can cause users to experience latency hits. This is why fielddata is disabled by default.


### [Top Heats](https://www.elastic.co/guide/en/elasticsearch/reference/current/search-aggregations-metrics-top-hits-aggregation.html)

Top Heats Aggregation用于分桶之后的TopN查找, 可以分为两步:
1. 分桶
  "terms"用于指定分桶的字段和桶大小.当size小于实际分桶字段的维度值时,会丢弃部分维度的数据.
2. Top Match
  "size"指定每个桶提取的topN的记录数,"sort"指定么个桶内提取Top N的条件,默认按score排序提取.注意sort是个数组
