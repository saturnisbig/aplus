-- --------------------------------------------------------
-- 管理员信息表
-- user_id serial the same as bigint unsigned not null 
--         auto_increment
-- password md5
-- --------------------------------------------------------
CREATE TABLE users(
  user_id serial NOT NULL,
  username varchar(255) NOT NULL,
  passwd varchar(32) NOT NULL,
  user_type varchar(20) NOT NULL,
  ts_created datetime NOT NULL,
  ts_last_login datetime,
  PRIMARY KEY (user_id),
  unique (username)
)ENGINE = InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE user_profile(
  user_id       bigint unsigned   NOT NULL,
  profile_key   varchar(255)      NOT NULL,
  profile_value text              NOT NULL,

  PRIMARY KEY (user_id, profile_key),
  FOREIGN KEY (user_id) REFERENCES users (user_id)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;
