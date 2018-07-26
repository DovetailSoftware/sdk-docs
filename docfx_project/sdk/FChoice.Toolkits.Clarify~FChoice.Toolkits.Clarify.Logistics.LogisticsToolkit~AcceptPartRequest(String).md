### AcceptPartRequest(String) Method

Part Request Detail Identifier

Accept the specified PartRequest from the queue in which it is currently dispatched. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function AcceptPartRequest( _
   ByVal _partRequestDetailIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AcceptPartRequest( 
   string _partRequestDetailIDNum_
)
```

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The PartRequest must be currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AcceptPartRequest.md)