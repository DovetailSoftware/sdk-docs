### AcceptActionItem(String) Method

ActionItem Identifier.

Accept the specified ActionItem from the queue in which it is currently dispatched. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function AcceptActionItem( _
   ByVal _actionItemIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AcceptActionItem( 
   string _actionItemIDNum_
)
```

#### Parameters

_actionItemIDNum_

ActionItem Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The ActionItem must be currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AcceptActionItem.md)