### DispatchCase(DispatchCaseSetup) Method

Setup object for API invocation.

Dispatch the Case to the specified queue. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function DispatchCase( _
   ByVal _setupParam_ DispatchCaseSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult DispatchCase( 
   DispatchCaseSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Case must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~DispatchCase.md)  
[DispatchCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.DispatchCaseSetup.md)