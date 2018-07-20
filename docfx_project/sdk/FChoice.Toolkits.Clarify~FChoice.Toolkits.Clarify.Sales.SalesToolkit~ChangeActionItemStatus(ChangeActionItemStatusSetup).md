### ChangeActionItemStatus(ChangeActionItemStatusSetup) Method

Setup object for API invocation.

Cause the specified Action Item to have its status changed. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function ChangeActionItemStatus( _
   ByVal _setupParam_ As [ChangeActionItemStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeActionItemStatusSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangeActionItemStatus( 
   [ChangeActionItemStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeActionItemStatusSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The object may be in any valid condition, but the status selected MUST be valid for the current condition.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ChangeActionItemStatus.md)  
[ChangeActionItemStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeActionItemStatusSetup.md)