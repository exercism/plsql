create or replace package year#
is
  function is_leap (
    i_year                                        pls_integer
  ) return varchar2;
end year#;
/
 
create or replace package body year#
is
  function is_leap (
    i_year                                        pls_integer
  ) return varchar2
  is
  begin
    if mod(i_year, 400) = 0 then return 'Yes, ' || i_year || ' is a leap year';     end if;
    if mod(i_year, 100) = 0 then return 'No, '  || i_year || ' is not a leap year'; end if;
    if mod(i_year, 4) = 0   then return 'Yes, ' || i_year || ' is a leap year';     end if;
    return 'No, ' || i_year || ' is not a leap year';
  end is_leap;
end year#;
/
