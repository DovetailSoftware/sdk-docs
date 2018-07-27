### CreateAppointmentSetup Constructor(DateTime,TimeSpan)

The DateTime the Appointment starts. If not set, the current time is used.

The length (in seconds) of the appointment. If not specified, it is calculated from the start and end times.

Initializes a new instance of the CreateAppointmentSetup class. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _startDate_ As Date, _
   ByVal _duration_ As TimeSpan _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreateAppointmentSetup( 
   DateTime _startDate_,
   TimeSpan _duration_
)
```

#### Parameters

_startDate_

The DateTime the Appointment starts. If not set, the current time is used.

_duration_

The length (in seconds) of the appointment. If not specified, it is calculated from the start and end times.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateAppointmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup.md)  
[CreateAppointmentSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup~_ctor.md)