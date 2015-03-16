## Setup

Go through the setup instructions for PL/SQL to get ready to code:

http://help.exercism.io/getting-started-with-plsql.html

## Running the Tests

Execute the tests by calling the `run` method in the respective `ut_<exercise>#` package.
The necessary code should be contained at the end of the test package.
As an example, the test for the _hamming_ exercise would be run using

```
begin
  ut_hamming#.run;
end;
/
```
