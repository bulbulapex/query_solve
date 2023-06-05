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
