### ReopenPartRequest(String) Method

Part Request Detail Identifier

Causes the specified part request to be reopened.

This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ReopenPartRequest( _
   ByVal _partRequestDetailIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult ReopenPartRequest( 
   string _partRequestDetailIDNum_
)
```

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Part Request must currently be closed. The WIPBIN in which to place the part request can be specified, which is an augmentation to base Clarify. If no WIPBIN is specified, the default is used.

This API will validate that the user has authority to make the status transition.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ReopenPartRequest.md)