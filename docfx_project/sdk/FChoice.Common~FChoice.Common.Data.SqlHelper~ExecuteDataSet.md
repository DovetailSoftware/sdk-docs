### ExecuteDataSet Method

#### Overload List

| Overload | Description |
| --- | --- |
| [ExecuteDataSet()](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteDataSet().md) | Executes the the SQL specified in the [CommandText Property](FChoice.Common~FChoice.Common.Data.SqlHelper~CommandText.md) against the database using the provider specified in the [DataProvider Property](FChoice.Common~FChoice.Common.Data.SqlHelper~DataProvider.md) and returns the results as a [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)   |
| [ExecuteDataSet(String)](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteDataSet(String).md) | Executes the the specified SQL using the default [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) and returns the results as a [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)   |
| [ExecuteDataSet(CommandType,String)](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteDataSet(CommandType,String).md) | Executes the the specified SQL against the database using the default [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) and returns the results as a [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)   |
| [ExecuteDataSet(CommandType,String,DataParameterCollection)](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteDataSet(CommandType,String,DataParameterCollection).md) | Executes the the specified parameterized SQL command with the specified parameters against the database using the default [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) and returns the results as a [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)   |
| [ExecuteDataSet(IDbConnection,CommandType,String)](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteDataSet(IDbConnection,CommandType,String).md) | Executes the the specified SQL using the provided database connection and returns the results as a [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)   |
| [ExecuteDataSet(IDbConnection,CommandType,String,DataParameterCollection)](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteDataSet(IDbConnection,CommandType,String,DataParameterCollection).md) | Executes the the specified parameterized SQL with the specified parameters using the provided database connection and returns the results as a [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)   |
| [ExecuteDataSet(IDbTransaction,CommandType,String)](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteDataSet(IDbTransaction,CommandType,String).md) | Executes the the specified SQL using the provided database transaction and returns the results as a [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)   |
| [ExecuteDataSet(IDbTransaction,CommandType,String,DataParameterCollection)](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteDataSet(IDbTransaction,CommandType,String,DataParameterCollection).md) | Executes the the specified SQL with the specified parameters using the provided database transaction and returns the results as a [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)   |

#### Remarks

Not all providers return a DataSet with the same structure if no results are returned by the query. Some providers return an empty DataSet. Some providers return a DataSet with a single DataTable which contains zero rows. Test for tables and rows using the Count property on the DataSet and any DataTables before assuming any Tables or Rows exist. 

In no case will the DataSet returned be a null reference (**Nothing** in Visual Basic).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SqlHelper Class](FChoice.Common~FChoice.Common.Data.SqlHelper.md)
[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)
