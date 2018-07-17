     DispatchActionItem(String,String) Method                                                   

fcSDK Documentation

DispatchActionItem(String,String) Method

ActionItem Identifier.

The queue into which the ActionItem is to be dispatched.

Dispatch the ActionItem to the specified queue. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function DispatchActionItem( _
   ByVal _actionItemIDNum_ As String, _
   ByVal _queue_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DispatchActionItem( 
   string _actionItemIDNum_,
   string _queue_
)

#### Parameters

_actionItemIDNum_

ActionItem Identifier.

_queue_

The queue into which the ActionItem is to be dispatched.

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
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~DispatchActionItem.md)