### AssignActionItem(AssignActionItemSetup) Method

Setup object for API invocation.

Assign the ActionItem to a new user. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function AssignActionItem( _
   ByVal _setupParam_ As [AssignActionItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.AssignActionItemSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AssignActionItem( 
   [AssignActionItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.AssignActionItemSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The ActionItem must be in the Open condition, and the user assigning the ActionItem does not have to be the owner of the ActionItem. In base Clarify, the assigner of a ActionItem must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the ActionItem in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AssignActionItem.md)  
[AssignActionItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.AssignActionItemSetup.md)