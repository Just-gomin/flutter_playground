# prac_flutter_structure

플러터 프로젝트의 기본적인 파일 구조에 대한 예제입니다.<br>

# Flutter Structure

## 참고 자료

- https://www.geeksforgeeks.org/flutter-file-structure/
- https://sothecode.tistory.com/13

<br><br>

## File Structure

파일 구조는 프로젝트 관리에 효율성을 가져다주는 역할을 합니다.<br>
해당 글에서 작성하는 내용은 일반적인 구성을 나타낼 뿐, 모든 프로젝트에 일률적으로 적용시킬 수 없습니다.<br>
프로젝트를 진행하며 알맞은 구조를 세워보시길 바랍니다.<br>

```python
Project
    - android
    - assets
    - ios
    - lib
        - models
        - providers
        - screens
        - utilities
        - widgets
    - test
    - web
    - pubspec.yaml
```

<br><br>

## Directories

### android/

Android App을 Build 하기 위해서 필요한 파일들이 있는 디렉토리입니다.

### assets/

- https://flutter.dev/docs/development/ui/assets-and-images

App에서 사용되는 아이콘, 이미지 등 외부 자료들이 있는 디렉토리입니다.

### ios

iOS App을 Build 하기 위해서 필요한 파일들이 있는 디렉토리입니다.

### lib

App의 소스코드가 있는 디렉토리입니다.<br>
거의 대부분의 개발이 해당 디렉토리에서 진행됩니다.

### lib/models

Widget에서 보여주기 위해 필요한 데이터를 모아두는 파일들이 있는 디렉토리입니다.

### lib/providers

외부와 통신해서 데이터를 수집하는 파일들이 있는 디렉토리입니다.

### lib/screens

App의 UI 부분 입니다. 화면 구성을 위한 파일들이 위치하는 디렉토리입니다.<br>
스크린의 종류가 많다면, 분류에 따라 더 세분화된 디렉토리들을 위치시킵니다.

### lib/utilities

App 내에서 사용하는 함수들과 logic 파일들이 위치하는 디렉토리입니다.

### lib/widgets

Screen에서 표시될 레이아웃 요소들이 위치하는 디렉토리입니다.

### web

Web App을 Build 하기 위해 필요한 파일들이 있는 디렉토리입니다.
