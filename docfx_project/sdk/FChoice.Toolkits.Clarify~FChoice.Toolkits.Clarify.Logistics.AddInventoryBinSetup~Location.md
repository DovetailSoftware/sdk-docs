### Location Property (AddInventoryBinSetup)

A reference to a Location object which specifies the name of the bin to create and the name of the location in which to create it

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property Location As Location
```

```csharp
[PropertyBitValueAttribute()]
public Location Location {get; set;}
```

#### Remarks

When creating an instance of a Location object for this API, both the location name and the bin name must be specified in the Location object's constructor.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[AddInventoryBinSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.AddInventoryBinSetup.md)  
[AddInventoryBinSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.AddInventoryBinSetup_members.md)