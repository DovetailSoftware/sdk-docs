### Add Sql Parameter 

**Object and Type**

Object  : FCSQLExec

Type     : Method

**Prototype**

```
Public Sub AddSqlParameter(ByVal value As Object)
```

#### Description

When executing SQL statements having user input it is best to use parameterized queries to avoid the potential for SQL injection attacks.

This method is used before calling Execute or ExecuteReturnRows to add sql query parameter values to the SQL query which is about to be executed. The SQL being executed needs to have parameter placeholders. Parameter placeholders are numbers starting with zero surrounded by curly braces. For example,

var sql = "Select count(*) from table_case where title = {0} or title = {1}"

SqlDB.  AddSqlParameter(user_input1);

SqlDB.AddSqlParameter(user_input2);

SqlDB.Execute(sql);

Note: The type of the value being added as a SQL parameter needs to match the database field to which it is being applied. For example, you will receive an error if you apply a number parameter value to a string field.  

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| value | Yes | The sql query parameter value. |
