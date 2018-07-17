     MaximumRows Property (FCGeneric)                                                   

fcSDK Documentation

MaximumRows Property (FCGeneric)

Controls the maximum number of rows to be returned by the Genric Query.

Syntax

```vbnet
```csharp

'Declaration
 

Public Property MaximumRows As [Integer](#)

public [int](#) MaximumRows {get; set;}

Remarks

The default value of this property is set by the Generic's [Session.MaximumRows](fcSDK~FChoice.Foundation.FCSession~MaximumRows.md).

When this value is set the default operation will result in the number of rows returned by every [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) to **MaximumRows**.

Alternatively the [MaximumRowsExceeded](fcSDK~FChoice.Foundation.FCGeneric~MaximumRowsExceeded_EV.md) event can give greater control of how Queries returning too many rows are handled.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)