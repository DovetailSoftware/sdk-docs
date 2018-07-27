### CreateAppointment(CreateAppointmentSetup) Method

Setup object for API invocation.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateAppointment( _
   ByVal _setupParam_ As CreateAppointmentSetup _
) As CreateAppointmentResult
```

```csharp
public CreateAppointmentResult CreateAppointment( 
   CreateAppointmentSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the CreateAppointmentResult object returned by the API method:

*   Objid \- The Objid of the Appointment.
*   ScheduleObjid \- The Objid of the Schedule.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateAppointment.md)  
[CreateAppointmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup.md)