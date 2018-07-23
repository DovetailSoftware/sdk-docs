### AcceptSolution(AcceptSolutionSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Accept the specified Solution from the queue in which it is currently dispatched. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function AcceptSolution( _
   ByVal _setupParam_ As [AcceptSolutionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AcceptSolutionSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AcceptSolution( 
   [AcceptSolutionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AcceptSolutionSetup.md) _setupParam_,
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

The Solution must be currently dispatched to a queue.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AcceptSolution.md)