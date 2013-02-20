DROP TABLE IF EXISTS FILTER;
DROP SEQUENCE IF EXISTS FILTER_SEQUENCE;

CREATE TABLE IF NOT EXISTS FILTER
(
	ID BIGINT NOT NULL PRIMARY KEY,
	REQ_URL VARCHAR2 NOT NULL,
	FILTER_KEY VARCHAR2,
	FILTER_VALUE_NASID BIGINT,
	FILTER_VALUE VARCHAR2,
	OPERATE INT NOT NULL,
	GMT_CREATE TIMESTAMP NOT NULL
);

COMMENT ON TABLE FILTER IS 'FILTER�洢';
COMMENT ON COLUMN FILTER.ID IS 'FILTER���';
COMMENT ON COLUMN FILTER.REQ_URL IS '����url';
COMMENT ON COLUMN FILTER.FILTER_KEY IS '��������key��keyΪnullʱ��ȫ���滻';
COMMENT ON COLUMN FILTER.FILTER_VALUE_NASID IS 'keyΪnullʱ����NAS�洢���ݣ�key��Ϊ��ʱ��FILTER_VALUE_NASIDΪnull';
COMMENT ON COLUMN FILTER.FILTER_VALUE IS '�µ�valueֵ��filter_valueΪ�յ�ʱ��ɾ��������Ϊ��';
COMMENT ON COLUMN FILTER.OPERATE IS '0:���ӣ�1��ɾ����2���޸�';

CREATE SEQUENCE IF NOT EXISTS FILTER_SEQUENCE START WITH 100 INCREMENT BY 1 CACHE 1;

DROP TABLE IF EXISTS FILTERS;
DROP SEQUENCE IF EXISTS FILTERS_SEQUENCE;

CREATE TABLE IF NOT EXISTS FILTERS
(
	ID BIGINT NOT NULL PRIMARY KEY,
	FILTER_IDS VARCHAR2 NOT NULL,
	GMT_CREATE TIMESTAMP NOT NULL
);

COMMENT ON TABLE FILTERS IS 'FILTERS�洢';
COMMENT ON COLUMN FILTERS.FILTER_IDS IS '������filter��id���ԷֺŸ���';

CREATE SEQUENCE IF NOT EXISTS FILTERS_SEQUENCE START WITH 100 INCREMENT BY 1 CACHE 1;
