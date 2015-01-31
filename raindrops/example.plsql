create or replace package raindrops#
is
  function convert (
    i_num                                         pls_integer
  ) return varchar2;
end raindrops#;
/
 
create or replace package body raindrops#
is
  function convert (
    i_num                                         pls_integer
  ) return varchar2
  is
    l_sound                                       varchar2(15) := '';
  begin
    if mod(i_num, 3) = 0 then l_sound := l_sound || 'Pling'; end if;
    if mod(i_num, 5) = 0 then l_sound := l_sound || 'Plang'; end if;
    if mod(i_num, 7) = 0 then l_sound := l_sound || 'Plong'; end if;
    return nvl(l_sound, to_char(i_num));
  end convert;
end raindrops#;
/
