     Update(GenericDataRow,IDbTransaction) Method                                                   

fcSDK Documentation

Update(GenericDataRow,IDbTransaction) Method

Row being updated.

Transaction under which to do this update

Updates changes to a single [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) under the context of a Transaction

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub Update( _
   ByVal _row_ As [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) 

public void Update( 
   [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) _row_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_row_

Row being updated.

_transaction_

Transaction under which to do this update

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~Update.md)