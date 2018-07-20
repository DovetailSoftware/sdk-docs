### CreateDepotRepairLaborSetup Constructor

Objid of the related Part Request Detail

The DateTime the Labor began. If not set, the current time is used.

Length of time required to do the work, in seconds

Initializes a new instance of the CreateDepotRepairLaborSetup class.

Syntax

```vbnet
' Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _demandDetailObjid_ As Integer, _
   ByVal _startDate_ As Date, _
   ByVal _duration_ As TimeSpan _
)

[ConstructorIndexAttribute()]
public CreateDepotRepairLaborSetup( 
   int _demandDetailObjid_,
   DateTime _startDate_,
   TimeSpan _duration_
)

#### Parameters

_demandDetailObjid_

Objid of the related Part Request Detail

_startDate_

The DateTime the Labor began. If not set, the current time is used.

_duration_

Length of time required to do the work, in seconds

[!include[Requirements](../partials/requirements.md)]



#### Reference

[CreateDepotRepairLaborSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateDepotRepairLaborSetup.md)  
[CreateDepotRepairLaborSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateDepotRepairLaborSetup_members.md)