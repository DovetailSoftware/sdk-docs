### ForwardQuote(String,String) Method

Quote Identifier.

The new queue into which the Quote is to be forwarded.

Reject-forward the Quote from one queue to another. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function ForwardQuote( _
   ByVal _quoteIDNum_ As String, _
   ByVal _newQueue_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ForwardQuote( 
   string _quoteIDNum_,
   string _newQueue_
)

#### Parameters

_quoteIDNum_

Quote Identifier.

_newQueue_

The new queue into which the Quote is to be forwarded.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Quote must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ForwardQuote.md)