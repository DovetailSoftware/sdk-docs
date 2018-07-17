     UpdateSchedule(UpdateScheduleSetup) Method                                                   

fcSDK Documentation

UpdateSchedule(UpdateScheduleSetup) Method

Setup object for API invocation.

Used to update a contract schedule. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function UpdateSchedule( _
   ByVal _setupParam_ As [UpdateScheduleSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.UpdateScheduleSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateSchedule( 
   [UpdateScheduleSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.UpdateScheduleSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The contract ID must be specified, and the ID of the schedule is also specified. You may specify the bill-to or ship-to site, the price program, and the code list values. In addition, you may specify a variety of dates.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~UpdateSchedule.md)  
[UpdateScheduleSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.UpdateScheduleSetup.md)