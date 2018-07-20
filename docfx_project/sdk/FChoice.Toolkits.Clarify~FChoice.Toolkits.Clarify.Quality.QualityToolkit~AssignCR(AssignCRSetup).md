### AssignCR(AssignCRSetup) Method

Setup object for API invocation.

Assign the CR to a new user. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function AssignCR( _
   ByVal _setupParam_ As [AssignCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AssignCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AssignCR( 
   [AssignCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AssignCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The CR must be in the Open condition, and the user assigning the CR does not have to be the owner of the CR. In base Clarify, the assigner of a CR must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the CR in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~AssignCR.md)  
[AssignCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AssignCRSetup.md)