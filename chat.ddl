create database if not exists testChat;
use testChat;
create table if not exists chatHist(
    id int not null auto_increment,
    name char(30),
    age int,
    primary key(id)
);
create user chat@localhost identified by 'chatu';
grant all ON testChat.* to chat@localhost;
