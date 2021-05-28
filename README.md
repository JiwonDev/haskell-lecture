# haskell-lecture
고급프로그래밍(하스켈)  수업용 깃허브

## Hello Haskell!

**순수 함수형 프로그래밍**의 정수, 함수형의 대가인 논리학자 Haskell Curry의 이름을 빌린 멋진 언어입니다.

심지어 함수형 프로그래밍의 용어 중에 Currying이라는 표현이 있죠. 이거 저 사람 이름에서 가져온 용어입니다.

[##_Image|kage@cRl5cc/btq2OOY0axy/fn2juERYVELKDxsdjv6VK1/img.png|alignCenter|data-filename="화면 캡처 2021-04-19 234552.png" data-origin-width="420" data-origin-height="196" data-ke-mobilestyle="widthContent"|Haskell Curry||_##]

C언어와 비슷한 선상에서 1990년도에 출발하였지만 가끔 보면 이미 망해서 하스켈 개발자들이 다 없어진 것이 아닐까 의심되는 거북이급 업데이트 속도와 메인 코드 작성부터 어려운 정신나간 러닝 커브는 언제나 개발 언어 점유율 순위 최하위권을 앞다투고 있습니다. 하지만 의외로 매니아층이 두터우며 2020년도까지 꾸준히 업데이트를 해주고 있죠.

[##_Image|kage@ba9nFB/btq2MjEaoIS/qdtclPAfZSGMpDY1lIEok0/img.png|alignCenter|data-filename="e27c44a49161e544575456658ba5ab388a126ec8cca2a801b353d7d5f26b0191d6b8808365f484a8d94269dc1be5cf8b02e387d80def301856283696b2a27f59258d471da0cf48c338f7339b927a49bf060f5f0a5d35e24af9aaf04572f25c61.png" data-origin-width="225" data-origin-height="321" data-ke-mobilestyle="widthContent"|아무튼 아주 멋진 언어입니다.||_##]

최근 들어서 Side-Effect ( 외부 환경에 따라 결과값이 달라지는 경우 )의 제거와 메모리와 변수를 사용하지 않고 동작을 논리적으로 적어 함수의 재사용성과 가독성을 높이는 함수형 프로그래밍의 사용이 많이 늘었습니다. 그래서 대부분의 모던한 언어들은 함수형 프로그래밍을 지원해주고 있죠. ~그래도 하스켈은 안씁니다~.

하지만 지금 이 글을 읽고 있다는 건 어찌되었건 하스켈을 배우고 싶다는 마음이 있다는 거겠죠.

함께 하스켈에 대해 알아봅시다.

## Haskell 3줄 요약

-   지연된 계산 평가(lazy evaluation), 순수한 함수형(functional), 정적 타입 지정 (statically typed) 언어
-   함수형 프로그래밍 연구에 필요한 공통 언어 역할을 하기 위해 좋은 아이디어를 모아서 만든 언어
-   하지만 개념만 갖다쓰지 아무도 하스켈을 직접 쓰지는 않는다고 한다.

## 함수형 프로그래밍이란?

-   순수함수, 외부 환경(side effect)에 의해 출력이 바뀌는 일이 없음. 함수의 출력 값은 오로지 입력 값에만 영향 받음.
-   함수가 1급 객체(first class)로 취급 받음. 쉽게 말해 함수 자체를 변수에 저장하거나 반환/전달 할 수 있음.
-   명령을 실행한다는 개념보다는 식(expresison)을 정의하고 그 식의 값을 (eval) 구하는 개념으로 코드 구성.

## 함수형 프로그래밍 예제

현재 함수형을 가장 잘 활용하고있는 대표적인 언어는 자바스크립트.

자바스크립트 예제를 통해 기존의 프로그래밍 방식과 함수형이 어떻게 다른지 비교해보자.

일반적인 자바스크립트 코드  
// 전통적인 명령형(C언어) 방식으로, 변수로 메모리에 접근하고 코드를 한줄씩 실행한다.

```
// names = [ 데이터1, 데이터2 ... ]
const result = [];
 
for (let i = 0; i < names.length; i += 1) {
  const name = names[i];
  const spaceName = name.replace(/(_|-)/, " ");
  const splitName = spaceName.split(" ");
 
  for (let j = 0; j < splitName.length; j += 1) {
    let partName = splitName[j];
    partName = partName.charAt(0).toUpperCase() + partName.slice(1);
    splitName[j] = partName;
  }
 
  result.push(splitName.join(' '))
}
 
result.sort();
```

함수형 자바스크립트 코드  
// 함수를 **1급 객체(first-class citizen)**로 취급한다. 쉽게말해 변수처럼 메모리에 저장하고 주고 받을 수 있다.  
// 부수효과(side-effect)를 없애기 위해 메모리를 읽는 것 이외에 직접 건드리지 않는다.

```
// names = [ 데이터1, 데이터2 ... ]
const replaceSpace = (str) => {
  return str.replace(/(_|-)/, ' ');
}
 
const startCase = (str) => {
  return str.charAt(0).toUpperCase() + str.slice(1);
}
 
const changePartStartCase = (str) => {
  return str.split(' ').map(startCase).join(' ')
}
 
names // names 객체를 읽어들인다. 직접 메모리를 수정하지 않는다.
.map(name => replaceSpace(name)) // 미리 정의해둔 함수를 적용시킨다.
.map(name => changePartStartCase(name))
.sort() 
// map()은 해당 객체를 읽어들여 새로운 객체를 만든다.
// 즉 여기에있는 sort()는 names를 건드리지 않는다.
```

## 순수함수란

하스켈 식은 순수함수를 사용하기에 항상 참조 투명(referentially transparent)하다.

말이 상당히 어려운데, 이를 풀어서 말하면 다음과 같다.

-   값의 상태 변경(mutation)이 없다. 모든 변수, 데이터 구조는 초기화 이후 불변(immutable)한 값이다.
-   함수에 영향을 주는 외부환경(side effect)이 없다.  
    (메모리 값을 직접 수정하지 않는다. 전역변수를 변경하거나 메모리 I/O등을 발생 시키지 않는다.)
-   즉, 같은 함수에 같은 인자를 전달하면 언제나 같은 결과 값을 보장받는 **순수한 함수 그 자체**이다.

## 지연 계산 평가 (Lazy Evaluation)

프로그램에서 코드가 실행 될 때, 값을 평가(eval)하는 방법에는 여러가지가 있다.

하스켈에서는 Lazy하게 함수를 평가한다. 쉽게 말해 함수의 값이 실제로 사용하기 전에 미리 계산하지 않는다.

제곱 함수 square을 실행시켜 값을 얻는 과정을 살펴보자.

```
#strict - 식이 나올 때 마다 바로 값을 계산하는 방법
 square(3 + 4)
 square(7)
 7 * 7
 49
 
#Lazy - 최대한 늦추다가 나중에 계산하는 방법
 square(3 + 4)
 (3 + 4) * (3 + 4)
 7 * (3 + 4)
 7 * 7
 49
```

Lazy하게 값을 평가하면

-   계산할 때 필요한 추가 메모리를 효율적으로 관리할 수 있고
-   여러 함수를 쉽게 합치고 논리적으로 식을 표현(ex 갯수가 무한인 리스트 접근) 할 수 있으며
-   프로그램에서 특정 기능을 하는 함수를 쉽게 분리할 수 있고 실행 도중 오류의 상태를 파악할 수 있다

하지만 프로그램의 시간/메모리 사용 패턴을 파악하기 어려워지고, 미루고 미루다가 마지막에 계산 과정에서 모든 연산을 수행하는 것이 시스템에 큰 부담을 줄 수 있다는 단점이 있다.
