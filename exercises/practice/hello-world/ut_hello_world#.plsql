CREATE OR REPLACE PACKAGE hello_world# IS
   FUNCTION hello() 
      RETURN varchar2;

END hello_world#;
/

CREATE OR REPLACE PACKAGE BODY hello_world# IS
   FUNCTION hello() 
      RETURN varchar2
   AS
   BEGIN
      RETURN 'Goodbye, Mars!';
   END hello;
END hello_world#;
/

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
