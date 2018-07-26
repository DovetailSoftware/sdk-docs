### YankActionItem(String) Method

ActionItem Identifier.

Yank the ActionItem from its current location to a new owner's WipBin. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function YankActionItem( _
   ByVal _actionItemIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult YankActionItem( 
   string _actionItemIDNum_
)
```

#### Parameters

_actionItemIDNum_

ActionItem Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The WipBin to place the ActionItem in may also be specified. This is augmented function from base Clarify, where the ActionItem is always placed in the default WipBin.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~YankActionItem.md)