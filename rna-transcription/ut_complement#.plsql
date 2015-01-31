create or replace package ut_complement#
is
  procedure run;
end ut_complement#;
/
 
create or replace package body ut_complement#
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
      dbms_output.put_line('FAILURE: ' || i_descn || ' - expected ' || nvl(i_exp, 'null') || ', but received ' || nvl(i_act, 'null'));
    end if;
  end test;
 
  procedure run
  is
  begin
    test(i_descn => 'test_rna_complement_of_cytosine_is_guanine', i_exp => 'G'            , i_act => complement#.of_dna('C'            ));
    test(i_descn => 'test_rna_complement_of_guanine_is_cytosine', i_exp => 'C'            , i_act => complement#.of_dna('G'            ));
    test(i_descn => 'test_rna_complement_of_thymine_is_adenine' , i_exp => 'A'            , i_act => complement#.of_dna('T'            ));
    test(i_descn => 'test_rna_complement_of_adenine_is_uracil'  , i_exp => 'U'            , i_act => complement#.of_dna('A'            ));
    test(i_descn => 'test_rna_complement'                       , i_exp => 'UGCACCAGAAUU' , i_act => complement#.of_dna('ACGTGGTCTTAA' ));
    test(i_descn => 'test_dna_complement_of_cytosine_is_guanine', i_exp => 'G'            , i_act => complement#.of_rna('C'            ));
    test(i_descn => 'test_dna_complement_of_guanine_is_cytosine', i_exp => 'C'            , i_act => complement#.of_rna('G'            ));
    test(i_descn => 'test_dna_complement_of_uracil_is_adenine'  , i_exp => 'A'            , i_act => complement#.of_rna('U'            ));
    test(i_descn => 'test_dna_complement_of_adenine_is_thymine' , i_exp => 'T'            , i_act => complement#.of_rna('A'            ));
    test(i_descn => 'test_dna_complement'                       , i_exp => 'ACTTGGGCTGTAC', i_act => complement#.of_rna('UGAACCCGACAUG'));
  end run;
end ut_complement#;
/
 
begin
  ut_complement#.run;
end;
/
