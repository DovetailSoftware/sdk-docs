### GetAdapter(IDbConnection) Method

The database connection this adapter should use when performing database operations

Gets a database type-specific DbDataAdapter instance for this provider type (i.e. SqlDataAdapter for MSSQL) initialized to use the specified connection to the database.

#### Syntax

```vbnet
'Declaration

Public Overloads MustOverride Function GetAdapter( _
   ByVal _conn_ As IDbConnection _
) As DbDataAdapter
```

```csharp
public abstract DbDataAdapter GetAdapter( 
   IDbConnection _conn_
)
```

#### Parameters

_conn_

The database connection this adapter should use when performing database operations

#### Return Value

A DbDataAdapter instance for this provider type (i.e. SqlDataAdapter for MSSQL), initialized to use the specified connection

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DbProvider~GetAdapter.md)