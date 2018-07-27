### ReceivePartRequestSetup Constructor(String,Int32,Location,Boolean)

Part Request Detail Identifier

The number of parts being received for this Part Request

Inventory location (or expense GL) into which the stock will be received

Specifies whether or not to change the Part Request condition

Initializes a new instance of the ReceivePartRequestSetup class. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _quantity_ As Integer, _
   ByVal _toLocation_ As Location, _
   ByVal _useTransitions_ As Boolean _
)
```

```csharp
[ConstructorIndexAttribute()]
public ReceivePartRequestSetup( 
   string _partRequestDetailIDNum_,
   int _quantity_,
   Location _toLocation_,
   bool _useTransitions_
)
```

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_quantity_

The number of parts being received for this Part Request

_toLocation_

Inventory location (or expense GL) into which the stock will be received

_useTransitions_

Specifies whether or not to change the Part Request condition

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ReceivePartRequestSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup.md)  
[ReceivePartRequestSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup~_ctor.md)