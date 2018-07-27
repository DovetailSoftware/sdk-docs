### ClosePartRequest(ClosePartRequestSetup) Method

Setup object for API invocation.

Causes the specified part request to be closed. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ClosePartRequest( _
   ByVal _setupParam_ ClosePartRequestSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult ClosePartRequest( 
   ClosePartRequestSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

This API will validate that the user has the authority to close the part request. If this is the last part request detail that was open for the part request header, the header is also closed.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ClosePartRequest.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ClosePartRequestSetup", Caption="ClosePartRequestSetup Class"**