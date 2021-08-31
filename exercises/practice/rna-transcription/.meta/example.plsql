
create or replace package complement#
is
  function of_dna (
    i_seq                                         varchar2
  ) return varchar2;
  function of_rna (
    i_seq                                         varchar2
 ) return varchar2;
end complement#;
/
 
create or replace package body complement#
is
  c_dna_nucl constant varchar2(4) := 'ACGT';
  c_rna_nucl constant varchar2(4) := 'UGCA';
 
  function of_dna (
    i_seq                                         varchar2
  ) return varchar2
  is
  begin
    return translate(i_seq, c_dna_nucl, c_rna_nucl);
  end of_dna;
  function of_rna (
    i_seq                                         varchar2
  ) return varchar2
  is
  begin
    return translate(i_seq, c_rna_nucl, c_dna_nucl);
  end of_rna;
end complement#;
/
