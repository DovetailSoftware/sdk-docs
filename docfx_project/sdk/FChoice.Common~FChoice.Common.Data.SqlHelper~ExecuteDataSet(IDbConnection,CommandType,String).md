### ExecuteDataSet(IDbConnection,CommandType,String) Method

A configured connection to the database

The [CommandType](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataCommandTypeClassTopic.htm) to use when executing the _commandText_ statement.

The text command to execute. The default value is an empty string ("").

Executes the the specified SQL using the provided database connection and returns the results as a [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)

Syntax

```vbnet
'Declaration

Public Overloads Shared Function ExecuteDataSet( _
   ByVal _connection_ As IDbConnection, _
   ByVal _commandType_ As CommandType, _
   ByVal _commandText_ As String _
) As DataSet
```

```csharp
public static DataSet ExecuteDataSet( 
   IDbConnection _connection_,
   CommandType _commandType_,
   string _commandText_
)
```

#### Parameters

_connection_

A configured connection to the database

_commandType_

The [CommandType](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataCommandTypeClassTopic.htm) to use when executing the _commandText_ statement.

_commandText_

The text command to execute. The default value is an empty string ("").

#### Return Value

A [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm) with zero or more [DataTable](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatadatatableclasstopic.htm) objects each containing zero or more rows.

Remarks

The _connection_ parameter is not required to be an open connection. If it is not open when passed to this method, it will be opened and will be closed when the method is finished. If it is passed in open, or live, it will remain open when this method completes.

Not all providers return a DataSet with the same structure if no results are returned by the query. Some providers return an empty DataSet. Some providers return a DataSet with a single DataTable which contains zero rows. Test for tables and rows using the Count property on the DataSet and any DataTables before assuming any Tables or Rows exist. 

In no case will the DataSet returned be a null reference (**Nothing** in Visual Basic).

When the _commandType_ parameter is set to **StoredProcedure**, set the _commandText_ parameter to the name of the stored procedure. The user may be required to use escape character syntax if the stored procedure name contains any special characters. The command will call this stored procedure when you call one of the Execute methods.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SqlHelper Class](FChoice.Common~FChoice.Common.Data.SqlHelper.md)  
[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteDataSet.md)