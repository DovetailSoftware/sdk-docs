### CreatePart(String,String,Int32,PartRepairType) Method

Part Number for the part to create.

Domain for the part to create.

Number of warranty days for the part

Type of repair. One of "Repairable" or "Expendable"

Create a Part. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function CreatePart( _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _warrantyDays_ As Integer, _
   ByVal _repairType_ As [PartRepairType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PartRepairType.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreatePart( 
   string _partNumber_,
   string _partDomain_,
   int _warrantyDays_,
   [PartRepairType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PartRepairType.md) _repairType_
)

#### Parameters

_partNumber_

Part Number for the part to create.

_partDomain_

Domain for the part to create.

_warrantyDays_

Number of warranty days for the part

_repairType_

Type of repair. One of "Repairable" or "Expendable"

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Part.

Remarks

Just calling this API will **NOT** cause the part to be visible in Clarify. There must be at least one [Part Revision](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePartRevision.md) present to view a Part.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePart.md)