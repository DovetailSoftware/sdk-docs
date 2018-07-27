### DispatchActionItem(String,String) Method

ActionItem Identifier.

The queue into which the ActionItem is to be dispatched.

Dispatch the ActionItem to the specified queue. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function DispatchActionItem( _
   ByVal _actionItemIDNum_ As String, _
   ByVal _queue_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult DispatchActionItem( 
   string _actionItemIDNum_,
   string _queue_
)
```

#### Parameters

_actionItemIDNum_

ActionItem Identifier.

_queue_

The queue into which the ActionItem is to be dispatched.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The ActionItem must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~DispatchActionItem.md)