     ValidateConnectionParams Method (OracleProviderBase)                                                   

ValidateConnectionParams Method (OracleProviderBase)

Syntax

```vbnet
```csharp

'Declaration
 

Public Overrides Function ValidateConnectionParams( _
   ByVal _dbServer_ As String, _
   ByVal _dbName_ As String, _
   ByVal _dbUser_ As String, _
   ByVal _dbPass_ As String _
) As Boolean

public override bool ValidateConnectionParams( 
   string _dbServer_,
   string _dbName_,
   string _dbUser_,
   string _dbPass_
)

#### Parameters

_dbServer_

_dbName_

_dbUser_

_dbPass_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[OracleProviderBase Class](FChoice.Common~FChoice.Common.Data.OracleProviderBase.md)  
[OracleProviderBase Members](FChoice.Common~FChoice.Common.Data.OracleProviderBase_members.md)  
[Base Implementation in ValidateConnectionParams](FChoice.Common~FChoice.Common.Data.DbProvider~ValidateConnectionParams.md)