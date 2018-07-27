### RowsToReturn Property

This value will control the number of rows to be returned from a large query.

#### Syntax

```vbnet
'Declaration

Public Property RowsToReturn As Integer
```

```csharp
public int RowsToReturn {get; set;}
```

#### Remarks

This value will default to the [MaximumRows](fcSDK~FChoice.Foundation.FCGeneric~MaximumRows.md) property of [FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[MaximumRowsExceededEventArgs Class](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs.md)  
[MaximumRowsExceededEventArgs Members](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs_members.md)