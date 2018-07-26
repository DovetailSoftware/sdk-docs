### CreateDepotRepairMaterial(CreateDepotRepairMaterialSetup) Method

Setup object for API invocation.

Create a Depot Repair Material to be logged against a Part. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateDepotRepairMaterial( _
   ByVal _setupParam_ CreateDepotRepairMaterialSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateDepotRepairMaterial( 
   CreateDepotRepairMaterialSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the MaterialLog.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateDepotRepairMaterial.md)  
[CreateDepotRepairMaterialSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateDepotRepairMaterialSetup.md)