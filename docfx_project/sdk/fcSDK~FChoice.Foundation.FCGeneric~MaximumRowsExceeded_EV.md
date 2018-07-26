### MaximumRowsExceeded Event

This event is fired when the [MaximumRows](fcSDK~FChoice.Foundation.FCGeneric~MaximumRows.md) property is set and a [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) operation has returned too many rows.

Syntax

```vbnet
'Declaration

Public Event MaximumRowsExceeded As MaximumRowsExceededEventHandler
```

```csharp
public event MaximumRowsExceededEventHandler MaximumRowsExceeded
```

#### Event Data

The event handler receives an argument of type [MaximumRowsExceededEventArgs](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs.md) containing data related to this event. The following **MaximumRowsExceededEventArgs** properties provide information specific to this event.

| Property | Description |
| --- | --- |
| [CancelQuery](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs~CancelQuery.md) | When set to **true** the query will be canceled. |
| [RowsToReturn](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs~RowsToReturn.md) | This value will control the number of rows to be returned from a large query. |
| [TotalPossibleRows](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs~TotalPossibleRows.md) | Readonly count of rows to be returned by the large query that caused this event. |

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)