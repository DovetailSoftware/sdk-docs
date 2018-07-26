### ClosePartRequest(ClosePartRequestSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Causes the specified part request to be closed. This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function ClosePartRequest( _
   ByVal _setupParam_ As [ClosePartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ClosePartRequestSetup.md), _
   ByVal _transaction_ As IDbTransaction _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ClosePartRequest( 
   [ClosePartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ClosePartRequestSetup.md) _setupParam_,
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

This API will validate that the user has the authority to close the part request. If this is the last part request detail that was open for the part request header, the header is also closed.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ClosePartRequest.md)