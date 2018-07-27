### GetConnection Method (DbProvider)

Gets an [IDbConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbConnectionClassTopic.htm) object instance of the correct type for the underlying database (i.e. [SqlConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataSqlClientSqlConnectionClassTopic.htm) for MSSQL) that is prepared to connect to the specified database using the default connection string specified in the application configuration file.

Gets an [IDbConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbConnectionClassTopic.htm) object instance of the correct type for the underlying database (i.e. [SqlConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataSqlClientSqlConnectionClassTopic.htm) for MSSQL) that is prepared to connect to the specified database.

#### Overload List

| Overload | Description |
| --- | --- |
| [GetConnection()](FChoice.Common~FChoice.Common.Data.DbProvider~GetConnection().md) | Gets an [IDbConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbConnectionClassTopic.htm) object instance of the correct type for the underlying database (i.e. [SqlConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataSqlClientSqlConnectionClassTopic.htm) for MSSQL) that is prepared to connect to the specified database using the default connection string specified in the application configuration file.   |
| [GetConnection(String)](FChoice.Common~FChoice.Common.Data.DbProvider~GetConnection(String).md) | Gets an [IDbConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbConnectionClassTopic.htm) object instance of the correct type for the underlying database (i.e. [SqlConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataSqlClientSqlConnectionClassTopic.htm) for MSSQL) that is prepared to connect to the specified database using the specified connection string.   |

#### Remarks

The connection instance is not open by default. In order to open the connection, use the [Open](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbConnectionClassTopic.htm) method on the [IDbConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbConnectionClassTopic.htm) reference returned by this method.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)