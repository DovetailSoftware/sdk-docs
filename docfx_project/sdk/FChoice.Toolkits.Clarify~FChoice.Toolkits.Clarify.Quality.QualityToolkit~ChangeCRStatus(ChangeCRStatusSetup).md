### ChangeCRStatus(ChangeCRStatusSetup) Method

Setup object for API invocation.

Change the status of a CR. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function ChangeCRStatus( _
   ByVal _setupParam_ As [ChangeCRStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ChangeCRStatusSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangeCRStatus( 
   [ChangeCRStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ChangeCRStatusSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The change request may be in any condition, but the new status MUST have the same condition as the change request’s current condition. In other words, you cannot use this API to change the condition of a CR – you must use the proper API (fix, close, reopen) to do that. You may assign notes to the status change, as well as set the time of the status change, and the user who changed the status. The API can also generate a time bomb (for business rule notification).

[!include[Requirements](../partials/requirements.md)]



#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~ChangeCRStatus.md)  
[ChangeCRStatusSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ChangeCRStatusSetup.md)