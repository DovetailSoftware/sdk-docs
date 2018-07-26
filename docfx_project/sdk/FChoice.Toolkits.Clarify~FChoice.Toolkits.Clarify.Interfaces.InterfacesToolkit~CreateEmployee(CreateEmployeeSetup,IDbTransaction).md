### CreateEmployee(CreateEmployeeSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Create an Employee in Clarify This overload takes a setup object and a database transaction.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateEmployee( _
   ByVal _setupParam_ As CreateEmployeeSetup, _
   ByVal _transaction_ As IDbTransaction _
) As CreateEmployeeResult
```

```csharp
public CreateEmployeeResult CreateEmployee( 
   CreateEmployeeSetup _setupParam_,
   IDbTransaction _transaction_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A CreateEmployeeResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

Also creates a user login for the database system tables as required by Clarify.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateEmployee.md)