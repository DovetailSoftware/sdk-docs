### CreateAppointment(TimeSpan,DateTime) Method

The length (in seconds) of the appointment. If not specified, it is calculated from the start and end times.

The DateTime the Appointment ends. If not set, the start time and duration is used to calculate the end time.

Syntax

```vbnet
' Declaration

Public Overloads Function CreateAppointment( _
   ByVal _duration_ As TimeSpan, _
   ByVal _endDate_ As Date _
) As [CreateAppointmentResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentResult.md)

public [CreateAppointmentResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentResult.md) CreateAppointment( 
   TimeSpan _duration_,
   DateTime _endDate_
)

#### Parameters

_duration_

The length (in seconds) of the appointment. If not specified, it is calculated from the start and end times.

_endDate_

The DateTime the Appointment ends. If not set, the start time and duration is used to calculate the end time.

#### Return Value

The following values are populated in the [CreateAppointmentResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentResult.md) object returned by the API method:

*   [ScheduleObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentResult~ScheduleObjid.md) \- The Objid of the Schedule.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentResult~Objid.md) \- The Objid of the Appointment.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateAppointment.md)