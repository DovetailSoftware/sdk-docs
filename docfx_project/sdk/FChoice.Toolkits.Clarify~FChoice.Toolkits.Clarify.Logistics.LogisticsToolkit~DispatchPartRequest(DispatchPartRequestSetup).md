### DispatchPartRequest(DispatchPartRequestSetup) Method

Setup object for API invocation.

Dispatch the PartRequest to the specified queue. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function DispatchPartRequest( _
   ByVal _setupParam_ DispatchPartRequestSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult DispatchPartRequest(
   DispatchPartRequestSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The PartRequest must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~DispatchPartRequest.md)
[FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.DispatchPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.DispatchPartRequestSetup.md)
