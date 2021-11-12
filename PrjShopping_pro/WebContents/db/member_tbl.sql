
-- 오라클 계정생성
  jsp /1234

  C:\Users\GG>sqlplus /nolog
  SQL> conn /as sysdba
  Connected.
  SQL> create user jsp identified by 1234;
  User created.
  SQL> grant  CONNECT, RESOURCE to jsp;
  Grant succeeded.

-- 회원정보 자동증가 : sequenct (10001 번 부터 시작)
create sequence  member_seq
  start with 10001
  increment by 1
  minvalue 10001
  cache 10;

-- 회원 테이블
create table  member_tbl
(
     custno      number(6)      primary key -- 회원번호 기본키
   , custname    varchar2(30)   not null    -- 회원이름 필수입력
   , phone       varchar2(20)               -- 전화번호
   , address     varchar2(150)              -- 주소
   , joindate    date           default sysdate -- 가입일자 기본값:가입일
   , grade       varchar2(1)                -- 고객등급
   , city        varchar2(2)                -- 거주도시코드
)





