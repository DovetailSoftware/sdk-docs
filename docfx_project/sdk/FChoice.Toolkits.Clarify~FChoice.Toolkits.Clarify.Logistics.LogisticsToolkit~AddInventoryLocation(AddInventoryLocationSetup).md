### AddInventoryLocation(AddInventoryLocationSetup) Method

Setup object for API invocation.

Used to add inventory locations to the system.

This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function AddInventoryLocation( _
   ByVal _setupParam_ AddInventoryLocationSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult AddInventoryLocation(
   AddInventoryLocationSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Location record.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AddInventoryLocation.md)
[FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.AddInventoryLocationSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AddInventoryLocationSetup.md)
