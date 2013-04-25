DROP TABLE IF EXISTS DC_CSS;
DROP SEQUENCE IF EXISTS DC_CSS_SEQUENCE;

CREATE TABLE IF NOT EXISTS DC_CSS(
	ID BIGINT NOT NULL PRIMARY KEY,
	ELEMENT VARCHAR2 NOT NULL,
	CSS_DATA_NASID BIGINT NOT NULL,
	ITEM_ID BIGINT NOT NULL,
	GMT_CREATE TIMESTAMP NOT NULL
);

COMMENT ON COLUMN ELEMENT IS 'Ԫ�����ͣ�1�������װ�ޣ�2��ҳβװ�ޣ�3������װ��';

CREATE SEQUENCE IF NOT EXISTS DC_CSS_SEQUENCE START WITH 100 INCREMENT BY 1 CACHE 1;
