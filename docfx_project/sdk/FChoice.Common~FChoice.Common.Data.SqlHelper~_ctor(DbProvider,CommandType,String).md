### SqlHelper Constructor(DbProvider,CommandType,String)

The specific [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance that this instance of SqlHelper should use when performing database operations

The [CommandType](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataCommandTypeClassTopic.htm) this instance of SqlHelper should use when executing the _cmdTxt_ statement.

The text command to execute. The default value is an empty string ("").

Creates a new instance of SqlHelper with the specified [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance, [CommandType](FChoice.Common~FChoice.Common.Data.SqlHelper~CommandType.md) and command text (SQL statement)

Syntax

```vbnet
'Declaration

Public Function New( _
   ByVal _dataProvider_ As [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md), _
   ByVal _inCmdType_ As CommandType, _
   ByVal _cmdTxt_ As String _
)
```

```csharp
public SqlHelper( 
   [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) _dataProvider_,
   CommandType _inCmdType_,
   string _cmdTxt_
)
```

#### Parameters

_dataProvider_

The specific [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance that this instance of SqlHelper should use when performing database operations

_inCmdType_

The [CommandType](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataCommandTypeClassTopic.htm) this instance of SqlHelper should use when executing the _cmdTxt_ statement.

_cmdTxt_

The text command to execute. The default value is an empty string ("").

Remarks

When the _inCmdType_ parameter is set to **StoredProcedure**, set the _cmdTxt_ parameter to the name of the stored procedure. The user may be required to use escape character syntax if the stored procedure name contains any special characters. The command will call this stored procedure when you call one of the Execute methods.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SqlHelper Class](FChoice.Common~FChoice.Common.Data.SqlHelper.md)  
[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.SqlHelper~_ctor.md)