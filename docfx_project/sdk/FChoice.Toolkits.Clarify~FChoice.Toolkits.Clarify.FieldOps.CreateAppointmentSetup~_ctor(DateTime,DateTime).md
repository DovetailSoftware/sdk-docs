### CreateAppointmentSetup Constructor(DateTime,DateTime)

The DateTime the Appointment starts. If not set, the current time is used.

The DateTime the Appointment ends. If not set, the start time and duration is used to calculate the end time.

Initializes a new instance of the CreateAppointmentSetup class. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _startDate_ As Date, _
   ByVal _endDate_ As Date _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreateAppointmentSetup( 
   DateTime _startDate_,
   DateTime _endDate_
)
```

#### Parameters

_startDate_

The DateTime the Appointment starts. If not set, the current time is used.

_endDate_

The DateTime the Appointment ends. If not set, the start time and duration is used to calculate the end time.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateAppointmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup.md)  
[CreateAppointmentSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup~_ctor.md)