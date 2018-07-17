     DataRestrictionsEnabled Property (FCGeneric)                                                   

fcSDK Documentation

DataRestrictionsEnabled Property (FCGeneric)

Sets whether or not this **FCGeneric** will have the DataRestrictions feature enabled if available.

Syntax

```vbnet
```csharp

'Declaration
 

Public Property DataRestrictionsEnabled As Boolean

public bool DataRestrictionsEnabled {get; set;}

#### Property Value

Returns whether or not this **FCGeneric** will have the DataRestrictions feature enabled if available.

Remarks

Setting this value to **true** will only work if the DataRestriction support schema is present. Setting this value to **false** will disable DataRestriction support.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)