CREATE OR REPLACE PACKAGE ut_hello_world#
IS
   PROCEDURE run;
END ut_hello_world#;
/

CREATE OR REPLACE PACKAGE BODY ut_hello_world#
IS

   PROCEDURE TEST (
      i_descn     varchar2,
      i_exp       varchar2,
      i_act       varchar2
   )
   IS
   BEGIN
      IF i_exp = i_act THEN
         dbms_output.put_line('SUCCESS: ' || i_descn);
      ELSE
         dbms_output.put_line(
            'FAILURE: '   || i_descn || 
            ': expected ''' || NVL('' || i_exp, 'NULL') || 
            ''', but got '''  || NVL('' || i_act, 'null') || '''!'
         );
      END IF;
   END TEST;

   PROCEDURE run
   IS
   BEGIN
      TEST(
         i_descn  => 'no name',
         i_exp    => 'Hello, World!',
         i_act    => hello_world#.hello()
      );
      
      TEST(
         i_descn  => 'sample name',
         i_exp    => 'Hello, Alice!',
         i_act    => hello_world#.hello('Alice')
      );
      
      TEST(
         i_descn  => 'other sample name',
         i_exp    => 'Hello, Bob!',
         i_act    => hello_world#.hello('Bob')
      );
   EXCEPTION
      WHEN others THEN
         dbms_output.put_line('Test execution failed.');
         dbms_output.put_line(sqlerrm);
   END run;

END ut_hello_world#;
/

BEGIN
   ut_hello_world#.run;
END;
/
