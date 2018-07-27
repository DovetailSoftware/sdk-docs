### PrepareSQLStatement Method (OleDbDataProviderBase)

#### Syntax

```vbnet
'Declaration

Public Overrides Function PrepareSQLStatement( _
   ByVal _sqlStmt_ As String, _
   ByVal _cmdType_ As CommandType, _
   ByVal _commandParams_ As DataParameterCollection _
) As String
```

```csharp
public override string PrepareSQLStatement( 
   string _sqlStmt_,
   CommandType _cmdType_,
   DataParameterCollection _commandParams_
)
```

#### Parameters

_sqlStmt_

_cmdType_

_commandParams_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[OleDbDataProviderBase Class](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase.md)  
[OleDbDataProviderBase Members](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase_members.md)  
[Base Implementation in PrepareSQLStatement](FChoice.Common~FChoice.Common.Data.DbProvider~PrepareSQLStatement.md)