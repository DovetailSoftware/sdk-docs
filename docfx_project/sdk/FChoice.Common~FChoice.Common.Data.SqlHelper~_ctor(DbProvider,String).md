### SqlHelper Constructor(DbProvider,String)

The specific [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance that this instance of SqlHelper should use when performing database operations

The text command to execute. The default value is an empty string ("").

Creates a new instance of SqlHelper using the specified [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance and command text (SQL statement) and the [CommandType](FChoice.Common~FChoice.Common.Data.SqlHelper~CommandType.md) set to **Text**

#### Syntax

```vbnet
'Declaration

Public Function New( _
   ByVal _dataProvider_ As DbProvider, _
   ByVal _cmdTxt_ As String _
)
```

```csharp
public SqlHelper( 
   DbProvider _dataProvider_,
   string _cmdTxt_
)
```

#### Parameters

_dataProvider_

The specific [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) instance that this instance of SqlHelper should use when performing database operations

_cmdTxt_

The text command to execute. The default value is an empty string ("").

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SqlHelper Class](FChoice.Common~FChoice.Common.Data.SqlHelper.md)  
[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.SqlHelper~_ctor.md)