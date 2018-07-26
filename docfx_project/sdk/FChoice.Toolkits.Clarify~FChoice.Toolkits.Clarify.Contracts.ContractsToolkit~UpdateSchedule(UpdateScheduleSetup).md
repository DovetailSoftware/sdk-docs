### UpdateSchedule(UpdateScheduleSetup) Method

Setup object for API invocation.

Used to update a contract schedule. This overload takes a setup object.

Syntax

```vbnet
'Declaration

Public Overloads Function UpdateSchedule( _
   ByVal _setupParam_ UpdateScheduleSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult UpdateSchedule( 
   UpdateScheduleSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The contract ID must be specified, and the ID of the schedule is also specified. You may specify the bill-to or ship-to site, the price program, and the code list values. In addition, you may specify a variety of dates.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~UpdateSchedule.md)  
[UpdateScheduleSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.UpdateScheduleSetup.md)