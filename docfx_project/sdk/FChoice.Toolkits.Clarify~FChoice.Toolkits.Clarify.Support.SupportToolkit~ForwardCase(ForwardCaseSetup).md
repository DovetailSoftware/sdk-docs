### ForwardCase(ForwardCaseSetup) Method

Setup object for API invocation.

Reject-forward the Case from one queue to another. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function ForwardCase( _
   ByVal _setupParam_ As [ForwardCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ForwardCaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ForwardCase( 
   [ForwardCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ForwardCaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Case must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ForwardCase.md)  
[ForwardCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ForwardCaseSetup.md)