create or replace package hamming
is
  --+--------------------------------------------------------------------------+
  -- Computes the Hamming distance between two starnds.
  --
  -- @param i_first  sequence to compare
  -- @param i_second sequence to compare
  --
  -- @return         Hamming distance between i_first and i_second
  --+--------------------------------------------------------------------------+
  function distance (
    i_first                                       varchar2
   ,i_second                                      varchar2
  ) return pls_integer;
end hamming;
/

create or replace package body hamming
is
  function distance (
    i_first                                       varchar2
   ,i_second                                      varchar2
  ) return pls_integer
  is
    l_cnt                           pls_integer := 0;
    l_i                             pls_integer := 0;
  begin
    for l_i in 1 .. least(length(i_first), length(i_second)) loop
      if substr(i_first, l_i, 1) != substr(i_second, l_i, 1) then
        l_cnt := l_cnt + 1;
      end if;
    end loop;
    return l_cnt;
  end distance;
end hamming;
/

--begin ut_hamming.run; end; /
