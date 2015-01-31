create or replace package grains#
is
  function at_square (
    i_num                                         pls_integer
  ) return number;

  function total
  return number;
end grains#;
/
 
create or replace package body grains#
is
  function at_square (
    i_num                                         pls_integer
  ) return number
  is
  begin
    return power(2, i_num - 1);
  end at_square;

  function total
  return number
  is
  begin
    return power(2, 64) - 1;
  end total;
  
end grains#;
/
