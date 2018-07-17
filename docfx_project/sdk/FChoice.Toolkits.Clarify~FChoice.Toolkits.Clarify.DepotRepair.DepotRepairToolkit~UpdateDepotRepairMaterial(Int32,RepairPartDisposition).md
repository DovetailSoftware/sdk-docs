     UpdateDepotRepairMaterial(Int32,RepairPartDisposition) Method                                                   

fcSDK Documentation

UpdateDepotRepairMaterial(Int32,RepairPartDisposition) Method

The objid of the material log object to be updated

Indicates how the material relates to the depot repair part.

Update a Depot Repair Material. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function UpdateDepotRepairMaterial( _
   ByVal _materialLogObjid_ As [Integer](#), _
   ByVal _disposition_ As [RepairPartDisposition](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.RepairPartDisposition.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateDepotRepairMaterial( 
   [int](#) _materialLogObjid_,
   [RepairPartDisposition](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.RepairPartDisposition.md) _disposition_
)

#### Parameters

_materialLogObjid_

The objid of the material log object to be updated

_disposition_

Indicates how the material relates to the depot repair part.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the MaterialLog.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~UpdateDepotRepairMaterial.md)