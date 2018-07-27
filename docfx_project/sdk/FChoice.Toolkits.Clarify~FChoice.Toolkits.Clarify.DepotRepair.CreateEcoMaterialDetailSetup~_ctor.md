### CreateEcoMaterialDetailSetup Constructor

Indicates if this detail is required (true) or not (false)

Identifier of the ECO header

The objid of the part revision of the material that was put in use.

Initializes a new instance of the CreateEcoMaterialDetailSetup class.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _isRequired_ As Boolean, _
   ByVal _ecoHeaderIDNum_ As String, _
   ByVal _partRevisionObjid_ As Integer _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreateEcoMaterialDetailSetup( 
   bool _isRequired_,
   string _ecoHeaderIDNum_,
   int _partRevisionObjid_
)
```

#### Parameters

_isRequired_

Indicates if this detail is required (true) or not (false)

_ecoHeaderIDNum_

Identifier of the ECO header

_partRevisionObjid_

The objid of the part revision of the material that was put in use.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateEcoMaterialDetailSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoMaterialDetailSetup.md)  
[CreateEcoMaterialDetailSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateEcoMaterialDetailSetup_members.md)