     CreateAppointmentSetup Constructor(DateTime,DateTime)                                                   

fcSDK Documentation

CreateAppointmentSetup Constructor(DateTime,DateTime)

The DateTime the Appointment starts. If not set, the current time is used.

The DateTime the Appointment ends. If not set, the start time and duration is used to calculate the end time.

Initializes a new instance of the CreateAppointmentSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _startDate_ As [Date](#), _
   ByVal _endDate_ As [Date](#) _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public CreateAppointmentSetup( 
   [DateTime](#) _startDate_,
   [DateTime](#) _endDate_
)

#### Parameters

_startDate_

The DateTime the Appointment starts. If not set, the current time is used.

_endDate_

The DateTime the Appointment ends. If not set, the start time and duration is used to calculate the end time.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[CreateAppointmentSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup.md)  
[CreateAppointmentSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateAppointmentSetup~_ctor.md)