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
      RETURN 'Hello, World!';
   END hello;
END hello_world#;
/
