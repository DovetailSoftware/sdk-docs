### UnpickSetup Constructor(String,Location,Boolean,String\[\])

Part Request Detail Identifier

The inventory location to unpick the part from for this Part Request

Specifies whether or not to check logistics transitions and change the condition/status of the Part Request Detail during the Unpick operation

The serial number(s) of the part(s) to unpick (hard unpick)

Initializes a new instance of the UnpickSetup class. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _location_ As Location, _
   ByVal _useTransitions_ As Boolean, _
   ByVal ParamArray _serialNumbers_() As String _
)
```

```csharp
[ConstructorIndexAttribute()]
public UnpickSetup( 
   string _partRequestDetailIDNum_,
   Location _location_,
   bool _useTransitions_,
   params string[] _serialNumbers_
)
```

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_location_

The inventory location to unpick the part from for this Part Request

_useTransitions_

Specifies whether or not to check logistics transitions and change the condition/status of the Part Request Detail during the Unpick operation

_serialNumbers_

The serial number(s) of the part(s) to unpick (hard unpick)

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UnpickSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup.md)  
[UnpickSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup~_ctor.md)