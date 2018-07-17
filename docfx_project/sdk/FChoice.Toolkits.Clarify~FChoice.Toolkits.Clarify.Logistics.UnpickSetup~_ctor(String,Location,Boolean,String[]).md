     UnpickSetup Constructor(String,Location,Boolean,String\[\])                                                   

fcSDK Documentation

UnpickSetup Constructor(String,Location,Boolean,String\[\])

Part Request Detail Identifier

The inventory location to unpick the part from for this Part Request

Specifies whether or not to check logistics transitions and change the condition/status of the Part Request Detail during the Unpick operation

The serial number(s) of the part(s) to unpick (hard unpick)

Initializes a new instance of the UnpickSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _location_ As [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md), _
   ByVal _useTransitions_ As Boolean, _
   ByVal ParamArray _serialNumbers_() As String _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public UnpickSetup( 
   string _partRequestDetailIDNum_,
   [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _location_,
   bool _useTransitions_,
   params string\[\] _serialNumbers_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_location_

The inventory location to unpick the part from for this Part Request

_useTransitions_

Specifies whether or not to check logistics transitions and change the condition/status of the Part Request Detail during the Unpick operation

_serialNumbers_

The serial number(s) of the part(s) to unpick (hard unpick)

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UnpickSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup.md)  
[UnpickSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UnpickSetup~_ctor.md)