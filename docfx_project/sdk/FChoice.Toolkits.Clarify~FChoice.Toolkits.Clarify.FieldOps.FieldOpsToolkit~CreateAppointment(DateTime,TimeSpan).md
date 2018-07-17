     CreateAppointment(DateTime,TimeSpan) Method                                                   

fcSDK Documentation

CreateAppointment(DateTime,TimeSpan) Method

The DateTime the Appointment starts. If not set, the current time is used.

The length (in seconds) of the appointment. If not specified, it is calculated from the start and end times.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateAppointment( _
   ByVal _startDate_ As [Date](#), _
   ByVal _duration_ As [TimeSpan](#) _
) As [CreateAppointmentResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentResult.md)

public [CreateAppointmentResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentResult.md) CreateAppointment( 
   [DateTime](#) _startDate_,
   [TimeSpan](#) _duration_
)

#### Parameters

_startDate_

The DateTime the Appointment starts. If not set, the current time is used.

_duration_

The length (in seconds) of the appointment. If not specified, it is calculated from the start and end times.

#### Return Value

The following values are populated in the [CreateAppointmentResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentResult.md) object returned by the API method:

*   [ScheduleObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentResult~ScheduleObjid.md) \- The Objid of the Schedule.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentResult~Objid.md) \- The Objid of the Appointment.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateAppointment.md)