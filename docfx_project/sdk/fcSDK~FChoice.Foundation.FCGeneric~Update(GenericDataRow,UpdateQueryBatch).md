### Update(GenericDataRow,UpdateQueryBatch) Method

Row being updated.

Batch under which to do this update.

Updates changes to a single GenericDataRow as part of a batch operation.

#### Syntax

```vbnet
'Declaration

Public Overloads Sub Update( _
   ByVal _row_ As GenericDataRow, _
   ByVal _batch_ As UpdateQueryBatch _
) 
```

```csharp
public void Update( 
   GenericDataRow _row_,
   UpdateQueryBatch _batch_
)
```

#### Parameters

_row_

Row being updated.

_batch_

Batch under which to do this update.

#### Remarks

This method commits any changes to this to the database.

When it is desirable to consolidate many database operations in one round trip to the database this method can be used in conjunction with a [UpdateQueryBatch](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md) object.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~Update.md)