### CreateDepotRepairLabor(CreateDepotRepairLaborSetup) Method

Setup object for API invocation.

Create a Depot Repair Labor to be performed on a Part. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateDepotRepairLabor( _
   ByVal _setupParam_ CreateDepotRepairLaborSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateDepotRepairLabor( 
   CreateDepotRepairLaborSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the TimeLog.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateDepotRepairLabor.md)  
[CreateDepotRepairLaborSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateDepotRepairLaborSetup.md)