# My_Dog_Diary Project 
반려견과의 일상을 기록할 수 있는 전자 다이어리 사이트
## 🐶프로젝트 소개
종이로 기록하던 아날로그식의 다이어리에서 벗어나 인터넷상의 공간에서 반려견과의 일상을 전자 다이어리에 기록하고, 다른 견주들과 소통하여 일상과 정보 등을 공유할 수 있게 만든 사이트입니다.
## 🗓개발 기간
23.04.01 ~ 23.06.05
## ⚙개발 환경
- <img src="https://img.shields.io/badge/windows 11-48B0F1?style=flat&logo=windows11&logoColor=white"/>
- <img src="https://img.shields.io/badge/chrome-4285F4?style=flat&logo=googlechrome&logoColor=white"/>
- <img src="https://img.shields.io/badge/JAVA 8-007396?style=flat&logo=Java&logoColor=white"/>
- <img src="https://img.shields.io/badge/JDK 1.8.0-34567C?style=flat&logoColor=white"/>
- Server : <img src="https://img.shields.io/badge/apache tomcat 9.0-F09D13?style=flat&logo=apachetomcat&logoColor=white"/>
- IDE : <img src="https://img.shields.io/badge/eclipse-2C2255?style=flat&logo=eclipseide&logoColor=white"/>
- Framework : <img src="https://img.shields.io/badge/Mybatis-000000?style=flat&logoColor=white"/>, <img src="https://img.shields.io/badge/Bootstrap5-512BD4?style=flat&logoColor=white"/>
- Database : <img src="https://img.shields.io/badge/oracle-F80000?style=flat&logo=oracle&logoColor=white"/>
- Library : <img src="https://img.shields.io/badge/hibernate-59666C?style=flat&logo=hibernate&logoColor=white"/>, <img src="https://img.shields.io/badge/JSTL-43A047?style=flat&logoColor=white"/>, <img src="https://img.shields.io/badge/JSON-000000?style=flat&logo=json&logoColor=white"/>
## ❤주요 기능
#### 1️⃣회원가입
###### ✔아이디 중복 확인
- ajax를 통한 아이디 중복 확인을 통해 중복되거나 그렇지 않은 아이디의 경우, alert를 띄워 아이디 사용의 유무를 알려주고 중복되는 아이디의 가입을 막음.
#### 2️⃣로그인
###### ✔아이디 찾기
- 가입 시 입력한 이름과 휴대폰 번호를 통하여 아이디를 찾을 수 있게 함.
###### ✔비밀번호 찾기
- 가입 시 입력한 이름과 아이디를 통하여 비밀번호를 찾을 수 있게 함.
###### ✔DB 검증 후 session 생성
- 로그인 시 입력한 아이디와 비밀번호가 DB에 저장된 아이디, 비밀번호와 일치하면 세션이 생성되게 함.
#### 3️⃣마이페이지
###### ✔회원정보 수정
- 로그인 시 생성된 session을 토대로 회원의 정보를 가져와서 마이페이지에 나타나게 함.
- 이름과 아이디를 제외하고 회원정보를 수정할 수 있게 함.
#### 4️⃣다이어리
###### ✔다이어리 main 화면에 캘린더 생성
- 캘린더를 생성하고 다이어리 작성날의 날짜를 표시해놓아 그날의 날짜를 회원이 바로 확인할 수 있게하고, 다이어리 작성의 느낌을 살림.
###### ✔다이어리 작성, 읽기, 수정, 삭제(CRUD)
- 작성 버튼을 눌러 다이어리 작성을 하고 글 목록에서 그간의 작성했던 다이어리의 내용을 확인하고 수정과 삭제가 가능하게 함.
#### 5️⃣커뮤니티
###### ✔커뮤니티 글 작성, 읽기, 수정, 삭제(CRUD)
- 작성 버튼을 눌러 글 작성을 하고 파일첨부 기능을 포함시켜 사진 등을 회원들에게 보여줄 수 있게 함.
- 커뮤니티 main에서 회원들이 작성한 글들을 확인 할 수 있고 본인이 작성한 글의 경우, 글 제목을 선택하여 내용이 나타나면 수정과 삭제 버튼이 뜨게 하여 수정과 삭제가 가능하게 함.
###### ✔커뮤니티 검색
- 제목과 작성자로 나눠서 검색할 수 있게 하여 회원이 찾고자 하는 글 혹은 작성자를 손쉽게 찾을 수 있게 함.
