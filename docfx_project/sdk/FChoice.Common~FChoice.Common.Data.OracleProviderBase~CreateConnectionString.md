### CreateConnectionString Method (OracleProviderBase)

#### Syntax

```vbnet
'Declaration

Public Overrides Function CreateConnectionString( _
   ByVal _dbServer_ As String, _
   ByVal _dbName_ As String, _
   ByVal _dbUser_ As String, _
   ByVal _dbPass_ As String, _
   ByVal _extraParams_ As String _
) As String
```

```csharp
public override string CreateConnectionString( 
   string _dbServer_,
   string _dbName_,
   string _dbUser_,
   string _dbPass_,
   string _extraParams_
)
```

#### Parameters

_dbServer_

_dbName_

_dbUser_

_dbPass_

_extraParams_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[OracleProviderBase Class](FChoice.Common~FChoice.Common.Data.OracleProviderBase.md)  
[OracleProviderBase Members](FChoice.Common~FChoice.Common.Data.OracleProviderBase_members.md)  
[Base Implementation in CreateConnectionString](FChoice.Common~FChoice.Common.Data.DbProvider~CreateConnectionString.md)