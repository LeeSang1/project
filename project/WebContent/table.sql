drop table member;
drop table 
-- 회원테이블
create table member (
  id varchar2(20) primary key,
  password varchar2(20) not null,
  name varchar2(20) not null,
  address varchar2(50) not null,
  birthdate varchar2(20) not null,
  tel varchar2(20) not null,
  nickname varchar2(20) not null,
  money number,
  buynum number,
  mgr_level number default 0,
  reg_date date not null
);

-- 주문테이블
create table jumun (
  order_num number primary key,
  start_date date not null,
  person number not null,
  pay varchar2(1),
  order_date date not null,
  id varchar2(20) not null references member(id),
  tnum number not null references travel(tnum)
);
select * from ripple;
-- 상품테이블
create table travel (
  tnum number primary key,
  tgroup varchar2(10) not null,
  tname varchar2(20) not null,
  texplain varchar2(500) not null,
  timg1 varchar2(20) not null,
  timg2 varchar2(20) not null,
  timg3 varchar2(20) not null,
  timg4 varchar2(20),
  timg5 varchar2(20),
  tbnum number,
  treg_date date not null
);
drop table board;
-- 게시판테이블
create table board (
  bnum number primary key,
  bgroup varchar2(20) not null,
  bsubject varchar2(30) not null,
  bcontext varchar2(500) not null,
  bimg1 varchar2(20),
  bimg2 varchar2(20),
  bimg3 varchar2(20),
  bimg4 varchar2(20),
  bimg5 varchar2(20),
  ip varchar2(20) not null,
  breadcount number,
  bwrite_date date not null,
  id varchar2(20) not null references member(id)
);

-- 답변테이블 
create table ripple (
  rnum number primary key,
  rcontent varchar2(60) not null,
  ref number not null,
  re_step number not null,
  re_level number not null,
  ip varchar2(20),
  rreg_date date,
  bnum number not null references board(bnum),
  id varchar2(20) not null references member(id)
);

alter table ripple add (rReadCount number);