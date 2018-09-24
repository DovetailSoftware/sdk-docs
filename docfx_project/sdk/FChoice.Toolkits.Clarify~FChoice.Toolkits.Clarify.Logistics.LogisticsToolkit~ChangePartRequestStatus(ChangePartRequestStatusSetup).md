### ChangePartRequestStatus(ChangePartRequestStatusSetup) Method

Setup object for API invocation.

Causes the specified part request to have a status change from one status to another status – always in the same condition. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function ChangePartRequestStatus( _
   ByVal _setupParam_ ChangePartRequestStatusSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult ChangePartRequestStatus(
   ChangePartRequestStatusSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

This API only changes a Part Request's status. To change the condition of the part request, use one of the supplied APIs such as [ReceivePartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ReceivePartRequest.md) or [Pick](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Pick.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ChangePartRequestStatus.md)
[FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ChangePartRequestStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ChangePartRequestStatusSetup.md)
