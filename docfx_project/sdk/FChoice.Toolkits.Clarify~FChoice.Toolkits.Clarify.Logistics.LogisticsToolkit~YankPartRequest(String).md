﻿### YankPartRequest(String) Method

Part Request Detail Identifier

Yank the PartRequest from its current location to a new owner's WipBin. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function YankPartRequest( _
   ByVal _partRequestDetailIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult YankPartRequest( 
   string _partRequestDetailIDNum_
)
```

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The WipBin to place the PartRequest in may also be specified. This is augmented function from base Clarify, where the PartRequest is always placed in the default WipBin.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~YankPartRequest.md)