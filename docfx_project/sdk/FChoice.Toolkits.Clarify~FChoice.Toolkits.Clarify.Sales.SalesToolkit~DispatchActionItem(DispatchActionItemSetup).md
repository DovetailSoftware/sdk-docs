﻿### DispatchActionItem(DispatchActionItemSetup) Method

Setup object for API invocation.

Dispatch the ActionItem to the specified queue. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function DispatchActionItem( _
   ByVal _setupParam_ DispatchActionItemSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult DispatchActionItem( 
   DispatchActionItemSetup _setupParam_
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
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~DispatchActionItem.md)  
[DispatchActionItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.DispatchActionItemSetup.md)