     FillDataSet(DataSet,String\[\],IDbConnection,CommandType,String,DataParameterCollection,Boolean) Method                                                   

FillDataSet(DataSet,String\[\],IDbConnection,CommandType,String,DataParameterCollection,Boolean) Method

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Shared Sub FillDataSet( _
   ByVal _ds_ As [DataSet](#), _
   ByVal _tableNames_() As String, _
   ByVal _conn_ As [IDbConnection](#), _
   ByVal _cmdType_ As [CommandType](#), _
   ByVal _cmdText_ As String, _
   ByVal _dataParams_ As [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md), _
   ByVal _fillSchema_ As Boolean _
) 

public static void FillDataSet( 
   [DataSet](#) _ds_,
   string\[\] _tableNames_,
   [IDbConnection](#) _conn_,
   [CommandType](#) _cmdType_,
   string _cmdText_,
   [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md) _dataParams_,
   bool _fillSchema_
)

#### Parameters

_ds_

_tableNames_

_conn_

_cmdType_

_cmdText_

_dataParams_

_fillSchema_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SqlHelper Class](FChoice.Common~FChoice.Common.Data.SqlHelper.md)  
[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.SqlHelper~FillDataSet.md)