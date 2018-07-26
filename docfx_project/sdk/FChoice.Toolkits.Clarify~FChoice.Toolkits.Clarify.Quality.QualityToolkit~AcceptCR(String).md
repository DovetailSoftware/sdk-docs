### AcceptCR(String) Method

CR Identifier.

Accept the specified CR from the queue in which it is currently dispatched. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function AcceptCR( _
   ByVal _cridnum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AcceptCR( 
   string _cridnum_
)
```

#### Parameters

_cridnum_

CR Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The CR must be currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~AcceptCR.md)