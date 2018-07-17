     SetLogisticsTransition(PartRequestType,PartRequestCondition,PartRequestCondition,String\[\]) Method                                                   

fcSDK Documentation

SetLogisticsTransition(PartRequestType,PartRequestCondition,PartRequestCondition,String\[\]) Method

Type of Part Request that this transition applies to

Starting condition of the Part Request for this transition

Ending condition of the Part Request for this transition

An array of Strings which are the names of the privilege classes allowed to perform this transition

Allows you to create or modify Logistics Transitions in the database. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function SetLogisticsTransition( _
   ByVal _partRequestType_ As [PartRequestType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PartRequestType.md), _
   ByVal _startCondition_ As [PartRequestCondition](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PartRequestCondition.md), _
   ByVal _endCondition_ As [PartRequestCondition](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PartRequestCondition.md), _
   ByVal ParamArray _privilegeClasses_() As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) SetLogisticsTransition( 
   [PartRequestType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PartRequestType.md) _partRequestType_,
   [PartRequestCondition](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PartRequestCondition.md) _startCondition_,
   [PartRequestCondition](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.PartRequestCondition.md) _endCondition_,
   params string\[\] _privilegeClasses_
)

#### Parameters

_partRequestType_

Type of Part Request that this transition applies to

_startCondition_

Starting condition of the Part Request for this transition

_endCondition_

Ending condition of the Part Request for this transition

_privilegeClasses_

An array of Strings which are the names of the privilege classes allowed to perform this transition

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

If a transition does not yet exist for the conditions and request type, a new transition is created. Otherwise, the existing transition is modified.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~SetLogisticsTransition.md)