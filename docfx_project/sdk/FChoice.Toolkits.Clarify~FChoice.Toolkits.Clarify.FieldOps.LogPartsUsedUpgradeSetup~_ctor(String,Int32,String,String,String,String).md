### LogPartsUsedUpgradeSetup Constructor(String,Int32,String,String,String,String)

The Id Number of the related Part Request Detail (if any)

The Objid of the Site Part being removed.

The Part Number of the part being installed

The Part Revision of the part being installed

The Part Domain of the part being installed

The Serial Number of the part being installed

Initializes a new instance of the LogPartsUsedUpgradeSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _removeSitePartObjid_ As Integer, _
   ByVal _installPartNumber_ As String, _
   ByVal _installPartRevision_ As String, _
   ByVal _installPartDomain_ As String, _
   ByVal _installSerialNumber_ As String _
)
```

```csharp
[ConstructorIndexAttribute()]
public LogPartsUsedUpgradeSetup( 
   string _partRequestDetailIDNum_,
   int _removeSitePartObjid_,
   string _installPartNumber_,
   string _installPartRevision_,
   string _installPartDomain_,
   string _installSerialNumber_
)
```

#### Parameters

_partRequestDetailIDNum_

The Id Number of the related Part Request Detail (if any)

_removeSitePartObjid_

The Objid of the Site Part being removed.

_installPartNumber_

The Part Number of the part being installed

_installPartRevision_

The Part Revision of the part being installed

_installPartDomain_

The Part Domain of the part being installed

_installSerialNumber_

The Serial Number of the part being installed

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogPartsUsedUpgradeSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedUpgradeSetup.md)  
[LogPartsUsedUpgradeSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedUpgradeSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedUpgradeSetup~_ctor.md)