-- Start of DDL Script for Table CREATOR.USER_SETTINGS
-- Generated 25.07.2016 1:07:57 from CREATOR@STAR_NEW

CREATE TABLE user_settings
    (db_user                        VARCHAR2(256 BYTE) NOT NULL,
    stg_key                        VARCHAR2(256 BYTE) NOT NULL,
    stg_value                      VARCHAR2(256 BYTE) NOT NULL)
  TABLESPACE  starlight_t
/


-- Indexes for USER_SETTINGS

CREATE INDEX ix_user_settings_user ON user_settings
  (
    db_user                         ASC
  )
  TABLESPACE  starlight_i
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

create public synonym user_settings for creator.user_settings
/

grant select, insert, update, delete on user_settings to new_role
/
