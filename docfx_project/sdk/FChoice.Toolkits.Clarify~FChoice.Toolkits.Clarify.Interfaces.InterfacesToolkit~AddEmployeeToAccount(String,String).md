### AddEmployeeToAccount(String,String) Method

Username of the Account team member .

Identifier of the Account the Employee is being added to .

Add an Employee as a team member to an Account with a specified role. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function AddEmployeeToAccount( _
   ByVal _userName_ As String, _
   ByVal _accountIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AddEmployeeToAccount( 
   string _userName_,
   string _accountIDNum_
)
```

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

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddEmployeeToAccount.md)