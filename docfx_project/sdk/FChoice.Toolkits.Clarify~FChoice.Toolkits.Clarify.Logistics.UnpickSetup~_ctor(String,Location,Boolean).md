### UnpickSetup Constructor(String,Location,Boolean)

Part Request Detail Identifier

The inventory location to unpick the part from for this Part Request

Specifies whether or not to check logistics transitions and change the condition/status of the Part Request Detail during the Unpick operation

Initializes a new instance of the UnpickSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _location_ As [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md), _
   ByVal _useTransitions_ As Boolean _
)

[ConstructorIndexAttribute()]
public UnpickSetup( 
   string _partRequestDetailIDNum_,
   [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _location_,
   bool _useTransitions_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_location_

The inventory location to unpick the part from for this Part Request

_useTransitions_

Specifies whether or not to check logistics transitions and change the condition/status of the Part Request Detail during the Unpick operation

[!include[Requirements](../partials/requirements.md)]



#### Reference

[UnpickSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup.md)  
[UnpickSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup~_ctor.md)