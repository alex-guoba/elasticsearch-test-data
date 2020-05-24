## script

### [Reference]('https://www.elastic.co/guide/en/elasticsearch/reference/7.7/modules-scripting.html')

### tips
- Post方式需要对source中内容encoding,比如doc['age']会报错,简单起见统一使用.值的方式访问

- It’s important to understand the difference between doc['my_field'].value and params['_source']['my_field']. The first, using the doc keyword, will cause the terms for that field to be loaded to memory (cached), which will result in faster execution, but more memory consumption. Also, the doc[...] notation only allows for simple valued fields (you can’t return a json object from it) and makes sense only for non-analyzed or single term based fields. However, using doc is still the recommended way to access values from the document, if at all possible, because _source must be loaded and parsed every time it’s used. Using _source is very slow.  

