### PickSetup Constructor(String,Boolean)

Part Request Detail Identifier

Specifies whether or not to check logistics transitions and change the condition/status of the Part Request Detail during the Pick operation

Initializes a new instance of the PickSetup class. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _useTransitions_ As Boolean _
)
```

```csharp
[ConstructorIndexAttribute()]
public PickSetup( 
   string _partRequestDetailIDNum_,
   bool _useTransitions_
)
```

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_useTransitions_

Specifies whether or not to check logistics transitions and change the condition/status of the Part Request Detail during the Pick operation

[!include[Requirements](../partials/requirements.md)]

#### Reference

[PickSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup.md)  
[PickSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup~_ctor.md)