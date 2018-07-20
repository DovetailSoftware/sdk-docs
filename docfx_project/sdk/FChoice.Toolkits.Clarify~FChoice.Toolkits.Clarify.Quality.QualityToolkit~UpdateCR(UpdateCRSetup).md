### UpdateCR(UpdateCRSetup) Method

Setup object for API invocation.

Update an existing CR. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function UpdateCR( _
   ByVal _setupParam_ As [UpdateCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.UpdateCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateCR( 
   [UpdateCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.UpdateCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

All of the primary fields of the CR can be set. If they are left blank, then the value in the CR is not changed. The modifier and the time of modification may be specified, and you may specify additional fields for the modify_cr object. Can also generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~UpdateCR.md)  
[UpdateCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.UpdateCRSetup.md)