### FulfillPartRequestSetup Constructor(String,Boolean,String)

Part Request Detail Identifier

Specifies whether or not logistics transitions will be checked and the condition/status of the part request detail will be changed during the fulfill operation

The serial number of the part used to fulfill this Part Request

Initializes a new instance of the FulfillPartRequestSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _useTransitions_ As Boolean, _
   ByVal _serialNumber_ As String _
)

[ConstructorIndexAttribute()]
public FulfillPartRequestSetup( 
   string _partRequestDetailIDNum_,
   bool _useTransitions_,
   string _serialNumber_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_useTransitions_

Specifies whether or not logistics transitions will be checked and the condition/status of the part request detail will be changed during the fulfill operation

_serialNumber_

The serial number of the part used to fulfill this Part Request

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FulfillPartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup.md)  
[FulfillPartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup~_ctor.md)