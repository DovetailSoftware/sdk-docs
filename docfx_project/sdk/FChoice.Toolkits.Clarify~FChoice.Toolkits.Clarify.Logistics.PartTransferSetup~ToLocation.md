### ToLocation Property (PartTransferSetup)

Inventory location and bin (or GL account) into which the part is being transferred

Syntax

```vbnet
' Declaration
<[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()>
Public Property ToLocation As [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md)

\[[PropertyBitValueAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PropertyBitValueAttribute.md)()\]
public [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) ToLocation {get; set;}

Remarks

To use a primary bin suggestion/recommendation that has been previously configured, use the [special constructor](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location~_ctor(String,Boolean).md) for the [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) object and set the _isPrimaryBinSuggestion_ parameter to true.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[PartTransferSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup.md)  
[PartTransferSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PartTransferSetup_members.md)