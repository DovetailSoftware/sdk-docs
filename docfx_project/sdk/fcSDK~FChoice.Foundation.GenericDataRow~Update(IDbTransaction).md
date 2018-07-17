     Update(IDbTransaction) Method                                                   

fcSDK Documentation

Update(IDbTransaction) Method

Transaction under which to do this update.

Commits the row to the database. See FCGeneric's [Update](fcSDK~FChoice.Foundation.FCGeneric~Update(GenericDataRow).md) for details.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub Update( _
   ByVal _trans_ As [IDbTransaction](#) _
) 

public void Update( 
   [IDbTransaction](#) _trans_
)

#### Parameters

_trans_

Transaction under which to do this update.

Remarks

**NOTE:** This method calls [FCGeneric.Update](fcSDK~FChoice.Foundation.FCGeneric~Update(GenericDataRow).md)

Use this method when it is desired to execute database actions under the context of a Transaction.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[GenericDataRow Class](fcSDK~FChoice.Foundation.GenericDataRow.md)  
[GenericDataRow Members](fcSDK~FChoice.Foundation.GenericDataRow_members.md)  
[Overload List](fcSDK~FChoice.Foundation.GenericDataRow~Update.md)