### DeleteServiceInterruption(DeleteServiceInterruptionSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to delete an existing service interuption (appointment). This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function DeleteServiceInterruption( _
   ByVal _setupParam_ As [DeleteServiceInterruptionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.DeleteServiceInterruptionSetup.md), _
   ByVal _transaction_ As IDbTransaction _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DeleteServiceInterruption( 
   [DeleteServiceInterruptionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.DeleteServiceInterruptionSetup.md) _setupParam_,
   IDbTransaction _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~DeleteServiceInterruption.md)