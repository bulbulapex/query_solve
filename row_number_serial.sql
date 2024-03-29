SELECT ROW_NUMBER() OVER (ORDER BY A.ID ASC) SL, A.ID, A.NAME
FROM
(SELECT 101 ID, 'BULBUL' NAME
FROM DUAL
UNION
SELECT 203 ID, 'ABBAS' NAME
FROM DUAL
UNION
SELECT 155 ID, 'KHAN' NAME
FROM DUAL) A;


ROW_NUMBER() OVER(
        PARTITION BY A.BILL_MST_ID
        ORDER BY A.CHECKLIST_SEQ ASC
    ) SL
