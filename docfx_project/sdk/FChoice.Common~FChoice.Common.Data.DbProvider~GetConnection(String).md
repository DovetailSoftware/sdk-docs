     GetConnection(String) Method                                                   

GetConnection(String) Method

A full connection string that is compatible with the underlying database type. See the remarks for information on how to generate safe connection strings.

Gets an [IDbConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbConnectionClassTopic.htm) object instance of the correct type for the underlying database (i.e. [SqlConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataSqlClientSqlConnectionClassTopic.htm) for MSSQL) that is prepared to connect to the specified database using the specified connection string.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads MustOverride Function GetConnection( _
   ByVal _conStr_ As String _
) As [IDbConnection](#)

public abstract [IDbConnection](#) GetConnection( 
   string _conStr_
)

#### Parameters

_conStr_

A full connection string that is compatible with the underlying database type. See the remarks for information on how to generate safe connection strings.

#### Return Value

An [IDbConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbConnectionClassTopic.htm) object instance of the correct type for the underlying database (i.e. [SqlConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataSqlClientSqlConnectionClassTopic.htm) for MSSQL).

Remarks

The connection instance is not open by default. In order to open the connection, use the [Open](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbConnectionClassTopic.htm) method on the [IDbConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbConnectionClassTopic.htm) reference returned by this method.

To generate connection strings in a database-agnostic fashion, please see the [ConstructConnectionString](FChoice.Common~FChoice.Common.Data.DbProvider~ConstructConnectionString.md) and the [CreateConnectionString](FChoice.Common~FChoice.Common.Data.DbProvider~CreateConnectionString.md) methods.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DbProvider~GetConnection.md)