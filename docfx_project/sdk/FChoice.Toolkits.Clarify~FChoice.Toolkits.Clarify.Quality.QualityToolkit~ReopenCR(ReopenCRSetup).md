### ReopenCR(ReopenCRSetup) Method

Setup object for API invocation.

Reopen a CR. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function ReopenCR( _
   ByVal _setupParam_ As [ReopenCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ReopenCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ReopenCR( 
   [ReopenCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ReopenCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

It must be in a condition other than “Open”, and cannot be dispatched.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~ReopenCR.md)  
[ReopenCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ReopenCRSetup.md)