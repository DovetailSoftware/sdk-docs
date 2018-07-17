     CreateAccount(CreateAccountSetup) Method                                                   

fcSDK Documentation

CreateAccount(CreateAccountSetup) Method

Setup object for API invocation.

Create Account (business org) This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateAccount( _
   ByVal _setupParam_ As [CreateAccountSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAccountSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateAccount( 
   [CreateAccountSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAccountSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Account.
*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the Account.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateAccount.md)  
[CreateAccountSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateAccountSetup.md)