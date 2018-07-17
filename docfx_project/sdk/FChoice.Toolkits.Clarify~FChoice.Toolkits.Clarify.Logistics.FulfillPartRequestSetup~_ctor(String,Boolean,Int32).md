     FulfillPartRequestSetup Constructor(String,Boolean,Int32)                                                   

fcSDK Documentation

FulfillPartRequestSetup Constructor(String,Boolean,Int32)

Part Request Detail Identifier

Specifies whether or not logistics transitions will be checked and the condition/status of the part request detail will be changed during the fulfill operation

The number of parts being fulfilled for this Part Request

Initializes a new instance of the FulfillPartRequestSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _useTransitions_ As Boolean, _
   ByVal _quantity_ As [Integer](#) _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public FulfillPartRequestSetup( 
   string _partRequestDetailIDNum_,
   bool _useTransitions_,
   [int](#) _quantity_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_useTransitions_

Specifies whether or not logistics transitions will be checked and the condition/status of the part request detail will be changed during the fulfill operation

_quantity_

The number of parts being fulfilled for this Part Request

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FulfillPartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup.md)  
[FulfillPartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup~_ctor.md)