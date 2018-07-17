     ExecuteScalar(IDbTransaction,CommandType,String,DataParameterCollection) Method                                                   

ExecuteScalar(IDbTransaction,CommandType,String,DataParameterCollection) Method

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Shared Function ExecuteScalar( _
   ByVal _transaction_ As [IDbTransaction](#), _
   ByVal _commandType_ As [CommandType](#), _
   ByVal _commandText_ As String, _
   ByVal _commandParams_ As [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md) _
) As [Object](#)

public static [object](#) ExecuteScalar( 
   [IDbTransaction](#) _transaction_,
   [CommandType](#) _commandType_,
   string _commandText_,
   [DataParameterCollection](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md) _commandParams_
)

#### Parameters

_transaction_

_commandType_

_commandText_

_commandParams_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SqlHelper Class](FChoice.Common~FChoice.Common.Data.SqlHelper.md)  
[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.SqlHelper~ExecuteScalar.md)