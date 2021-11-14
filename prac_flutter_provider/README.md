# prac_flutter_provider

플러터의 State 관리를 위한 패키지인 Provider의 사용에 대한 프로젝트입니다.<br>

아래 참고 자료 두 번째 링크의 example을 참고해 Provider의 사용을 눈에 익히시면 도움이 됩니다.<br>
해당 프로젝트는 File Structure에 따라 분류를 하게 되어 처음 학습하실 때, 한번에 파악하시기 어려우실 겁니다.<br>

# Provider

## 참고 자료

- https://pub.dev/packages/provider
- https://github.com/rrousselGit/provider
- https://terry1213.github.io/flutter/flutter-provider/

<br>

## State

[Flutter State]() 에서 Widget의 State에 대한 자세한 설명을 진행합니다. (2021.11.15 - 상태 : 미작성)

간단히 State란 App의 동작 기간 중 값이 변할 수 있는 변수들 입니다.

<br>

## Provider

한 위젯에서 사용되는 State가 다른 위젯에 영향을 미쳐야하는 경우가 있습니다.<br>
이 경우 단적으로 공통되는 부모 위젯을 찾아 State 변수를 선언하고, 해당 위젯들의 조상 Widget들을 통해 넘겨주는 방법을 사용할 수 있습니다.<br>
하지만 이와 같은 방법을 사용한다면, 위젯간 상태를 전달하기 위한 그 과정이 길어지며 관계 파악에 있어 어려움이 따릅니다.<br>

위의 문제를 해결하기 위해 등장한 것이 Provider입니다.<br>

Provider는 ChangeNotifier를 이용해 하위 위젯들에 State의 전파를 돕는 패키지 입니다.<br>
Provider에 State 값이 존재하고, 이를 사용하는 위젯들은 Consumer라고 칭합니다.<br>
그 쓰임은 Widget의 build 시 사용되는 context를 통해 이루어집니다.<br>

<br>

```dart
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: const MyApp(),
    ),
  );
}
```

<br>

예제에서는 App의 최상단에서 Counter 클래스를 Provider로 등록해 사용하고 있습니다.<br>
MultiProvider는 여러 개의 Provider를 등록하는 경우 사용합니다.<br>
단일 Provider를 등록한다면 Provider를 사용합니다.<br>

<br>

```dart
context.read<provider_name>().provider_state;
context.watch<provider_name>().provider_state;

context.read<provider_name>().provider_function();
context.watch<provider_name>().provider_function();
```

<br>

위와 같은 형식으로 Provider를 사용하게 됩니다.<br>
context는 전체 Widget tree에서 현재 위젯의 위치를 알려주는 존재입니다.<br>

context에서 Provider에 대해 read를 하는 것은 해당 값 혹은 함수의 변화를 그저 읽기만 하는 것입니다.<br>
읽어오기만을 진행하기 때문에, provider의 State에 변화가 생겨도 consumer는 다시 build를 하지 않습니다.<br>

반면, watch를 하는 것은 해당 값 혹은 함수의 변화를 지켜보다 변화한다면, Consumer 또한 다시 build를 진행합니다.<br>

주로, State 값에 따라 consumer 위젯이 달라져야 한다면 watch를 사용합니다.<br>
또한 읽어와서 실행만하면 되는 함수의 경우는 read를 사용하고, 값을 읽어오기마 하면 되는 state의 경우 read를 사용합니다.<br>

<br>

## 비고

예시 코드에는 DiagnosticableTreeMixin 이라는 Mixin을 사용했습니다.<br>
이는 개발자 도구에서 State를 파악하기 위함으로, 필수적으로 사용할 이유는 없습니다.<br>
