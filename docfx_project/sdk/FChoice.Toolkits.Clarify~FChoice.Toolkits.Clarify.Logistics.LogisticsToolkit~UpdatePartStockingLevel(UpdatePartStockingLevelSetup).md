### UpdatePartStockingLevel(UpdatePartStockingLevelSetup) Method

Setup object for API invocation.

Updates an existing part restocking authorization level. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function UpdatePartStockingLevel( _
   ByVal _setupParam_ UpdatePartStockingLevelSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdatePartStockingLevel(
   UpdatePartStockingLevelSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

* [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Part Authorization record.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~UpdatePartStockingLevel.md)
[FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdatePartStockingLevelSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdatePartStockingLevelSetup.md)
