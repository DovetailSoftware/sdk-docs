### AddContactToContract(AddContactToContractSetup) Method

Setup object for API invocation.

Adds a Contact to an existing Contract. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function AddContactToContract( _
   ByVal _setupParam_ As [AddContactToContractSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddContactToContractSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AddContactToContract( 
   [AddContactToContractSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddContactToContractSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Contract the Contact was added to.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddContactToContract.md)  
[AddContactToContractSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddContactToContractSetup.md)