### ForwardCase(ForwardCaseSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Reject-forward the Case from one queue to another. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function ForwardCase( _
   ByVal _setupParam_ As [ForwardCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ForwardCaseSetup.md), _
   ByVal _transaction_ As IDbTransaction _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ForwardCase( 
   [ForwardCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ForwardCaseSetup.md) _setupParam_,
   IDbTransaction _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Case must be in open condition, and not currently dispatched to a queue.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ForwardCase.md)