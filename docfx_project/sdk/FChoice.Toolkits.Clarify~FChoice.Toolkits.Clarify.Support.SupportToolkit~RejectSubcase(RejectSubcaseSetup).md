### RejectSubcase(RejectSubcaseSetup) Method

Setup object for API invocation.

Reject the Subcase from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.

Syntax

```vbnet
' Declaration

Public Overloads Function RejectSubcase( _
   ByVal _setupParam_ As [RejectSubcaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RejectSubcaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) RejectSubcase( 
   [RejectSubcaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RejectSubcaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Subcase must be in open condition, and currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~RejectSubcase.md)  
[RejectSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.RejectSubcaseSetup.md)