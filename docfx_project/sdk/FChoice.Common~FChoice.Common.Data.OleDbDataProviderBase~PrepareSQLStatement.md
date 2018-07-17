     PrepareSQLStatement Method (OleDbDataProviderBase)                                                   

PrepareSQLStatement Method (OleDbDataProviderBase)

Syntax

```vbnet
```csharp

'Declaration
 

Public Overrides Function PrepareSQLStatement( _
   ByVal _sqlStmt_ As String, _
   ByVal _cmdType_ As [CommandType](#), _
   ByVal _commandParams_ As [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md) _
) As String

public override string PrepareSQLStatement( 
   string _sqlStmt_,
   [CommandType](#) _cmdType_,
   [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md) _commandParams_
)

#### Parameters

_sqlStmt_

_cmdType_

_commandParams_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[OleDbDataProviderBase Class](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase.md)  
[OleDbDataProviderBase Members](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase_members.md)  
[Base Implementation in PrepareSQLStatement](FChoice.Common~FChoice.Common.Data.DbProvider~PrepareSQLStatement.md)