### AcceptPartRequest(AcceptPartRequestSetup) Method

Setup object for API invocation.

Accept the specified PartRequest from the queue in which it is currently dispatched. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function AcceptPartRequest( _
   ByVal _setupParam_ AcceptPartRequestSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult AcceptPartRequest( 
   AcceptPartRequestSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The PartRequest must be currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AcceptPartRequest.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.AcceptPartRequestSetup", Caption="AcceptPartRequestSetup Class"**