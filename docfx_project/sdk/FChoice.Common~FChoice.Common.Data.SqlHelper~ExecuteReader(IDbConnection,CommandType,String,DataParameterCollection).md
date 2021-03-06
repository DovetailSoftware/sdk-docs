﻿### ExecuteReader(IDbConnection,CommandType,String,DataParameterCollection) Method

#### Syntax

```vbnet
'Declaration

Public Overloads Shared Function ExecuteReader( _
   ByVal _connection_ As IDbConnection, _
   ByVal _commandType_ As CommandType, _
   ByVal _commandText_ As String, _
   ByVal _commandParams_ As DataParameterCollection _
) As IDataReader
```

```csharp
public static IDataReader ExecuteReader( 
   IDbConnection _connection_,
   CommandType _commandType_,
   string _commandText_,
   DataParameterCollection _commandParams_
)
```

#### Parameters

_connection_

_commandType_

_commandText_

_commandParams_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SqlHelper Class](FChoice.Common~FChoice.Common.Data.SqlHelper.md)  
[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteReader.md)