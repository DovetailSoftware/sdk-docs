### CreateTimeLogSetup Constructor

The Objid of the Onsite Log that this Time Log is related to.

The DateTime the Time Log starts. If not set, the current time is used.

The length (in seconds) of the Time Log. If not specified, it is calculated from the start and end times.

Initializes a new instance of the CreateTimeLogSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _onsiteLogObjid_ As Integer, _
   ByVal _startDate_ As Date, _
   ByVal _duration_ As TimeSpan _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreateTimeLogSetup( 
   int _onsiteLogObjid_,
   DateTime _startDate_,
   TimeSpan _duration_
)
```

#### Parameters

_onsiteLogObjid_

The Objid of the Onsite Log that this Time Log is related to.

_startDate_

The DateTime the Time Log starts. If not set, the current time is used.

_duration_

The length (in seconds) of the Time Log. If not specified, it is calculated from the start and end times.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateTimeLogSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateTimeLogSetup.md)  
[CreateTimeLogSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.CreateTimeLogSetup_members.md)