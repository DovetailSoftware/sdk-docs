### ForwardActionItem(ForwardActionItemSetup) Method

Setup object for API invocation.

Reject-forward the ActionItem from one queue to another. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ForwardActionItem( _
   ByVal _setupParam_ ForwardActionItemSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult ForwardActionItem( 
   ForwardActionItemSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The ActionItem must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ForwardActionItem.md)  
[ForwardActionItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ForwardActionItemSetup.md)