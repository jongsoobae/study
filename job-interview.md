# Developer job interview

## 전산 기초

### 자료구조

* Hash
    * 데이터 검색 시 시간 복잡도
        * key 충돌이 없는 경우: O(1)
        * key 충돌이 있는 경우: O(n)
    * 데이터 삽입 시 시간 복잡도 

### 알고리즘

* Binary Search
* Quick Sort

## 웹 기초 

* [URL Encoding에 대해서 설명하시오.](./web/url_encoding.md)

## Python

* mutable과 immutable sequence를 각각 나열하시오.
    * mutable sequence : list, bytearray, array.array, collections.deque, and memoryview
    * immutable sequence : tuple, str, and bytes
* iterator vs generator

## Django

### General

* Web Server에서부터 Django로 request가 들어와서 response가 나가는 과정을 설명하시오.

### TDD

* TestCase와 TransactionTestCase의 차이점을 설명하시오.

### ORM

* [ORM으로 데이터가 존재하는지 확인하는 방법을 설명하시오.](../TIL_Python/Django/how_to_django/queryset_cache.md)
    * 데이터의 존재여부만 확인하는 경우.
    * 데이터의 존재여부를 확인한 후 해당 쿼리 결과를 사용하는 경우.
* 다음의 relation field의 경우 Table schema가 어떻게 만들어지는 설명하시오.
    * ForeignKey
    * OneToOne
    * ManyToMany
    
## JavaScript

* 다음 코드가 어떻게 동작할지 설명하시오. (대답했다면, 이벤트 루프와 연결지어서 답변 받을것)
    ```javascript
    console.log('Hi');
    setTimeout(function() {
        console.log('callback');
    }, 0);
    console.log('Bye');
    ```
* [Attribute vs Property](https://github.com/greenfrog82/TIL_JavaScript/tree/master/javascript/attr_vs_props)

## DB

### General

* [Join에 대해서 설명할 하시오.](./db/mysql/join/readme.md)
* Union
    * Union vs Union All
    * Union을 어떤 경우 활용하였는지 설명하시오. 

### MySQL

* 각각의 Engine들에 대해서 설명하시오.
* 트랜잭션이 많이 사용되 때 InnoDB를 사용해야하는 이유에 대해서 설명하시오.
    * MyISAM을 사용할 수 없는 이유는?
    * TokuDB를 사용할 수 없는 이유는?

## [RESTful Architecture](design/restful/readme.md)

* 서버 scale out관점에서 RESTful Architecture의 가장 중요한 특징이 무엇이며 왜 그렇게 생각하는지 설명하시오.
    * Steateless에 대해서 설명하는지 확인.
    * 이를 설명했다면, 이를 구현하기 위한 방법에 대해서 설명요구. 
* HATEOAS(Hypermedia as the engine of application state)에 대해서 설명하시오. 

## Coding Test

* [배열에서 중복된 원소 찾기](DailyCoding/etc/find_a_duplicated_value/readme.md)
* [덧셈의 합에 대응하는 중복되지 않는 배열 원소 구하기](DailyCoding/tree/master/etc/find_numbers_of_sum_equals_with_param/readme.md)