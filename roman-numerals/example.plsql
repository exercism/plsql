create or replace package numeral#
is
  function to_roman (
    i_num                                         pls_integer
  ) return varchar2;
end numeral#;
/
 
create or replace package body numeral#
is
  function to_roman (
    i_num                                         pls_integer
  ) return varchar2
  is
  begin
    return trim(to_char(i_num, 'RC'));
  end to_roman;
end numeral#;
/
