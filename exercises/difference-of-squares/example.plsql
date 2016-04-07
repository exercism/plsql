create or replace package series#
is
  function square_of_sums (
    i_num                                         pls_integer
  ) return number;
  function sum_of_squares (
    i_num                                         pls_integer
  ) return number;
  function diff_of_squares (
    i_num                                         pls_integer
  ) return number;
end series#;
/
 
create or replace package body series#
is
  function square_of_sums (
    i_num                                         pls_integer
  ) return number
  is
  begin
    return power(i_num * (i_num + 1) / 2, 2);
  end square_of_sums;
  function sum_of_squares (
    i_num                                         pls_integer
  ) return number
  is
  begin
    return power(i_num, 3) / 3 + power(i_num, 2) / 2 + i_num / 6;
  end sum_of_squares;
  function diff_of_squares (
    i_num                                         pls_integer
  ) return number
  is
  begin
    return (power(i_num, 4) - power(i_num, 2)) / 4 + (power(i_num, 3) - i_num) / 6;
  end diff_of_squares;
end series#;
/
