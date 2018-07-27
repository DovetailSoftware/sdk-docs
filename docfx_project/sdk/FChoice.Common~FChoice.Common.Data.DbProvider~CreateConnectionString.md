### CreateConnectionString Method (DbProvider)

The hostname, IP, or unique identifier name for the database (i.e. host name for MSSQL or SID for Oracle)

The catalog or database name for the database (for MSSQL and Sybase, not required for Oracle-based providers)

The user name for database authentication

The password for the user for database authentication

Additional key/value pairs separated by a semi-colon (;).

Creates a basic connection string from the basic common required elements according the rules of the specific database type

#### Syntax

```vbnet
'Declaration

Public MustOverride Function CreateConnectionString( _
   ByVal _dbServer_ As String, _
   ByVal _dbName_ As String, _
   ByVal _dbUser_ As String, _
   ByVal _dbPass_ As String, _
   ByVal _extraParams_ As String _
) As String
```

```csharp
public abstract string CreateConnectionString( 
   string _dbServer_,
   string _dbName_,
   string _dbUser_,
   string _dbPass_,
   string _extraParams_
)
```

#### Parameters

_dbServer_

The hostname, IP, or unique identifier name for the database (i.e. host name for MSSQL or SID for Oracle)

_dbName_

The catalog or database name for the database (for MSSQL and Sybase, not required for Oracle-based providers)

_dbUser_

The user name for database authentication

_dbPass_

The password for the user for database authentication

_extraParams_

Additional key/value pairs separated by a semi-colon (;).

#### Return Value

A properly formatted, ADO.NET-compliant connection string.

#### Remarks

**NOTE**: This method does not validate the format of the _extraParams_ argument. If the the value of _extraParams_ is invalid, the connection string may not work properly.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)