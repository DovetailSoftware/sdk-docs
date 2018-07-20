### ReopenCase(ReopenCaseSetup) Method

Setup object for API invocation.

Reopens the specified Case. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function ReopenCase( _
   ByVal _setupParam_ As [ReopenCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenCaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ReopenCase( 
   [ReopenCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenCaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The [User](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenCaseSetup~UserName.md) that reopens the Case becomes the new owner.

If the [WipBin](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenCaseSetup~WipBin.md) is not specified the Case is placed in the user's default WipBin.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ReopenCase.md)  
[ReopenCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ReopenCaseSetup.md)