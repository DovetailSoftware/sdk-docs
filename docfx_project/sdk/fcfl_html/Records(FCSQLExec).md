### Records(FCSQLExec)

**Object and Type**

Object  : FCSQLExec

Type     : Property

**Prototype**

```
Public Records As ADODB.RecordSet
```

#### Description

This property contains the data records for the SQLExec object. The records are stored in an ADODB.Recordset object.

The records are created by using the ExecuteReturnRecords method.

In almost all cases, you do not need to ever worry about creating a Records object for a SQLExec object. When you create the object, the Records object is created for you automatically.

Data is read and written from the Records object using standard ADO methods. No additional methods are provided.

**Note**: For more information about ADODB Recordsets, please visit the Microsoft website at: [http://www.microsoft.com/](http://www.microsoft.com/).

**Example**

The following example demonstrates querying the case table, and setting the _alt_address_ field for each object returned, using the _Records_ property, but not with the generic object, but a SQLExec object.

**JavaScript:**
```
  // Create an external DB connection

  // Log in
  var SqlDB = FCSession.CreateSQLExec();

  SqlDB.OpenConnection("sql", "sa", "sa", "gaffer", "cl10");

  // Query for a simple table (with one column)
  // Iterate through it and print out the data

  SqlDB.ExecuteReturnRows("select * from table_case");
  while (SqlDB.Records.EOF != true)
  {
    SqlDB.Execute("update table_case set alt_address = 'Alt1' where"
                  " objid = " + SqlDB.Records("objid"));
    SqlDB.Records.MoveNext();
  }

  SqlDB.CloseConnection();
```

**Visual Basic:**
```
 Dim SqlDB As New FCSqlExec

 Set SqlDB = fc_session.CreateSqlExec

 SqlDB.OpenConnection "sql", "sa", "sa", "gaffer", "cl10"
 SqlDB.ExecuteReturnRows "select * from table_case"

  While SqlDB.records.EOF = False
    SqlDB.Execute "update table_case set alt_address = 'Alt2' " & _
                  "where objid = " & _
                  Trim$(Str$(SqlDB.records("objid")))
    SqlDB.records.MoveNext
  Wend

  SqlDB.CloseConnection
```