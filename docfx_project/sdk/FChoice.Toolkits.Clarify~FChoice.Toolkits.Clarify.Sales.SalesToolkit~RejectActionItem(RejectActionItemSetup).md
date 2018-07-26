### RejectActionItem(RejectActionItemSetup) Method

Setup object for API invocation.

Reject the ActionItem from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function RejectActionItem( _
   ByVal _setupParam_ RejectActionItemSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult RejectActionItem( 
   RejectActionItemSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The ActionItem must be in open condition, and currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~RejectActionItem.md)  
[RejectActionItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.RejectActionItemSetup.md)