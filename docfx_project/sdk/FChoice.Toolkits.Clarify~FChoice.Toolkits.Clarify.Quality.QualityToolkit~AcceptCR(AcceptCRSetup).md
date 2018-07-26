### AcceptCR(AcceptCRSetup) Method

Setup object for API invocation.

Accept the specified CR from the queue in which it is currently dispatched. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function AcceptCR( _
   ByVal _setupParam_ AcceptCRSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult AcceptCR( 
   AcceptCRSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The CR must be currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~AcceptCR.md)  
[AcceptCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AcceptCRSetup.md)