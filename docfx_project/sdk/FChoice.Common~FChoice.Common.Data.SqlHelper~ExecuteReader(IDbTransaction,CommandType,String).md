### ExecuteReader(IDbTransaction,CommandType,String) Method

Syntax

```vbnet
'Declaration

Public Overloads Shared Function ExecuteReader( _
   ByVal _transaction_ As IDbTransaction, _
   ByVal _commandType_ As CommandType, _
   ByVal _commandText_ As String _
) As IDataReader
```

```csharp
public static IDataReader ExecuteReader( 
   IDbTransaction _transaction_,
   CommandType _commandType_,
   string _commandText_
)
```

#### Parameters

_transaction_

_commandType_

_commandText_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SqlHelper Class](FChoice.Common~FChoice.Common.Data.SqlHelper.md)  
[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteReader.md)