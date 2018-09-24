### UpdateInventoryBin(UpdateInventoryBinSetup) Method

Setup object for API invocation.

Used to modify the name or the active flag of an existing bin. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function UpdateInventoryBin( _
   ByVal _setupParam_ UpdateInventoryBinSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateInventoryBin(
   UpdateInventoryBinSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Bin record.

#### Remarks

**NOTE**: This API cannot move a bin to another location, only rename it at the existing location.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~UpdateInventoryBin.md)
[FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdateInventoryBinSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdateInventoryBinSetup.md)
