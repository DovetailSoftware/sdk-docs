### CreateActionItem(CreateActionItemSetup) Method

Setup object for API invocation.

Creates a new Action Item. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function CreateActionItem( _
   ByVal _setupParam_ As [CreateActionItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateActionItemSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateActionItem( 
   [CreateActionItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateActionItemSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the ActionItem.
*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the ActionItem.

Remarks

If the new Action Item is related a contact, all three of the contact fields must be supplied. Likewise, if associated to a lead, both lead fields must be supplied.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~CreateActionItem.md)  
[CreateActionItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.CreateActionItemSetup.md)