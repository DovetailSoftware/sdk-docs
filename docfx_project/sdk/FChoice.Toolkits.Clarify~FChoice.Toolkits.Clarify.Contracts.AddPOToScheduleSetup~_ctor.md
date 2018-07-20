### AddPOToScheduleSetup Constructor

Contract Identifier.

Schedule Identifier.

Purchase Order Identifier.

The amount of the Purchase Order.

Initializes a new instance of the AddPOToScheduleSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _contractIDNum_ As String, _
   ByVal _scheduleIDNum_ As String, _
   ByVal _poIDNum_ As String, _
   ByVal _poAmount_ As [Decimal](#) _
)
```

```csharp
[ConstructorIndexAttribute()]
public AddPOToScheduleSetup( 
   string _contractIDNum_,
   string _scheduleIDNum_,
   string _poIDNum_,
   [decimal](#) _poAmount_
)
```

#### Parameters

_contractIDNum_

Contract Identifier.

_scheduleIDNum_

Schedule Identifier.

_poIDNum_

Purchase Order Identifier.

_poAmount_

The amount of the Purchase Order.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[AddPOToScheduleSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.AddPOToScheduleSetup.md)  
[AddPOToScheduleSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.AddPOToScheduleSetup_members.md)