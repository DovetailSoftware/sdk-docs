### ForwardCR(ForwardCRSetup) Method

Setup object for API invocation.

Reject-forward the CR from one queue to another. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ForwardCR( _
   ByVal _setupParam_ ForwardCRSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult ForwardCR( 
   ForwardCRSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The CR must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~ForwardCR.md)  
[ForwardCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ForwardCRSetup.md)