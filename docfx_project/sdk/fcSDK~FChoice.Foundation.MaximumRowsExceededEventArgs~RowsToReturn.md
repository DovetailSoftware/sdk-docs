     RowsToReturn Property                                                   

fcSDK Documentation

RowsToReturn Property

This value will control the number of rows to be returned from a large query.

Syntax

```vbnet
```csharp

'Declaration
 

Public Property RowsToReturn As [Integer](#)

public [int](#) RowsToReturn {get; set;}

Remarks

This value will default to the [MaximumRows](fcSDK~FChoice.Foundation.FCGeneric~MaximumRows.md) property of [FCGeneric](fcSDK~FChoice.Foundation.FCGeneric.md).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[MaximumRowsExceededEventArgs Class](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs.md)  
[MaximumRowsExceededEventArgs Members](fcSDK~FChoice.Foundation.MaximumRowsExceededEventArgs_members.md)