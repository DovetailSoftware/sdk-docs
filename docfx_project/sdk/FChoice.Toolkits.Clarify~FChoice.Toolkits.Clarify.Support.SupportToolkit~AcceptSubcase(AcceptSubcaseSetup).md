### AcceptSubcase(AcceptSubcaseSetup) Method

Setup object for API invocation.

Accept the specified Subcase from the queue in which it is currently dispatched. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function AcceptSubcase( _
   ByVal _setupParam_ AcceptSubcaseSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult AcceptSubcase( 
   AcceptSubcaseSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Subcase must be currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AcceptSubcase.md)  
[AcceptSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.AcceptSubcaseSetup.md)