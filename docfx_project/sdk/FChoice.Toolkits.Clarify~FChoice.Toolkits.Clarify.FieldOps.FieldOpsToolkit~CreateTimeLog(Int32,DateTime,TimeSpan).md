### CreateTimeLog(Int32,DateTime,TimeSpan) Method

The Objid of the Onsite Log that this Time Log is related to.

The DateTime the Time Log starts. If not set, the current time is used.

The length (in seconds) of the Time Log. If not specified, it is calculated from the start and end times.

Syntax

```vbnet
'Declaration

Public Overloads Function CreateTimeLog( _
   ByVal _onsiteLogObjid_ As Integer, _
   ByVal _startDate_ As Date, _
   ByVal _duration_ As TimeSpan _
) As CreateTimeLogResult
```

```csharp
public CreateTimeLogResult CreateTimeLog( 
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

#### Return Value

The following values are populated in the CreateTimeLogResult object returned by the API method:

*   OnsiteLogObjid \- The Objid of the OnsiteLog.
*   Objid \- The Objid of the TimeLog.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~CreateTimeLog.md)