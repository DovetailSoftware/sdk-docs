     AddEmployeeToAccount(AddEmployeeToAccountSetup,IDbTransaction) Method                                                   

fcSDK Documentation

AddEmployeeToAccount(AddEmployeeToAccountSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Add an Employee as a team member to an Account with a specified role. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function AddEmployeeToAccount( _
   ByVal _setupParam_ As [AddEmployeeToAccountSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddEmployeeToAccountSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AddEmployeeToAccount( 
   [AddEmployeeToAccountSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddEmployeeToAccountSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

If no [RoleName](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddEmployeeToAccountSetup~RoleName.md) is specified then the default role name is used.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddEmployeeToAccount.md)