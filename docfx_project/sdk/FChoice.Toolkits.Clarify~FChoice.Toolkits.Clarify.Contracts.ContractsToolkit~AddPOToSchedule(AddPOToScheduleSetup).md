### AddPOToSchedule(AddPOToScheduleSetup) Method

Setup object for API invocation.

Used to add purchase orders to schedules of contracts. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function AddPOToSchedule( _
   ByVal _setupParam_ AddPOToScheduleSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult AddPOToSchedule( 
   AddPOToScheduleSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the PO.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the PO.

#### Remarks

The PO number cannot be defined already for the schedule.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~AddPOToSchedule.md)  
[AddPOToScheduleSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.AddPOToScheduleSetup.md)