### DbProvider Class Members

The following tables list the members exposed by [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md).

#### Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png) | [CanBatchQueries](FChoice.Common~FChoice.Common.Data.DbProvider~CanBatchQueries.md) | Specifies whether the underlying database type for this provider can support multiple SQL statements per database round-trip   |
| ![Public Property](dotnetimages/publicProperty.png) | [ConnectionString](FChoice.Common~FChoice.Common.Data.DbProvider~ConnectionString.md) | Gets or sets the connection string this provider will use for database connections   |
| ![Public Property](dotnetimages/publicProperty.png) | [MaxInListItems](FChoice.Common~FChoice.Common.Data.DbProvider~MaxInListItems.md) | Gets the maximum number of items the underlying database type supports in an IN() or NOT IN() SQL clause   |
| ![Public Property](dotnetimages/publicProperty.png) | [ProviderName](FChoice.Common~FChoice.Common.Data.DbProvider~ProviderName.md) | A general provider type or key to classify this provider   |
| ![Public Property](dotnetimages/publicProperty.png) | [RequiresDbNameParameter](FChoice.Common~FChoice.Common.Data.DbProvider~RequiresDbNameParameter.md) | Gets whether or not this provider requires the "dbname" argument for the [CreateConnectionString Method](FChoice.Common~FChoice.Common.Data.DbProvider~CreateConnectionString.md)   |
| ![Public Property](dotnetimages/publicProperty.png) | [TypeMapper](FChoice.Common~FChoice.Common.Data.DbProvider~TypeMapper.md) | This property is intended for future use and is not currently used.   |

#### Public Methods

|   | Name | Description |
| --- | --- | --- |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [ConstructConnectionString](FChoice.Common~FChoice.Common.Data.DbProvider~ConstructConnectionString.md) | Constructs a valid ADO.NET-compliant connection string from the supplied key/value pairs.   |
| ![Public Method](dotnetimages/publicMethod.png) | [CreateCommand](FChoice.Common~FChoice.Common.Data.DbProvider~CreateCommand.md) |   |
| ![Public Method](dotnetimages/publicMethod.png) | [CreateConnectionString](FChoice.Common~FChoice.Common.Data.DbProvider~CreateConnectionString.md) | Creates a basic connection string from the basic common required elements according the rules of the specific database type   |
| ![Public Method](dotnetimages/publicMethod.png) | [CreateParameter](FChoice.Common~FChoice.Common.Data.DbProvider~CreateParameter.md) | Creates a new IDbDataParameter of the specific underlying type for this database provider type (i.e. SqlHelper for MSSQL, etc)   |
| ![Public Method](dotnetimages/publicMethod.png) | [FormatDateLiteral](FChoice.Common~FChoice.Common.Data.DbProvider~FormatDateLiteral.md) | Converts a DateTime value to a string according to the specific format of the underlying database type   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetAdapter](FChoice.Common~FChoice.Common.Data.DbProvider~GetAdapter.md) | Overloaded. Gets a database type-specific DbDataAdapter instance for this provider type (i.e. SqlDataAdapter for MSSQL) without any options set yet.   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetAsStatement](FChoice.Common~FChoice.Common.Data.DbProvider~GetAsStatement.md) | Qualifies a column or table alias according to this provider's database type's rules regarding use of the AS keyword   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetBitwiseAndStatement](FChoice.Common~FChoice.Common.Data.DbProvider~GetBitwiseAndStatement.md) | Formats a bitwise AND statement according to the language features of the underlying database type   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetConnection](FChoice.Common~FChoice.Common.Data.DbProvider~GetConnection.md) | Overloaded. Gets an [IDbConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbConnectionClassTopic.htm) object instance of the correct type for the underlying database (i.e. [SqlConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataSqlClientSqlConnectionClassTopic.htm) for MSSQL) that is prepared to connect to the specified database using the default connection string specified in the application configuration file.   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetDateStatement](FChoice.Common~FChoice.Common.Data.DbProvider~GetDateStatement.md) | Gets a SQL statement fragment for the database-specific syntax of retrieving the current date (i.e. SYSDATE on Oracle or GETDATE() on MSSQL).   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetDBDate](FChoice.Common~FChoice.Common.Data.DbProvider~GetDBDate.md) | Executes a statement against the database to retrieve the current date/time on the database   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetDbVersion](FChoice.Common~FChoice.Common.Data.DbProvider~GetDbVersion.md) | Overloaded. Executes a statement against the database to retrieve the database software's version number   |
| ![Public Method](dotnetimages/publicMethod.png) | [GetParameterNamePrefix](FChoice.Common~FChoice.Common.Data.DbProvider~GetParameterNamePrefix.md) | Gets the prefix used by the underlying database type for parameters in a parameterized query   |
| ![Public Method](dotnetimages/publicMethod.png)![static (Shared in Visual Basic)](dotnetimages/static.png) | [ParseConnectionString](FChoice.Common~FChoice.Common.Data.DbProvider~ParseConnectionString.md) | Parses a connection string into name-value pairs   |
| ![Public Method](dotnetimages/publicMethod.png) | [PrepareParameter](FChoice.Common~FChoice.Common.Data.DbProvider~PrepareParameter.md) | Prepares a parameter for the specified type of query according to the rules of the underlying database type   |
| ![Public Method](dotnetimages/publicMethod.png) | [PrepareSQLStatement](FChoice.Common~FChoice.Common.Data.DbProvider~PrepareSQLStatement.md) | Prepares and formats a SQL statement according to the rules of the underlying database type   |
| ![Public Method](dotnetimages/publicMethod.png) | [RemoveParameterNamePrefix](FChoice.Common~FChoice.Common.Data.DbProvider~RemoveParameterNamePrefix.md) | Removes, if necessary, the parameter name prefix on a given parameter name   |
| ![Public Method](dotnetimages/publicMethod.png) | [SetDatabaseParameterTypeForClobText](FChoice.Common~FChoice.Common.Data.DbProvider~SetDatabaseParameterTypeForClobText.md) |   |
| ![Public Method](dotnetimages/publicMethod.png) | [TestConnection](FChoice.Common~FChoice.Common.Data.DbProvider~TestConnection.md) | Overloaded. Executes a test to connect to the database using the default connection string   |
| ![Public Method](dotnetimages/publicMethod.png) | [ValidateConnectionParams](FChoice.Common~FChoice.Common.Data.DbProvider~ValidateConnectionParams.md) | Validates the supplied connection parameters against the rules of the underlying provider   |

#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[FChoice.Common.Data Namespace](FChoice.Common~FChoice.Common.Data_namespace.md)