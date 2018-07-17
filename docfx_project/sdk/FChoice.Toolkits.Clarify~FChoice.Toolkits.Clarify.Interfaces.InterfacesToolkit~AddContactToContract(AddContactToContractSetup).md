     AddContactToContract(AddContactToContractSetup) Method                                                   

fcSDK Documentation

AddContactToContract(AddContactToContractSetup) Method

Setup object for API invocation.

Adds a Contact to an existing Contract. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

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

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddContactToContract.md)  
[AddContactToContractSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddContactToContractSetup.md)