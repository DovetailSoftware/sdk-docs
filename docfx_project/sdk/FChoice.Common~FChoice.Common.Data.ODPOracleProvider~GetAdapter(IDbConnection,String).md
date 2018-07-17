     GetAdapter(IDbConnection,String) Method                                                   

GetAdapter(IDbConnection,String) Method

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Overrides Function GetAdapter( _
   ByVal _conn_ As [IDbConnection](#), _
   ByVal _sqlStmt_ As String _
) As [DbDataAdapter](#)

public override [DbDataAdapter](#) GetAdapter( 
   [IDbConnection](#) _conn_,
   string _sqlStmt_
)

#### Parameters

_conn_

_sqlStmt_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ODPOracleProvider Class](FChoice.Common~FChoice.Common.Data.ODPOracleProvider.md)  
[ODPOracleProvider Members](FChoice.Common~FChoice.Common.Data.ODPOracleProvider_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.ODPOracleProvider~GetAdapter.md)  
[Base Implementation in GetAdapter(IDbConnection,String)](FChoice.Common~FChoice.Common.Data.DbProvider~GetAdapter(IDbConnection,String).md)