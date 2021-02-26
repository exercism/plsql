## Get access to an Oracle database.
In order to compile and run PL/SQL code, you'll need access to an Oracle database. If you already have user credentials and connection information for an Oracle database, make sure you have an editor to connect to it and run code. [Oracle SQL Developer](https://www.oracle.com/tools/downloads/sqldev-downloads.html) is provided by Oracle and is a good free option.  Most new developers won't have this though, so read on for further options.

If you don't have an Oracle database already available to you, here are a few options.  
These options are listed in order from least complex to most complex:

### Option 1: Use Oracle Live SQL as a sandbox to test code.
1. Go to https://livesql.oracle.com/ and choose **Start Coding Now**
2. Log in or sign up for an Oracle Account (note: requires a "Title" and "Company" but you can just put "Developer" and "None" in those fields).
3. You can use the SQL worksheet to create objects and run SQL or PL/SQL statements, and you can also save sessions/scripts for sharing and re-running.

### Option 2: Create a free autonomous database on Oracle Cloud.
1. Sign up for an "Always Free" account at https://www.oracle.com/cloud/free/ (note: signup does appear to require credit card information).
2. Create an autonomous database (Data Warehouse).  Be sure to choose the "Always Free" options.
3. Use the Tools > Database Actions > SQL to open a SQL Developer window where you can run code.

### Option 3: Download a virtual machine database server image from Oracle.
1. Download and install [VirtualBox](https://www.virtualbox.org/) from Oracle.
2. Download and import one of the [freely available images](https://www.oracle.com/downloads/developer-vm/community-downloads.html); at the time of writing, the easiest to get started with might be [_Database App Development VM_](https://www.oracle.com/database/technologies/databaseappdev-vm.html). The image is quite large... at least 15 GB free space is recommended.

### Option 4: Install the Oracle database software and serve the database locally.
1. Download and install the a version of the Oracle database itself. Developer licenses are free.
2. This is the most complicated option, as Oracle database administration and configuration can be a full-time job in itself. As such, instructions are definitely outside the scope of this guide.  If for some reason you decide this is the option you'd like to take, please consult [Oracle's installation documentation](https://docs.oracle.com/en/database/oracle/oracle-database/19/install-and-upgrade.html).

## Verify that you are set to start coding by running a test SQL statement.
* In your SQL window, type the following code: `SELECT 1 FROM DUAL;`  
The expected result is that the output window will return one column labeled "1" with a single row that has a value of "1".
