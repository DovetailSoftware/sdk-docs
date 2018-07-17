### FromLocation Property (ReceivePartRequestSetup)

Inventory location (or expense GL) from which to receive.

Syntax

```vbnet
```csharp

'Declaration
 

<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property FromLocation As [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md)

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) FromLocation {get; set;}

Remarks

If this parameter is set to [Location.EMPTY](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.Location~EMPTY.md), the inventory will be searched for the received part. If found, that location will be used.

To use a primary bin suggestion/recommendation that has been previously configured, use the [special constructor](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location~_ctor(String,Boolean).md) for the [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) object and set the _isPrimaryBinSuggestion_ parameter to true.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ReceivePartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup.md)  
[ReceivePartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup_members.md)