### LogPartsUsedRemoveSetup Constructor(String,String,Int32)

The Id Number of the related Part Request Detail (if any)

The identifier of the Case with which this Part Usage is associated

The Objid of the Site Part being removed.

Initializes a new instance of the LogPartsUsedRemoveSetup class. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _caseIDNum_ As String, _
   ByVal _removeSitePartObjid_ As Integer _
)
```

```csharp
[ConstructorIndexAttribute()]
public LogPartsUsedRemoveSetup( 
   string _partRequestDetailIDNum_,
   string _caseIDNum_,
   int _removeSitePartObjid_
)
```

#### Parameters

_partRequestDetailIDNum_

The Id Number of the related Part Request Detail (if any)

_caseIDNum_

The identifier of the Case with which this Part Usage is associated

_removeSitePartObjid_

The Objid of the Site Part being removed.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogPartsUsedRemoveSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedRemoveSetup.md)  
[LogPartsUsedRemoveSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedRemoveSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedRemoveSetup~_ctor.md)