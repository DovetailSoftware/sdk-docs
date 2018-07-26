### SetPartStockingLevel(SetPartStockingLevelSetup) Method

Setup object for API invocation.

Creates a part restocking authorization level. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function SetPartStockingLevel( _
   ByVal _setupParam_ SetPartStockingLevelSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult SetPartStockingLevel( 
   SetPartStockingLevelSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Part Authorization record.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~SetPartStockingLevel.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetPartStockingLevelSetup", Caption="SetPartStockingLevelSetup Class"**