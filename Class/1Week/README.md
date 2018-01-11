## Brief Lesson : GIT Use & Excode (18/01/09)

**1) GIT** : 깃(Git /ɡɪt/[1])은 프로그램 등의 소스 코드 관리를 위한 분산 버전 관리 시스템 이다. 기하학적 불변 이론을 바탕으로 설계됐고, 빠른 수행 속도에 중점을 두고 있 는 것이 특징이다. 최초에는 리누스 토르발스가 리눅스 커널 개발에 이용하려고 개 발하였으며, 현재는 다른 곳에도 널리 사용되고 있다.
깃의 작업 폴더는 모두, 전체 기록과 각 기록을 추적할 수 있는 정보를 포함하고 있으며, 완전한 형태의 저장소이다. 네트워크에 접근하거나 중앙 서버에 의존하지 않는다.

**2) 분산 버전 관리 시스템** : 각 사용자가 프로젝트의 전체 이력을 관리할수 있는  자신만의 저장소를 가지고 있다.

**3) GIT의 특징** : 빠른 속도와 성능, 분산 작업, 데이터의 보장성, Staging area, 브랜치(branch) 모델

**4) GIT의 구조** : Work Space, Index, 내부 저장소, 외부 저장소

## Xcode 사용법 (18/01/10)
**1) Xcode 기초**  
   > - Xcode 시작 : Click "Create a new Xcode project"
   > - 템프릿 선택 : Single View App
   > - 프로젝트 생성
   > - 각 화면 영역별 설명 : Navigator, Toolbar, Editor, Utilities, Debug Area
   > - Project Editor : 프로젝트 설정변경
   > - Source Editor : 선택된 파일의 코드를 수정할 수 있다.
   > - "Break point : debug를 위한 방법, 여기서 실행을 멈춰라!"
   > - Interface Builder
   > - Property list Editor : property list(plist)파일 편집
   > - Debug Area (Variables View) : 메모리 주소, 값 확인
   > - Debug Area (Console) : log출력, 명령어 직접 실행
   > - Utilities : 각종 삽입 사항(Label, Table 등) 및 Inspector, library
   > - Build & Run : 작성 부분 구동 및 실행
**2) Product Name 짓는 법**
   > - Upper Camel case : 첫자 대문자<br>
   > - Lower Camel case : 첫자 소문자<br>



## 객체지향형 프로그래밍 특징 (18/01/10)

 추상화(Abstraction) : 상세한 사항이 없으 매우 추상적인 수준의 데이터를 대표하는 기능.
 캡슐화(Encapsulation) : 데이터를 잡아두고 안전하게 보관하여 외부 인터페이스로부터 보안성을 주는 기능
 은닉화(Hiding) : 은닉이란 내부 데이터, 내부 연산을 외부에서 접근하지 못하도록 은닉 혹은 격리 시키는 것
 상속성(Inheritance) : 기초 클래스의 모든 특성을 포함한 기초 클래스 및 클래스 자체의 것으로부터 파생 될 수 있는 클래스에 의한 프로세스
 다형성(Polymorphism) : 다양한 형태로 존재할 수 있는 기능