     AddEmployeeToAccount(AddEmployeeToAccountSetup) Method                                                   

fcSDK Documentation

AddEmployeeToAccount(AddEmployeeToAccountSetup) Method

Setup object for API invocation.

Add an Employee as a team member to an Account with a specified role. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function AddEmployeeToAccount( _
   ByVal _setupParam_ As [AddEmployeeToAccountSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddEmployeeToAccountSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AddEmployeeToAccount( 
   [AddEmployeeToAccountSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddEmployeeToAccountSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Employee Role that is created to link the Employee to the Account.

Remarks

If no [RoleName](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddEmployeeToAccountSetup~RoleName.md) is specified then the default role name is used.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddEmployeeToAccount.md)  
[AddEmployeeToAccountSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddEmployeeToAccountSetup.md)