     AddServiceInterruption(String) Method                                                   

fcSDK Documentation

AddServiceInterruption(String) Method

The identifier of the Case with which this Service Interuption is associated

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function AddServiceInterruption( _
   ByVal _caseIDNum_ As String _
) As [AddServiceInterruptionResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionResult.md)

public [AddServiceInterruptionResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionResult.md) AddServiceInterruption( 
   string _caseIDNum_
)

#### Parameters

_caseIDNum_

The identifier of the Case with which this Service Interuption is associated

#### Return Value

The following values are populated in the [AddServiceInterruptionResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionResult.md) object returned by the API method:

*   [ScheduleObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionResult~ScheduleObjid.md) \- The Objid of the Schedule.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.AddServiceInterruptionResult~Objid.md) \- The Objid of the Appointment.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~AddServiceInterruption.md)