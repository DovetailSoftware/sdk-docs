### RelateCaseToParentCase(RelateCaseToParentCaseSetup) Method

Setup object for API invocation.

Relates a Case to a specified parent Case. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function RelateCaseToParentCase( _
   ByVal _setupParam_ As [RelateCaseToParentCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RelateCaseToParentCaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) RelateCaseToParentCase( 
   [RelateCaseToParentCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RelateCaseToParentCaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The parent Case cannot be a descendent of the child Case.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~RelateCaseToParentCase.md)  
[RelateCaseToParentCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RelateCaseToParentCaseSetup.md)