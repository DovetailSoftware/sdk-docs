### UpdateAll(UpdateQueryBatch) Method

Batch under which to do this update.

Updates all modified rows of the **FCGeneric** as part of a batch operation.

#### Syntax

```vbnet
'Declaration

Public Overloads Sub UpdateAll( _
   ByVal _batch_ As UpdateQueryBatch _
) 
```

```csharp
public void UpdateAll( 
   UpdateQueryBatch _batch_
)
```

#### Parameters

_batch_

Batch under which to do this update.

#### Remarks

This method commits all modified rows to the database and is equivalent to calling [Update](fcSDK~FChoice.Foundation.FCGeneric~Update(GenericDataRow,UpdateQueryBatch).md) on each row of the **FCGeneric**.

When it is desirable to consolidate many database operations in one round trip to the database this method can be used in conjunction with a [UpdateQueryBatch](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md) object.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~UpdateAll.md)