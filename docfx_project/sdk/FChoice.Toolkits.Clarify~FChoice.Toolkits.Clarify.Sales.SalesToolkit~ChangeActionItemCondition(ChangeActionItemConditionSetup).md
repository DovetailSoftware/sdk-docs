### ChangeActionItemCondition(ChangeActionItemConditionSetup) Method

Setup object for API invocation.

Used to change the condition and (optionally) a status for the specified Action Item. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function ChangeActionItemCondition( _
   ByVal _setupParam_ As [ChangeActionItemConditionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeActionItemConditionSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangeActionItemCondition( 
   [ChangeActionItemConditionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeActionItemConditionSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the ActionItem.
*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the ActionItem.

Remarks

The Action Item ID and the condition is required, but no other data is. The API can also generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ChangeActionItemCondition.md)  
[ChangeActionItemConditionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.ChangeActionItemConditionSetup.md)