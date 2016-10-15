-- Start of DDL Script for Table CREATOR.USER_SETTINGS
-- Generated 10.10.2016 11:56:21 from CREATOR@ORCL

CREATE TABLE user_settings
    (db_user                        VARCHAR2(256 BYTE) NOT NULL,
    stg_key                        VARCHAR2(256 BYTE) NOT NULL,
    stg_value                      VARCHAR2(256 BYTE) NOT NULL)
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  starlight_t
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON user_settings TO new_role
/
GRANT INSERT ON user_settings TO new_role
/
GRANT SELECT ON user_settings TO new_role
/
GRANT UPDATE ON user_settings TO new_role
/




-- Indexes for USER_SETTINGS

CREATE INDEX ix_user_settings_user ON user_settings
  (
    db_user                         ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_i
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/



-- Comments for USER_SETTINGS

COMMENT ON TABLE user_settings IS 'Настройки пользователя.'
/
COMMENT ON COLUMN user_settings.db_user IS 'Логин пользователя'
/
COMMENT ON COLUMN user_settings.stg_key IS 'Имя настройки'
/
COMMENT ON COLUMN user_settings.stg_value IS 'Значение настройки'
/

-- End of DDL Script for Table CREATOR.USER_SETTINGS

