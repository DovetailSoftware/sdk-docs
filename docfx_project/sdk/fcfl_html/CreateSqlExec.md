_CreateSqlExec_
---------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Function CreateSqlExec() As FCSqlExec

**Description**

This method creates and initializes a new FCSqlExec object. The default object that is created uses the existing database connection (that you referenced in your fc.env file). If you wish to query an external database, you must use the OpenConnection method.

**Returns**

A new FCSqlExec object, properly initialized.

**Example**

The following example demonstrates opening an external connection, executing SQL against it, and closing the connection.

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

  // Create an external DB connection

  // Log in

  var SqlDB = FCSession.CreateSQLExec();

 SqlDB.OpenConnection("sql", "sa", "sa", "gaffer", "cl10");

 // Query for a simple table (with one column)

  // Iterate through it and print out the data

  SqlDB.ExecuteReturnRows("select * from foo");

  while (SqlDB.Records.EOF != true)

  {

    Response.Write ("Value: " + SqlDB.Records("out_col"));  

    SqlDB.Records.MoveNext();

  }

  // Now add a row, and close the connection

  SqlDB.Execute("insert into foo values (55)");

  SqlDB.CloseConnection();

**Visual Basic:**

The code in this example is written in Visual Basic.

  Dim sql_db As FCSqlExec

  Set sql_db = fc_session.CreateSqlExec

 sql_db.OpenConnection "sql", "sa", "sa", "gaffer", "cl10"

 sql_db.ExecuteReturnRows "select * from foo"

  sql_db.records.MoveFirst

  While sql_db.records.EOF = False

    MsgBox sql_db.records("out_col")

    sql_db.records.MoveNext

  Wend

  sql_db.Execute "insert into foo values (44)"

  sql_db.CloseConnection