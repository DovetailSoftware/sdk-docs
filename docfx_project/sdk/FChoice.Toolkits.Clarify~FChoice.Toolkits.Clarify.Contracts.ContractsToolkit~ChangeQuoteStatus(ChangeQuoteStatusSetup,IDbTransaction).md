### ChangeQuoteStatus(ChangeQuoteStatusSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Causes the specified quote to have its status changed. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function ChangeQuoteStatus( _
   ByVal _setupParam_ As [ChangeQuoteStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ChangeQuoteStatusSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangeQuoteStatus( 
   [ChangeQuoteStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ChangeQuoteStatusSetup.md) _setupParam_,
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

The quote may be in any valid condition, but the status selected MUST be valid for the current condition. In other words, you cannot assign an Active Contract condition status to a quote that is currently in Quote condition.

Example

**Developer Walkthrough - Transaction support**

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~ChangeQuoteStatus.md)