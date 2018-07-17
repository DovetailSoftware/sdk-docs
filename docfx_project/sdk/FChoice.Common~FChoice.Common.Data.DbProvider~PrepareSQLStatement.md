     PrepareSQLStatement Method (DbProvider)                                                   

PrepareSQLStatement Method (DbProvider)

The statement to prepare and format

The type of query being executed

Parameters for the parameterized query or stored procedure

Prepares and formats a SQL statement according to the rules of the underlying database type

Syntax

```vbnet
```csharp

'Declaration
 

Public MustOverride Function PrepareSQLStatement( _
   ByVal _sqlStmt_ As String, _
   ByVal _cmdType_ As [CommandType](#), _
   ByVal _commandParams_ As [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md) _
) As String

public abstract string PrepareSQLStatement( 
   string _sqlStmt_,
   [CommandType](#) _cmdType_,
   [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md) _commandParams_
)

#### Parameters

_sqlStmt_

The statement to prepare and format

_cmdType_

The type of query being executed

_commandParams_

Parameters for the parameterized query or stored procedure

#### Return Value

A formatted and prepared string, ready to be executed against the database

Remarks

This method will replace special tokens with statements or parameter names according to the type of query and parameters passed in. For example, the _{DATE}_ token will be replaced with the database type's special date statement (as returned by the [GetDateStatement Method](FChoice.Common~FChoice.Common.Data.DbProvider~GetDateStatement.md)). Parameters are specified using the _{n}_ syntax where _n_ is an ascending number. The number of _{n}_ parameters must match the number of parameters specified in the _commandParams_ argument.

For example, the string:

SELECT {DATE} AS CurDate FROM some_table WHERE name = {0} AND id = {1}

with the parameters named "nameVal" and "idVal" will be formatted as such with an MSSQL provider:

SELECT GETDATE() AS CurDate FROM some_table WHERE name = @nameVal AND id = @idVal

This statement can then be executed against the database using an ADO.NET [IDbCommand](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbCommandClassTopic.htm) instance, or the [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) class.

**NOTE**: [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) will automatically call this method during Execute* methods like [ExecuteNonQuery](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteNonQuery.md) or [ExecuteDataSet](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteDataSet.md). Generally, this method should not be called directly, only through [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)