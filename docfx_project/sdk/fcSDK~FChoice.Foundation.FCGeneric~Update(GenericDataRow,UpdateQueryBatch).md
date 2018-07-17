     Update(GenericDataRow,UpdateQueryBatch) Method                                                   

fcSDK Documentation

Update(GenericDataRow,UpdateQueryBatch) Method

Row being updated.

Batch under which to do this update.

Updates changes to a single [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) as part of a batch operation.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub Update( _
   ByVal _row_ As [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md), _
   ByVal _batch_ As [UpdateQueryBatch](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md) _
) 

public void Update( 
   [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) _row_,
   [UpdateQueryBatch](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md) _batch_
)

#### Parameters

_row_

Row being updated.

_batch_

Batch under which to do this update.

Remarks

This method commits any changes to this to the database.

When it is desirable to consolidate many database operations in one round trip to the database this method can be used in conjunction with a [UpdateQueryBatch](FChoice.Common~FChoice.Common.UpdateQueryBatch.md) object.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~Update.md)