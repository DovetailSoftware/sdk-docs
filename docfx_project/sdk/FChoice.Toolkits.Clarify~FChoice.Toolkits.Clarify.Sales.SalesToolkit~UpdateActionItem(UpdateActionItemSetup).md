### UpdateActionItem(UpdateActionItemSetup) Method

Setup object for API invocation.

Update an existing Action Item. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function UpdateActionItem( _
   ByVal _setupParam_ As [UpdateActionItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.UpdateActionItemSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateActionItem( 
   [UpdateActionItemSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.UpdateActionItemSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the ActionItem.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the ActionItem.

Remarks

Virtually all of the data is optional – only the Action Item ID is required. For most of the input fields, blank values if will result in no change to the existing Action Item. To clear a data item (for example, the contact), set the data field to “CLEAR”. It is possible to modify the title, notes, contact, account, lead, opportunity, task type, priority, status (within the same condition), start date, and the completion date.

To relate a contact to the action item, supply all three of the contact fields. Likewise, to associate a Lead to the Action Item supply both lead fields.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~UpdateActionItem.md)  
[UpdateActionItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.UpdateActionItemSetup.md)