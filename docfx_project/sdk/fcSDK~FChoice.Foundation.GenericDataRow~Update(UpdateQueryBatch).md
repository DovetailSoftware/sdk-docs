     Update(UpdateQueryBatch) Method                                                   

fcSDK Documentation

Update(UpdateQueryBatch) Method

Batch under which to do this update.

Commits the row to the database. See FCGeneric's [Update](fcSDK~FChoice.Foundation.FCGeneric~Update(GenericDataRow,UpdateQueryBatch).md) for details.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub Update( _
   ByVal _batch_ As [UpdateQueryBatch](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md) _
) 

public void Update( 
   [UpdateQueryBatch](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md) _batch_
)

#### Parameters

_batch_

Batch under which to do this update.

Remarks

**NOTE:** This method calls [FCGeneric.Update](fcSDK~FChoice.Foundation.FCGeneric~Update(GenericDataRow,UpdateQueryBatch).md)

When it is desirable to consolidate many database operations in one round trip to the database this method can be used in conjunction with a [UpdateQueryBatch](FChoice.Common~FChoice.Common.UpdateQueryBatch.md) object.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[GenericDataRow Class](fcSDK~FChoice.Foundation.GenericDataRow.md)  
[GenericDataRow Members](fcSDK~FChoice.Foundation.GenericDataRow_members.md)  
[Overload List](fcSDK~FChoice.Foundation.GenericDataRow~Update.md)