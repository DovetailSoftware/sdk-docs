### FChoice.Common.Data Namespace

The **FChoice.Common.Data** namespace provides data access services to First Choice .NET-based products.

Classes

|   | Class | Description |
| --- | --- | --- |
| ![Class](dotnetimages/Class.png) | [DataAccessSectionHandler](FChoice.Common~FChoice.Common.Data.DataAccessSectionHandler.md) | Provides configuration information from the .NET application configuration file for the DbProviderFactory to load custom data providers. |
| ![Class](dotnetimages/Class.png) | DataParameterCollection | Contains a collection of [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbDataParameterClassTopic.htm) objects for use in a database query. |
| ![Class](dotnetimages/Class.png) | [DataSetSurrogate](FChoice.Common~FChoice.Common.Data.DataSetSurrogate.md) | Reads or writes a DataSet as a compact binary stream. |
| ![Class](dotnetimages/Class.png) | [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) | Abstract base class for database providers used by [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) and applications. |
| ![Class](dotnetimages/Class.png) | [DbProviderFactory](FChoice.Common~FChoice.Common.Data.DbProviderFactory.md) | Provides a way of customized data access using [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) objects that abstract database access |
| ![Class](dotnetimages/Class.png) | [FCTypes](FChoice.Common~FChoice.Common.Data.FCTypes.md) | This class is not currently used and is intended for future products. |
| ![Class](dotnetimages/Class.png) | [ODPOracleProvider](FChoice.Common~FChoice.Common.Data.ODPOracleProvider.md) |   |
| ![Class](dotnetimages/Class.png) | [OleDbDataProviderBase](FChoice.Common~FChoice.Common.Data.OleDbDataProviderBase.md) | Abstract base class for OleDb-based custom data providers |
| ![Class](dotnetimages/Class.png) | [OracleProviderBase](FChoice.Common~FChoice.Common.Data.OracleProviderBase.md) | Abstract base class for Oracle-based custom data providers |
| ![Class](dotnetimages/Class.png) | [SqlHelper](FChoice.Common~FChoice.Common.Data.SqlHelper.md) | Provides a convenience and data provider-agnostic wrapper around ADO.NET |
| ![Class](dotnetimages/Class.png) | [TypeMapper](FChoice.Common~FChoice.Common.Data.TypeMapper.md) | This class is not currently used and is intended for future products. |
| ![Class](dotnetimages/Class.png) | [UpdateQueryBatch](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md) | Helper class for grouping INSERT and UPDATE statements together into a single batch without concern for the underlying database type's support for statement batching |

Interfaces

|   | Interface | Description |
| --- | --- | --- |
| ![Interface](dotnetimages/Interface.png) | [IDbExtension](FChoice.Common~FChoice.Common.Data.IDbExtension.md) | IDbExtension allows applications to specify database-specific extensions to the DbProvider |

#### Reference

[FChoice.Common Assembly](FChoice.Common.md)