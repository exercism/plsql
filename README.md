# xPL/SQL

Exercism exercises in Oracle PL/SQL

## Setup

You'll need access to a mounted Oracle DB. If you don't have one already
installed, here are a few options:
* download VirtualBox from Oracle and run one of the freely
available images; at the time of writing, the easiest to get started with
at the time of writing might be _Database App Development VM_. The
image is quite large...
* download and install the a version of the Oracle DB itself. Developer licenses
are free.
* get a free workspace at https://apex.oracle.com

Note: if you're using the online version of APEX, compilation errors will
not be indicated very clearly when working in _SQL Commands_ - you will simply
get "Error at line XX: PL/SQL: Statement ignored"... More insight can be
found using the _Object Browser_ and navigating to the object you created
(select either _Packages_ or _Procedures_ in the dropdown menu showing _Tables_,
depending on what you created for the exercise). Also, when you run statements,
"run" each individual `create` statement individually by selecting its text.
APEX does not seem to like doing too much work at once...

To work on individual problems, a nice and free way is to use SQL Developer. If 
you don't want to use yet another IDE, you can simply copy and paste your code
into a terminal / command prompt connected to the database. The files are
prepared in a way that will simply overwrite the previously compiled version.

## Style Guide

You will most likely find the formatting used a bit weird at first. If you can,
you will find it makes your life much easier over time...

## Tests

The last part of both the test file is commented-out code will launch the tests.
Simply uncomment and execute.

## Contributing Guide

Please see the [contributing guide](https://github.com/exercism/x-api/blob/master/CONTRIBUTING.md#the-exercise-data)

## License

The MIT License (MIT)

Copyright (c) 2014 Katrina Owen, _@kytrinyx.com
