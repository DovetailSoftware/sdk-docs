### CreateEcoItemSetup Constructor

This must be either 5148 to apply the ECO item to an ECO header, or 329 to apply the ECO item to a part revision.

Is the ECO item active (true) or inactive (false)

Identifier of the ECO header

The objid of part revision affected by the ECO, or 0 for no change.

The objid of resulting part revision after applying the ECO, or 0 for no change.

Initializes a new instance of the CreateEcoItemSetup class.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _appliesTo_ As EcoItemAppliesTo, _
   ByVal _isActive_ As Boolean, _
   ByVal _ecoHeaderIDNum_ As String, _
   ByVal _applyPartRevisionObjid_ As Integer, _
   ByVal _resultPartRevisionObjid_ As Integer _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreateEcoItemSetup( 
   EcoItemAppliesTo _appliesTo_,
   bool _isActive_,
   string _ecoHeaderIDNum_,
   int _applyPartRevisionObjid_,
   int _resultPartRevisionObjid_
)
```

#### Parameters

_appliesTo_

This must be either 5148 to apply the ECO item to an ECO header, or 329 to apply the ECO item to a part revision.

_isActive_

Is the ECO item active (true) or inactive (false)

_ecoHeaderIDNum_

Identifier of the ECO header

_applyPartRevisionObjid_

The objid of part revision affected by the ECO, or 0 for no change.

_resultPartRevisionObjid_

The objid of resulting part revision after applying the ECO, or 0 for no change.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateEcoItemSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoItemSetup.md)  
[CreateEcoItemSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoItemSetup_members.md)