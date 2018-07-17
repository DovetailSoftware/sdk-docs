     AddSiteToAccount(AddSiteToAccountSetup) Method                                                   

fcSDK Documentation

AddSiteToAccount(AddSiteToAccountSetup) Method

Setup object for API invocation.

Adds a Site to an existing Account specifying the Site's role in the account. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function AddSiteToAccount( _
   ByVal _setupParam_ As [AddSiteToAccountSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddSiteToAccountSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AddSiteToAccount( 
   [AddSiteToAccountSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddSiteToAccountSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Site Role that is created to link the Site to the Account.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddSiteToAccount.md)  
[AddSiteToAccountSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddSiteToAccountSetup.md)