create or replace package gigasecond#
is
  function since (
    i_date                                        date
  ) return date;
end gigasecond#;
/
 
create or replace package body gigasecond#
is
  function since (
    i_date                                        date
  ) return date
  is
  begin
    return trunc(i_date + 1.0 / 24 / 60 / 60 * power(10, 9));
  end since;
end gigasecond#;
/
