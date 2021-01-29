create or replace package ut_grains#
is
  procedure run;
end ut_grains#;
/
 
create or replace package body ut_grains#
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
  begin
    test(i_descn => 'test_square_1'    , i_exp => 1                   , i_act => grains#.at_square(1 ));
    test(i_descn => 'test_square_2'    , i_exp => 2                   , i_act => grains#.at_square(2 ));
    test(i_descn => 'test_square_3'    , i_exp => 4                   , i_act => grains#.at_square(3 ));
    test(i_descn => 'test_square_4'    , i_exp => 8                   , i_act => grains#.at_square(4 ));
    test(i_descn => 'test_square_16'   , i_exp => 32768               , i_act => grains#.at_square(16));
    test(i_descn => 'test_square_32'   , i_exp => 2147483648          , i_act => grains#.at_square(32));
    test(i_descn => 'test_square_64'   , i_exp => 9223372036854775808 , i_act => grains#.at_square(64));
    test(i_descn => 'test_total_grains', i_exp => 18446744073709551615, i_act => grains#.total        );
  end run;
end ut_grains#;
/

begin
  ut_grains#.run;
end;
/
