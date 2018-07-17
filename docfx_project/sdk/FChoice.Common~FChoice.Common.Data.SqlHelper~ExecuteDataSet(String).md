     ExecuteDataSet(String) Method                                                   

ExecuteDataSet(String) Method

The text command to execute. The default value is an empty string ("").

Executes the the specified SQL using the default [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) and returns the results as a [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm)

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Shared Function ExecuteDataSet( _
   ByVal _commandText_ As String _
) As [DataSet](#)

public static [DataSet](#) ExecuteDataSet( 
   string _commandText_
)

#### Parameters

_commandText_

The text command to execute. The default value is an empty string ("").

#### Return Value

A [DataSet](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataDataSetClassTopic.htm) with zero or more [DataTable](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatadatatableclasstopic.htm) objects each containing zero or more rows.

Remarks

Not all providers return a DataSet with the same structure if no results are returned by the query. Some providers return an empty DataSet. Some providers return a DataSet with a single DataTable which contains zero rows. Test for tables and rows using the Count property on the DataSet and any DataTables before assuming any Tables or Rows exist. 

In no case will the DataSet returned be a null reference (**Nothing** in Visual Basic).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SqlHelper Class](FChoice.Common~FChoice.Common.Data.SqlHelper.md)  
[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteDataSet.md)