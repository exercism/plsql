create or replace package binary#
is
  function to_decimal (
    i_binary                                      varchar2
  ) return pls_integer;
end binary#;
/
 
create or replace package body binary#
is
  function to_decimal (
    i_binary                                      varchar2
  ) return pls_integer
  is
    l_pos_val                       pls_integer := 1;
    l_pos                           pls_integer := length(i_binary);
    l_char                          char(1);
    l_decimal                       pls_integer := 0;
  begin
    while l_pos > 0 loop
      l_decimal := l_decimal + substr(i_binary, l_pos, 1) * l_pos_val;
      l_pos     := l_pos - 1;
      l_pos_val := l_pos_val * 2;
    end loop;
    return l_decimal;
  exception
    when value_error then
      return 0;
  end to_decimal;
end binary#;
/
