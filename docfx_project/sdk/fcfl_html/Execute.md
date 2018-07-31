_Execute_
---------

**Object and Type**

Object  : FCSQLExec

Type     : Method

**Prototype**

Public Sub Execute(ByVal SqlStr As String)

**Description**

This method is used to execute a SQL statement against the external database. This method is only used for SQL that **DOES NOT** return any database row. If you wish to execute SQL that does return rows, use the ExecuteReturnRows method.

When invoking dynamically created SQL based on user input it is best to use parameterized queries to avoid SQL injection attacks. SQLExec can run Parameterized queries by placing parameter placeholders in the SQL and calling AddSqlParameter with the parameter value before invoking the query. For example,

var sql = "UPDATE table_case SET title = {0} WHERE objid = 1";
SqlDB.AddSqlParameter(userInputCaseTitle);
SqlDB.Execute(sql);

The SQL provided must be valid SQL for the database system you connect to.

#### Parameters

| Parameter Name | Required? | Description |
|!--- |!--- |!--- |
| SqlStr | Yes | The SQL statement to execute |

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

    sql_db.records.MoveNext |
| t | Wend | sql_db.Execute "insert into foo values (44)"

  sql_db.CloseConnection