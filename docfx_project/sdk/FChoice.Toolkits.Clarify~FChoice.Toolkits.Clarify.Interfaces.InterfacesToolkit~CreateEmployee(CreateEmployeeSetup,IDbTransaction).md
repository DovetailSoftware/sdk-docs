### CreateEmployee(CreateEmployeeSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Create an Employee in Clarify This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function CreateEmployee( _
   ByVal _setupParam_ As [CreateEmployeeSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [CreateEmployeeResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult.md)

public [CreateEmployeeResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult.md) CreateEmployee( 
   [CreateEmployeeSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [CreateEmployeeResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateEmployeeResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

Also creates a user login for the database system tables as required by Clarify.

Example

**Developer Walkthrough - Transaction support**

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateEmployee.md)