### GetAdapter(IDbConnection,String) Method

The database connection this adapter should use when performing database operations

The SQL statement to use as the SELECT command for this adapter

Gets a database type-specific DbDataAdapter instance for this provider type (i.e. SqlDataAdapter for MSSQL) initialized to use the specified connection to the database and the specified SQL statement to execute.

Syntax

```vbnet
' Declaration

Public Overloads MustOverride Function GetAdapter( _
   ByVal _conn_ As [IDbConnection](#), _
   ByVal _sqlStmt_ As String _
) As [DbDataAdapter](#)

public abstract [DbDataAdapter](#) GetAdapter( 
   [IDbConnection](#) _conn_,
   string _sqlStmt_
)

#### Parameters

_conn_

The database connection this adapter should use when performing database operations

_sqlStmt_

The SQL statement to use as the SELECT command for this adapter

#### Return Value

A DbDataAdapter instance for this provider type (i.e. SqlDataAdapter for MSSQL), initialized to use the specified connection and SELECT SQL statement

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DbProvider~GetAdapter.md)