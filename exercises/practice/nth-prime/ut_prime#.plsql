create or replace package ut_prime#
is
  procedure run;
end ut_prime#;
/
 
create or replace package body ut_prime#
is
  procedure test (
    i_descn                                       varchar2
   ,i_exp                                         number
   ,i_act                                         number
  )
  is
  begin
    if i_exp = i_act then
      dbms_output.put_line('SUCCESS: ' || i_descn);
    else
      dbms_output.put_line('FAILURE: ' || i_descn || ' - expected ' || nvl('' || i_exp, 'null') || ', but received ' || nvl('' || i_act, 'null'));
    end if;
  end test;
 
  procedure run
  is
    l_act                           number;
  begin
    test(i_descn => 'test_first'     , i_exp => 2     , i_act => prime#.nth(1)    );
    test(i_descn => 'test_second'    , i_exp => 3     , i_act => prime#.nth(2)    );
    test(i_descn => 'test_sixth'     , i_exp => 13    , i_act => prime#.nth(6)    );
    test(i_descn => 'test_big_prime' , i_exp => 104743, i_act => prime#.nth(10001));
    begin
      l_act := prime#.nth(0);
      dbms_output.put_line('FAILURE: test_weird_case - expected invalid_argument_error to be raised, but received ' || nvl('' || l_act, 'null'));
    exception
      when prime#.invalid_argument_error then
        dbms_output.put_line('SUCCESS: test_weird_case');
    end;
  end run;
end ut_prime#;
/
 
begin
  ut_prime#.run;
end;
/
