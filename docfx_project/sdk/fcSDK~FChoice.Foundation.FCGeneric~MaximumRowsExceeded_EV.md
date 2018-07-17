     MaximumRowsExceeded Event                                                   

fcSDK Documentation

MaximumRowsExceeded Event

This event is fired when the [MaximumRows](fcSDK~FChoice.Foundation.FCGeneric~MaximumRows.md) property is set and a [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) operation has returned too many rows.

Syntax

```vbnet
```csharp

'Declaration
 

Public Event MaximumRowsExceeded As [MaximumRowsExceededEventHandler](fcSDK~FChoice.Foundation.MaximumRowsExceededEventHandler.md)

public event [MaximumRowsExceededEventHandler](fcSDK~FChoice.Foundation.MaximumRowsExceededEventHandler.md) MaximumRowsExceeded

Event Data

The event handler receives an argument of type [MaximumRowsExceededEventArgs](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs.md) containing data related to this event. The following **MaximumRowsExceededEventArgs** properties provide information specific to this event.

| Property | Description |
| --- | --- |
| [CancelQuery](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs~CancelQuery.md) | When set to **true** the query will be canceled. |
| [RowsToReturn](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs~RowsToReturn.md) | This value will control the number of rows to be returned from a large query. |
| [TotalPossibleRows](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs~TotalPossibleRows.md) | Readonly count of rows to be returned by the large query that caused this event. |

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)