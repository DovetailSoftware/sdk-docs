### AddModuleToCR(AddModuleToCRSetup) Method

Setup object for API invocation.

Adding a file Module to a Fixed CR. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function AddModuleToCR( _
   ByVal _setupParam_ As [AddModuleToCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AddModuleToCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AddModuleToCR( 
   [AddModuleToCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AddModuleToCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

There is no integration between this API and your change control system so no validation is possible for the Module [filename](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AddModuleToCRSetup~FileName.md) or [revision](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AddModuleToCRSetup~FileRevision.md).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~AddModuleToCR.md)  
[AddModuleToCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AddModuleToCRSetup.md)