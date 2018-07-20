### CheckClearQualityTransition(CheckClearQualityTransitionSetup) Method

Setup object for API invocation.

Determine if a user can change status from an old condition/status to a new condition/status. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function CheckClearQualityTransition( _
   ByVal _setupParam_ As [CheckClearQualityTransitionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CheckClearQualityTransitionSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CheckClearQualityTransition( 
   [CheckClearQualityTransitionSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CheckClearQualityTransitionSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

Checks the transitions as set up in Clarify’s Policies & Customers.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~CheckClearQualityTransition.md)  
[CheckClearQualityTransitionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CheckClearQualityTransitionSetup.md)