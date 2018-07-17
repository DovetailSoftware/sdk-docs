     CreateAppointmentSetup Constructor(TimeSpan,DateTime)                                                   

fcSDK Documentation

CreateAppointmentSetup Constructor(TimeSpan,DateTime)

The length (in seconds) of the appointment. If not specified, it is calculated from the start and end times.

The DateTime the Appointment ends. If not set, the start time and duration is used to calculate the end time.

Initializes a new instance of the CreateAppointmentSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _duration_ As [TimeSpan](#), _
   ByVal _endDate_ As [Date](#) _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public CreateAppointmentSetup( 
   [TimeSpan](#) _duration_,
   [DateTime](#) _endDate_
)

#### Parameters

_duration_

The length (in seconds) of the appointment. If not specified, it is calculated from the start and end times.

_endDate_

The DateTime the Appointment ends. If not set, the start time and duration is used to calculate the end time.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreateAppointmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup.md)  
[CreateAppointmentSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup~_ctor.md)