with emps (shuttle_item) as
      (select '6547:8879:5587:9987' from dual)
    select regexp_substr(shuttle_item, '[^:]+', 1, level) one_item
    from emps
    connect by level <= regexp_count(shuttle_item, ':') + 1;
    
    
with emps (CAT_LICENCE) as
(SELECT CAT_LICENCE FROM CONT_PROFILE WHERE CONT_ID = 17)
select regexp_substr(CAT_LICENCE, '[^:]+', 1, level) one_item
from emps
connect by level <= regexp_count(CAT_LICENCE, ':') + 1;


/*1:2:3 ey value gulake , row akare vag kore data return kore then listagg diye abar 1 ta row te value dekhano holo*/
/*OUTPUT = V_CAT_LICENCE_NAME VARIABLE A EYVABE VALUE THAKBE 'Civil, Mechanical, Others'*/
SELECT LISTAGG(CL_NAME_ENG,', ') INTO V_CAT_LICENCE_NAME
      FROM CAT_LICENCE
      WHERE CL_ID IN (
          select * from table(apex_string.split(V_CAT_LICENCE,':'))

      )

