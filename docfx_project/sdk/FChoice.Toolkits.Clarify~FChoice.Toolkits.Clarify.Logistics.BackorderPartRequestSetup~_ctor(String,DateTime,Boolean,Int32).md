     BackorderPartRequestSetup Constructor(String,DateTime,Boolean,Int32)                                                   

fcSDK Documentation

BackorderPartRequestSetup Constructor(String,DateTime,Boolean,Int32)

Part Request Detail Identifier

The DateTime the Part Request backordered parts are expected to arrive. If not set, the current time is used.

Specifies whether or not logistics transitions will be checked and the condition/status of the part request detail will be changed during the backorder operation

The number of parts being backordered for this Part Request

Initializes a new instance of the BackorderPartRequestSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _expectedDate_ As [Date](#), _
   ByVal _useTransitions_ As Boolean, _
   ByVal _quantity_ As [Integer](#) _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public BackorderPartRequestSetup( 
   string _partRequestDetailIDNum_,
   [DateTime](#) _expectedDate_,
   bool _useTransitions_,
   [int](#) _quantity_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_expectedDate_

The DateTime the Part Request backordered parts are expected to arrive. If not set, the current time is used.

_useTransitions_

Specifies whether or not logistics transitions will be checked and the condition/status of the part request detail will be changed during the backorder operation

_quantity_

The number of parts being backordered for this Part Request

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[BackorderPartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup.md)  
[BackorderPartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup~_ctor.md)