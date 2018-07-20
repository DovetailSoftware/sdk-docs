### OleDbDataProviderBase Class Members

The following tables list the members exposed by [OleDbDataProviderBase](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase.md).

Public Properties

|   | Name | Description |
| --- | --- | --- |
| ![Public Property](dotnetimages/publicProperty.png) | [CanBatchQueries](FChoice.Common~FChoice.Common.Data.DbProvider~CanBatchQueries.md) | Specifies whether the underlying database type for this provider can support multiple SQL statements per database round-trip (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [ConnectionString](FChoice.Common~FChoice.Common.Data.DbProvider~ConnectionString.md) | Gets or sets the connection string this provider will use for database connections (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [MaxInListItems](FChoice.Common~FChoice.Common.Data.DbProvider~MaxInListItems.md) | Gets the maximum number of items the underlying database type supports in an IN() or NOT IN() SQL clause (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [ProviderName](FChoice.Common~FChoice.Common.Data.DbProvider~ProviderName.md) | A general provider type or key to classify this provider (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [RequiresDbNameParameter](FChoice.Common~FChoice.Common.Data.DbProvider~RequiresDbNameParameter.md) | Gets whether or not this provider requires the "dbname" argument for the [CreateConnectionString Method](FChoice.Common~FChoice.Common.Data.DbProvider~CreateConnectionString.md) (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Property](dotnetimages/publicProperty.png) | [TypeMapper](FChoice.Common~FChoice.Common.Data.DbProvider~TypeMapper.md) | This property is intended for future use and is not currently used. (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |



Public Methods

|   | Name | Description |
| --- | --- | --- |
| ![Public Method](dotnetimages/publicMethod.png) | [CreateCommand](FChoice.Common~FChoice.Common.Data.DbProvider~CreateCommand.md) | (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [CreateConnectionString](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase~CreateConnectionString.md) | Overridden.    |
| ![Public Method](dotnetimages/publicMethod.png) | [CreateParameter](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase~CreateParameter.md) | Overridden.    |
| ![Public Method](dotnetimages/publicMethod.png) | [FormatDateLiteral](FChoice.Common~FChoice.Common.Data.DbProvider~FormatDateLiteral.md) | Converts a DateTime value to a string according to the specific format of the underlying database type (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [GetAdapter](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase~GetAdapter.md) | Overloaded. Overridden.    |
| ![Public Method](dotnetimages/publicMethod.png) | [GetAsStatement](FChoice.Common~FChoice.Common.Data.DbProvider~GetAsStatement.md) | Qualifies a column or table alias according to this provider's database type's rules regarding use of the AS keyword (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [GetBitwiseAndStatement](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase~GetBitwiseAndStatement.md) | Overridden.    |
| ![Public Method](dotnetimages/publicMethod.png) | [GetConnection](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase~GetConnection.md) | Overloaded. Overridden.    |
| ![Public Method](dotnetimages/publicMethod.png) | [GetDateStatement](FChoice.Common~FChoice.Common.Data.DbProvider~GetDateStatement.md) | Gets a SQL statement fragment for the database-specific syntax of retrieving the current date (i.e. SYSDATE on Oracle or GETDATE() on MSSQL). (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [GetDBDate](FChoice.Common~FChoice.Common.Data.DbProvider~GetDBDate.md) | Executes a statement against the database to retrieve the current date/time on the database (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [GetDbVersion](FChoice.Common~FChoice.Common.Data.DbProvider~GetDbVersion.md) | Overloaded.  (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [GetParameterNamePrefix](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase~GetParameterNamePrefix.md) | Overridden.    |
| ![Public Method](dotnetimages/publicMethod.png) | [PrepareParameter](FChoice.Common~FChoice.Common.Data.DbProvider~PrepareParameter.md) | Prepares a parameter for the specified type of query according to the rules of the underlying database type (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [PrepareSQLStatement](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase~PrepareSQLStatement.md) | Overridden.    |
| ![Public Method](dotnetimages/publicMethod.png) | [RemoveParameterNamePrefix](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase~RemoveParameterNamePrefix.md) | Overridden.    |
| ![Public Method](dotnetimages/publicMethod.png) | [SetDatabaseParameterTypeForClobText](FChoice.Common~FChoice.Common.Data.DbProvider~SetDatabaseParameterTypeForClobText.md) | (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [TestConnection](FChoice.Common~FChoice.Common.Data.DbProvider~TestConnection.md) | Overloaded.  (Inherited from [FChoice.Common.Data.DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md)) |
| ![Public Method](dotnetimages/publicMethod.png) | [ValidateConnectionParams](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase~ValidateConnectionParams.md) | Overridden.    |





#### Reference

[OleDbDataProviderBase Class](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase.md)  
[FChoice.Common.Data Namespace](FChoice.Common~FChoice.Common.Data_namespace.md)