# 심볼릭 링크와 하드 링크에 대해서

__[[리눅스/유닉스] 심볼릭 링크와 하드 링크의 차이](http://www.myservlab.com/64)에 워낙 정리가 잘되어 있기 때문에 본 문서에는 간단한 개념과 사용법만 정리하였다.__

## 심볼릭 링크

Windows 시스템에서의 바로가기와 완전히 동일한 기능이다. 다음과 같은 명령을 통해 생성된다. 

```
ln -s <target-file|target-directory> <link-file|link-directory>
```

**[주의]**

파일과 디렉토리 모두와 다른 파일 시스템의 파일과 디렉토리 역시 심볼릭 링크를 생성할 수 있으며, 단순히 바로가기를 만들어 주는 것이기 때문에 원본 파일을 삭제하면 사용할 수 없다.
하드링크에 비해서는 속도가 느리며, 용량도 좀 더 필요로 한다.

## 하드 링크

원본 파일을 가리키는 또 다른 파일을 만드는 것이다. 프로그래밍으로 이야기하면 reference 변수를 만드는 것과 같다. 
다음과 같은 명령ㅇ르 통해 생성된다. 

```
ln <target-file> <link-file>
```

**[주의]**

심볼릭 링크와는 달리 오직 같은 파일시스템의 파일만을 참조할 수 있다. 하지만, 속도가 빠르고 용량도 덜 차지않다.


## 참조

* [[리눅스/유닉스] 심볼릭 링크와 하드 링크의 차이](http://www.myservlab.com/64)