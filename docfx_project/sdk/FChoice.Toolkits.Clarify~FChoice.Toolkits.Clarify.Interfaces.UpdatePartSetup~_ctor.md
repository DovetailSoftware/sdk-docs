### UpdatePartSetup Constructor

Part number for the part to update

Domain for the part to update.

Number of warranty days for the part

Initializes a new instance of the UpdatePartSetup class.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partNumber_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _warrantyDays_ As Integer _
)
```

```csharp
[ConstructorIndexAttribute()]
public UpdatePartSetup( 
   string _partNumber_,
   string _partDomain_,
   int _warrantyDays_
)
```

#### Parameters

_partNumber_

Part number for the part to update

_partDomain_

Domain for the part to update.

_warrantyDays_

Number of warranty days for the part

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdatePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdatePartSetup.md)  
[UpdatePartSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.UpdatePartSetup_members.md)