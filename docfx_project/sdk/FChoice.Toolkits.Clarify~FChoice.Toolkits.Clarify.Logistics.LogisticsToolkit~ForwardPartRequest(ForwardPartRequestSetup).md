### ForwardPartRequest(ForwardPartRequestSetup) Method

Setup object for API invocation.

Reject-forward the PartRequest from one queue to another. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function ForwardPartRequest( _
   ByVal _setupParam_ ForwardPartRequestSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult ForwardPartRequest( 
   ForwardPartRequestSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The PartRequest must be in open condition, and not currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ForwardPartRequest.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ForwardPartRequestSetup", Caption="ForwardPartRequestSetup Class"**