     ForwardActionItem(String,String) Method                                                   

fcSDK Documentation

ForwardActionItem(String,String) Method

ActionItem Identifier.

The new queue into which the ActionItem is to be forwarded.

Reject-forward the ActionItem from one queue to another. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ForwardActionItem( _
   ByVal _actionItemIDNum_ As String, _
   ByVal _newQueue_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ForwardActionItem( 
   string _actionItemIDNum_,
   string _newQueue_
)

#### Parameters

_actionItemIDNum_

ActionItem Identifier.

_newQueue_

The new queue into which the ActionItem is to be forwarded.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The ActionItem must be in open condition, and not currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~ForwardActionItem.md)