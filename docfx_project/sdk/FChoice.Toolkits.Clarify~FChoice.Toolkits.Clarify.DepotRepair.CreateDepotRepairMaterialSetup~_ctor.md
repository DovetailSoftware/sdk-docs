### CreateDepotRepairMaterialSetup Constructor

Objid of the related Part Request Detail

The objid of the part revision of the material that was put in use.

Indicates how the material relates to the depot repair part.

Initializes a new instance of the CreateDepotRepairMaterialSetup class.

#### Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _demandDetailObjid_ As Integer, _
   ByVal _partRevisionObjid_ As Integer, _
   ByVal _disposition_ As RepairPartDisposition _
)
```

```csharp
[ConstructorIndexAttribute()]
public CreateDepotRepairMaterialSetup( 
   int _demandDetailObjid_,
   int _partRevisionObjid_,
   RepairPartDisposition _disposition_
)
```

#### Parameters

_demandDetailObjid_

Objid of the related Part Request Detail

_partRevisionObjid_

The objid of the part revision of the material that was put in use.

_disposition_

Indicates how the material relates to the depot repair part.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CreateDepotRepairMaterialSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateDepotRepairMaterialSetup.md)  
[CreateDepotRepairMaterialSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.DepotRepair.CreateDepotRepairMaterialSetup_members.md)