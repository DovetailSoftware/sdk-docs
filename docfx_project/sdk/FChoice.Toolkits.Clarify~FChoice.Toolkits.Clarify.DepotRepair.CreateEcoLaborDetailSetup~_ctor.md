### CreateEcoLaborDetailSetup Constructor

Indicates if this detail is required (true) or not (false)

Estimated amount of time required to perform the work in seconds.

Identifier of the ECO header

Initializes a new instance of the CreateEcoLaborDetailSetup class.

Syntax

```vbnet
' Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _isRequired_ As Boolean, _
   ByVal _elapsedTime_ As TimeSpan, _
   ByVal _ecoHeaderIDNum_ As String _
)

[ConstructorIndexAttribute()]
public CreateEcoLaborDetailSetup( 
   bool _isRequired_,
   TimeSpan _elapsedTime_,
   string _ecoHeaderIDNum_
)

#### Parameters

_isRequired_

Indicates if this detail is required (true) or not (false)

_elapsedTime_

Estimated amount of time required to perform the work in seconds.

_ecoHeaderIDNum_

Identifier of the ECO header

[!include[Requirements](../partials/requirements.md)]



#### Reference

[CreateEcoLaborDetailSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoLaborDetailSetup.md)  
[CreateEcoLaborDetailSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoLaborDetailSetup_members.md)