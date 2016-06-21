CREATE OR REPLACE PACKAGE hello_world# IS
   FUNCTION hello(
      i_name                                        varchar2 := 'World'
   ) 
      RETURN varchar2;

END hello_world#;
/

CREATE OR REPLACE PACKAGE BODY hello_world# IS
   FUNCTION hello(
      i_name                                        varchar2 := 'World'
   ) 
      RETURN varchar2
   AS
   BEGIN
      RETURN 'Hello, ' || i_name || '!';
   END hello;
END hello_world#;
/
