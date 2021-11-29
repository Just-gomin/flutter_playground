# prac_flutter_bloc

Flutter Architecture 중 하나인 BLoC 패턴에 대해 정리했습니다.<br><br>

해당 프로젝트의 소스는 패키지와 함께 제공되는 예제와 참고자료 세번째 링크 글을 따라하며 작성되었습니다.<br>
패키지와 함께 제공되는 예제는 CounterApp이라 칭하고, 세번째 링크 글에서 소개된 프로젝트는 MovieApp이라 칭하겠습니다.<br>



MovieApp에서는 TMDB API를 사용하고 있습니다. 이와 같은 프로젝트에 대한 설명은 세번째 링크로 이동해서 확인하시기 바랍니다.

<br>

## 참고 자료
- https://pub.dev/packages/flutter_bloc
- https://pub.dev/documentation/flutter_bloc/latest/
- https://booiljung.github.io/technical_articles/flutter/state_management/architecture_your_flutter_project_using_bloc_pattern.html
- https://beomseok95.tistory.com/312

<br>

## 작성 시점에 사용한 Package 이름과 버전 정보

```yaml

dependencies:
  flutter:
    sdk: flutter

  flutter_bloc: ^8.0.0
  rxdart: ^0.27.3
  http: ^0.13.4
```

<br>

# Bloc

