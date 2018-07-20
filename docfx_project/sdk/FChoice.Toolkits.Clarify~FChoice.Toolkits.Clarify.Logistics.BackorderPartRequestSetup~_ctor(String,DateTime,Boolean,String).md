### BackorderPartRequestSetup Constructor(String,DateTime,Boolean,String)

Part Request Detail Identifier

The DateTime the Part Request backordered parts are expected to arrive. If not set, the current time is used.

Specifies whether or not logistics transitions will be checked and the condition/status of the part request detail will be changed during the backorder operation

The serial number of the part used to backorder this Part Request

Initializes a new instance of the BackorderPartRequestSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _expectedDate_ As Date, _
   ByVal _useTransitions_ As Boolean, _
   ByVal _serialNumber_ As String _
)

[ConstructorIndexAttribute()]
public BackorderPartRequestSetup( 
   string _partRequestDetailIDNum_,
   DateTime _expectedDate_,
   bool _useTransitions_,
   string _serialNumber_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_expectedDate_

The DateTime the Part Request backordered parts are expected to arrive. If not set, the current time is used.

_useTransitions_

Specifies whether or not logistics transitions will be checked and the condition/status of the part request detail will be changed during the backorder operation

_serialNumber_

The serial number of the part used to backorder this Part Request

[!include[Requirements](../partials/requirements.md)]



#### Reference

[BackorderPartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup.md)  
[BackorderPartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup~_ctor.md)