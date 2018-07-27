### CreatePartSetup Constructor

Part Number for the part to create.

Domain for the part to create.

Number of warranty days for the part

Type of repair. One of "Repairable" or "Expendable"

Initializes a new instance of the CreatePartSetup class.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _warrantyDays_ As Integer, _
   ByVal _repairType_ As PartRepairType _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreatePartSetup( 
   string _partNumber_,
   string _partDomain_,
   int _warrantyDays_,
   PartRepairType _repairType_
)
```

#### Parameters

_partNumber_

Part Number for the part to create.

_partDomain_

Domain for the part to create.

_warrantyDays_

Number of warranty days for the part

_repairType_

Type of repair. One of "Repairable" or "Expendable"

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreatePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePartSetup.md)  
[CreatePartSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreatePartSetup_members.md)