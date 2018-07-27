### DispatchCR(String,String) Method

CR Identifier.

The queue into which the CR is to be dispatched.

Dispatch the CR to the specified queue. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function DispatchCR( _
   ByVal _cridnum_ As String, _
   ByVal _queue_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult DispatchCR( 
   string _cridnum_,
   string _queue_
)
```

#### Parameters

_cridnum_

CR Identifier.

_queue_

The queue into which the CR is to be dispatched.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The CR must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~DispatchCR.md)