### DispatchCR(DispatchCRSetup) Method

Setup object for API invocation.

Dispatch the CR to the specified queue. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function DispatchCR( _
   ByVal _setupParam_ As [DispatchCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.DispatchCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DispatchCR( 
   [DispatchCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.DispatchCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The CR must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~DispatchCR.md)  
[DispatchCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.DispatchCRSetup.md)