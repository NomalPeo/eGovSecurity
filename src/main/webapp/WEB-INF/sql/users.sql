create table users(
    user_id varchar2(100) primary key not null,
    user_pwd varchar2(300) not null,
    user_name varchar2(45) not null,
    enabled char(1)
);

commit;
alter table users modify (enabled default 0);
select * from user;
SELECT ID AS user_id, PASSWORD AS user_pwd, enabled FROM users WHERE ID='user';

alter table users add(authority varchar2(50) default 'USER_ROLE');

delete from users;

insert into users (user_id,user_pwd,enabled,authority,user_name) values('user','userPw',1,'ROLE_USER','user11');

SELECT user_id as ID, user_pwd as PASSWORD, enabled FROM users WHERE user_id='user';