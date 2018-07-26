### AddServiceInterruption(String) Method

The identifier of the Case with which this Service Interuption is associated

Syntax

```vbnet
'Declaration

Public Overloads Function AddServiceInterruption( _
   ByVal _caseIDNum_ As String _
) As AddServiceInterruptionResult
```

```csharp
public AddServiceInterruptionResult AddServiceInterruption( 
   string _caseIDNum_
)
```

#### Parameters

_caseIDNum_

The identifier of the Case with which this Service Interuption is associated

#### Return Value

The following values are populated in the AddServiceInterruptionResult object returned by the API method:

*   ScheduleObjid \- The Objid of the Schedule.
*   Objid \- The Objid of the Appointment.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~AddServiceInterruption.md)