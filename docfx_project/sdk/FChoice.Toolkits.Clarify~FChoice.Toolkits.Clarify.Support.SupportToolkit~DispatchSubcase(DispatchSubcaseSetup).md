### DispatchSubcase(DispatchSubcaseSetup) Method

Setup object for API invocation.

Dispatch the Subcase to the specified queue. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function DispatchSubcase( _
   ByVal _setupParam_ DispatchSubcaseSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult DispatchSubcase( 
   DispatchSubcaseSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Subcase must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~DispatchSubcase.md)  
[DispatchSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.DispatchSubcaseSetup.md)