     AddEmployeeToAccount(String,String) Method                                                   

fcSDK Documentation

AddEmployeeToAccount(String,String) Method

Username of the Account team member .

Identifier of the Account the Employee is being added to .

Add an Employee as a team member to an Account with a specified role. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function AddEmployeeToAccount( _
   ByVal _userName_ As String, _
   ByVal _accountIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AddEmployeeToAccount( 
   string _userName_,
   string _accountIDNum_
)

#### Parameters

_userName_

Username of the Account team member .

_accountIDNum_

Identifier of the Account the Employee is being added to .

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