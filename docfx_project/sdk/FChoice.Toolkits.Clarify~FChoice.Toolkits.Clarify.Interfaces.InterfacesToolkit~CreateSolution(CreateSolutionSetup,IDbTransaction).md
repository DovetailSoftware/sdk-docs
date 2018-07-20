### CreateSolution(CreateSolutionSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Create a Solution. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function CreateSolution( _
   ByVal _setupParam_ As [CreateSolutionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [CreateSolutionResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionResult.md)

public [CreateSolutionResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionResult.md) CreateSolution( 
   [CreateSolutionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [CreateSolutionResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateSolutionResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Example

**Developer Walkthrough - Transaction support**

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateSolution.md)