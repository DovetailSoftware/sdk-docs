### ValidateConnectionParams Method (DbProvider)

The host name, IP address, or Oracle SID of the database server

The catalog or database to use (not required for Oracle)

The user or login name to use for authentication

The password to use for authentication

Validates the supplied connection parameters against the rules of the underlying provider

Syntax

```vbnet
' Declaration

Public MustOverride Function ValidateConnectionParams( _
   ByVal _dbServer_ As String, _
   ByVal _dbName_ As String, _
   ByVal _dbUser_ As String, _
   ByVal _dbPass_ As String _
) As Boolean

public abstract bool ValidateConnectionParams( 
   string _dbServer_,
   string _dbName_,
   string _dbUser_,
   string _dbPass_
)

#### Parameters

_dbServer_

The host name, IP address, or Oracle SID of the database server

_dbName_

The catalog or database to use (not required for Oracle)

_dbUser_

The user or login name to use for authentication

_dbPass_

The password to use for authentication

#### Return Value

True if the parameters are valid according to the provider, or False if they are not

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)