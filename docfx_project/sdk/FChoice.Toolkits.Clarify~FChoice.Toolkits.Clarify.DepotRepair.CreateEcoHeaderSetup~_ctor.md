### CreateEcoHeaderSetup Constructor

The DateTime the ECO header goes into effect. If not set, the current time is used.

The DateTime the ECO header becomes obsolete. If not set, the current time is used.

Initializes a new instance of the CreateEcoHeaderSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _startDate_ As Date, _
   ByVal _endDate_ As Date _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreateEcoHeaderSetup( 
   DateTime _startDate_,
   DateTime _endDate_
)
```

#### Parameters

_startDate_

The DateTime the ECO header goes into effect. If not set, the current time is used.

_endDate_

The DateTime the ECO header becomes obsolete. If not set, the current time is used.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateEcoHeaderSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoHeaderSetup.md)  
[CreateEcoHeaderSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoHeaderSetup_members.md)