     CreateDepotRepairMaterial(CreateDepotRepairMaterialSetup) Method                                                   

fcSDK Documentation

CreateDepotRepairMaterial(CreateDepotRepairMaterialSetup) Method

Setup object for API invocation.

Create a Depot Repair Material to be logged against a Part. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateDepotRepairMaterial( _
   ByVal _setupParam_ As [CreateDepotRepairMaterialSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateDepotRepairMaterialSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateDepotRepairMaterial( 
   [CreateDepotRepairMaterialSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateDepotRepairMaterialSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the MaterialLog.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateDepotRepairMaterial.md)  
[CreateDepotRepairMaterialSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateDepotRepairMaterialSetup.md)