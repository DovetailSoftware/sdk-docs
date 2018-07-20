### CreatePart Method

Create a Part. This overload takes a set of required parameters for the API.

Create a Part.

Overload List

| Overload | Description |
| --- | --- |
| [CreatePart(String,String,Int32,PartRepairType)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePart(String,String,Int32,PartRepairType).md) | Create a Part. This overload takes a set of required parameters for the API.   |
| [CreatePart(CreatePartSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePart(CreatePartSetup).md) | Create a Part. This overload takes a setup object.   |
| [CreatePart(CreatePartSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePart(CreatePartSetup,IDbTransaction).md) | Create a Part. This overload takes a setup object and a database transaction.   |

Remarks

Just calling this API will **NOT** cause the part to be visible in Clarify. There must be at least one [Part Revision](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreatePartRevision.md) present to view a Part.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[CreatePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePartSetup.md)