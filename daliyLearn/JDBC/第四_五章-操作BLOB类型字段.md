## 第四章-操作BLOB类型字段

1h

### BLOB类型

|类型|大小|
|-|-|
|TinyBlob | 255|
|Blob |   65K|
|MediumBlob | 16M|
|LongBlob  |  4G|

## 第五章: 批量数据操作

update/delete本身就具有批量操作的效果

此时的批量操作,主要指的是批量插入,使用PreparedStatement如何实现更高效的批量插入?

PreparedStatement vs Statement

1. PreparedStatement是Statement的子接口
2. 避免了拼接/繁琐
3. 避免了sql注入问题
4. 代码的可读性和维护性高
5. 实现了预编译,性能高
6. PreparedStatement对Blob和批量数据进行操作
