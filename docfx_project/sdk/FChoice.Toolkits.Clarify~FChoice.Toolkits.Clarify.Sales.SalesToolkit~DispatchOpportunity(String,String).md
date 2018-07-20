### DispatchOpportunity(String,String) Method

Opportunity Identifier.

The queue into which the Opportunity is to be dispatched.

Dispatch the Opportunity to the specified queue. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function DispatchOpportunity( _
   ByVal _opportunityIDNum_ As String, _
   ByVal _queue_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DispatchOpportunity( 
   string _opportunityIDNum_,
   string _queue_
)

#### Parameters

_opportunityIDNum_

Opportunity Identifier.

_queue_

The queue into which the Opportunity is to be dispatched.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Opportunity must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~DispatchOpportunity.md)