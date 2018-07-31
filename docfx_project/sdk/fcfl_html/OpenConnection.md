_OpenConnection_
----------------

**Object and Type**

Object  : FCSQLExec

Type     : Method

**Prototype**

Public Sub OpenConnection(ByVal TheDB As String, _

                          ByVal UserName As String, _

                          ByVal Password As String, _

                          ByVal DBServer As String, _

                          ByVal DBName As String)

**Description**

This method is used to open a connection to an external database. If this FCSQLExec object is using the default connection to the Clarify database, you do not need to call this method.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| TheDB | Yes | Database system to connect to. One of "SQL" or "ORACLE" |
| UserName | Yes | User name for login |
| Password | Yes | Password for the user |
| DBServer | Yes | Server on which the database is located |
| DBName | Yes | Database name |

**Error Codes**

**Value**                **Meaning**

14001                                      You may not connect with this SQLExec object to more than one database

14002                                      Could not connect with the supplied parameters

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

    sql_db.records.MoveNext | Wend | sql_db.Execute "insert into foo values (44)"

  sql_db.CloseConnection