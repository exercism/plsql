create or replace package ut_numeral#
is
  procedure run;
end ut_numeral#;
/
 
create or replace package body ut_numeral#
is
  procedure test (
    i_descn                                       varchar2
   ,i_exp                                         varchar2
   ,i_act                                         varchar2
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
    test(i_descn => 'test_1',    i_exp => 'I',      i_act => numeral#.to_roman(1   ));
    test(i_descn => 'test_2',    i_exp => 'II',     i_act => numeral#.to_roman(2   ));
    test(i_descn => 'test_3',    i_exp => 'III',    i_act => numeral#.to_roman(3   ));
    test(i_descn => 'test_4',    i_exp => 'IV',     i_act => numeral#.to_roman(4   ));
    test(i_descn => 'test_5',    i_exp => 'V',      i_act => numeral#.to_roman(5   ));
    test(i_descn => 'test_6',    i_exp => 'VI',     i_act => numeral#.to_roman(6   ));
    test(i_descn => 'test_9',    i_exp => 'IX',     i_act => numeral#.to_roman(9   ));
    test(i_descn => 'test_27',   i_exp => 'XXVII',  i_act => numeral#.to_roman(27  ));
    test(i_descn => 'test_48',   i_exp => 'XLVIII', i_act => numeral#.to_roman(48  ));
    test(i_descn => 'test_59',   i_exp => 'LIX',    i_act => numeral#.to_roman(59  ));
    test(i_descn => 'test_93',   i_exp => 'XCIII',  i_act => numeral#.to_roman(93  ));
    test(i_descn => 'test_141',  i_exp => 'CXLI',   i_act => numeral#.to_roman(141 ));
    test(i_descn => 'test_163',  i_exp => 'CLXIII', i_act => numeral#.to_roman(163 ));
    test(i_descn => 'test_402',  i_exp => 'CDII',   i_act => numeral#.to_roman(402 ));
    test(i_descn => 'test_575',  i_exp => 'DLXXV',  i_act => numeral#.to_roman(575 ));
    test(i_descn => 'test_911',  i_exp => 'CMXI',   i_act => numeral#.to_roman(911 ));
    test(i_descn => 'test_1024', i_exp => 'MXXIV',  i_act => numeral#.to_roman(1024));
    test(i_descn => 'test_3000', i_exp => 'MMM',    i_act => numeral#.to_roman(3000));
  end run;
end ut_numeral#;
/
 
begin
  ut_numeral#.run;
end;
/
