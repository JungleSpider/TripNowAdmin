# TripnowAdmin
Spring Legacy를 이용한 TripNow의 관리자 페이지입니다.

# Description
* 개발 기간: 2022.08.08 ~ 2022.08.12
* 참여 인원: 4명
* 개발 툴  : Spring Tool Suite 3
* 사용 언어: 
  * JAVA11, SQL, HTML, CSS, JavaScript, JSP
* 사용 기술:
  *  JDBC, DOM, Jquery, Ajax, JSTL
* 담당 구현 파트
  -  회원 정보 관리 
  -  이벤트 관리

# Implementation
* **회원 정보 관리**
 <p align="center"><img src="https://github.com/JungleSpider/TripNowAdmin/blob/master/src/main/webapp/WEB-INF/file/%ED%9A%8C%EC%9B%90%EC%A0%95%EB%B3%B4%EA%B4%80%EB%A6%AC.PNG?raw=true"/></p>

  * **회원 정보 수정**
    * 회원 정보 관리 페이지에서는 사용자의 정보를 조회할 수 있으며 Primary Key인 아이디를 제외한 나머지 정보를 수정 할 수 있습니다. 
    * 관리자는 아이디, 이름을 검색하여 원하는 사용자를 쉽게 찾을 수 있습니다.
    * 정보 수정 버튼 클릭 시 해당 페이지의 모든 변경사항을 Mybatis 동적 쿼리문을 이용하여 DB수정 작업합니다.


___
* **아벤트 관리**
 <p align="center"><img src="https://github.com/JungleSpider/TripNowAdmin/blob/master/src/main/webapp/WEB-INF/file/%EC%9D%B4%EB%B2%A4%ED%8A%B8%EA%B4%80%EB%A6%AC.PNG?raw=true"/></p>

  * 이벤트 관리 페이지에서는 현재 진행중이거나 종료된 이벤트를 확인할 수 있고, 이벤트를 추가하거나 진행 중인 이벤트의 정보를 수정할 수 있는 페이지입니다. 
  * 수정할 항목들을 클릭하여 수정한 후 수정하기 버튼을 누르면 해당 페이지의 모든 수정이 완료된 정보들만 처리하여 수정 작업 진행합니다.
___
* **ERD**
<p align="center"><img src="https://github.com/JungleSpider/TripNow/blob/master/src/main/webapp/file/ERD.png?raw=true"/></p>
