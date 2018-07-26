### AddInventoryBin(Location) Method

A reference to a [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) object which specifies the name of the bin to create and the name of the location in which to create it

Used to add inventory bins to existing locations. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function AddInventoryBin( _
   ByVal _location_ As Location _
) As ToolkitResult
```

```csharp
public ToolkitResult AddInventoryBin( 
   Location _location_
)
```

#### Parameters

_location_

A reference to a [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) object which specifies the name of the bin to create and the name of the location in which to create it

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Bin record.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AddInventoryBin.md)