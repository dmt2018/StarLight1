-- Start of DDL Script for Table CREATOR.USER_RIGHTS
-- Generated 23.09.2016 0:07:41 from CREATOR@STAR_NEW

CREATE TABLE user_rights
    (user_rights_id                 NUMBER(8,0),
    right_name                     VARCHAR2(50 BYTE),
    is_active                      NUMBER(1,0) DEFAULT 1)
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT DELETE ON user_rights TO new_role
/
GRANT INSERT ON user_rights TO new_role
/
GRANT SELECT ON user_rights TO new_role
/
GRANT UPDATE ON user_rights TO new_role
/




-- Indexes for USER_RIGHTS

CREATE UNIQUE INDEX u_userrights_name ON user_rights
  (
    right_name                      ASC
  )
  TABLESPACE  starlight_i
/



-- Comments for USER_RIGHTS

COMMENT ON TABLE user_rights IS 'Права пользователя.'
/
COMMENT ON COLUMN user_rights.is_active IS 'Активность записи'
/
COMMENT ON COLUMN user_rights.right_name IS 'Имя права'
/
COMMENT ON COLUMN user_rights.user_rights_id IS 'PK'
/

-- End of DDL Script for Table CREATOR.USER_RIGHTS

create public synonym user_rights for creator.user_rights
/

