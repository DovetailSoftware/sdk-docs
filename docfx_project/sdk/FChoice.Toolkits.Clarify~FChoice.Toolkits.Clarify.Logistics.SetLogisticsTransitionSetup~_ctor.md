### SetLogisticsTransitionSetup Constructor

Type of Part Request that this transition applies to

Starting condition of the Part Request for this transition

Ending condition of the Part Request for this transition

An array of Strings which are the names of the privilege classes allowed to perform this transition

Initializes a new instance of the SetLogisticsTransitionSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestType_ As PartRequestType, _
   ByVal _startCondition_ As PartRequestCondition, _
   ByVal _endCondition_ As PartRequestCondition, _
   ByVal ParamArray _privilegeClasses_() As String _
)
```

```csharp
[ConstructorIndexAttribute()]
public SetLogisticsTransitionSetup( 
   PartRequestType _partRequestType_,
   PartRequestCondition _startCondition_,
   PartRequestCondition _endCondition_,
   params string[] _privilegeClasses_
)
```

#### Parameters

_partRequestType_

Type of Part Request that this transition applies to

_startCondition_

Starting condition of the Part Request for this transition

_endCondition_

Ending condition of the Part Request for this transition

_privilegeClasses_

An array of Strings which are the names of the privilege classes allowed to perform this transition

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SetLogisticsTransitionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetLogisticsTransitionSetup.md)  
[SetLogisticsTransitionSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.SetLogisticsTransitionSetup_members.md)