### RejectCR(RejectCRSetup) Method

Setup object for API invocation.

Reject the CR from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function RejectCR( _
   ByVal _setupParam_ RejectCRSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult RejectCR( 
   RejectCRSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The CR must be in open condition, and currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~RejectCR.md)  
[RejectCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.RejectCRSetup.md)