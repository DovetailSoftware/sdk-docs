﻿### ChangePartRequestStatus(String) Method

Part Request Detail Identifier

Causes the specified part request to have a status change from one status to another status – always in the same condition. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ChangePartRequestStatus( _
   ByVal _partRequestDetailIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult ChangePartRequestStatus( 
   string _partRequestDetailIDNum_
)
```

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

This API only changes a Part Request's status. To change the condition of the part request, use one of the supplied APIs such as [ReceivePartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ReceivePartRequest.md) or [Pick](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Pick.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ChangePartRequestStatus.md)