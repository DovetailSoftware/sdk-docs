     CreateEcoLaborDetail(Boolean,TimeSpan,String) Method                                                   

fcSDK Documentation

CreateEcoLaborDetail(Boolean,TimeSpan,String) Method

Indicates if this detail is required (true) or not (false)

Estimated amount of time required to perform the work in seconds.

Identifier of the ECO header

Add a Labor Detail to a ECO Header. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateEcoLaborDetail( _
   ByVal _isRequired_ As Boolean, _
   ByVal _elapsedTime_ As [TimeSpan](#), _
   ByVal _ecoHeaderIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateEcoLaborDetail( 
   bool _isRequired_,
   [TimeSpan](#) _elapsedTime_,
   string _ecoHeaderIDNum_
)

#### Parameters

_isRequired_

Indicates if this detail is required (true) or not (false)

_elapsedTime_

Estimated amount of time required to perform the work in seconds.

_ecoHeaderIDNum_

Identifier of the ECO header

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DepotRepairToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit.md)  
[DepotRepairToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.DepotRepairToolkit~CreateEcoLaborDetail.md)