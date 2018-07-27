### LogPartsUsedInstallSetup Constructor(String,String,String,String,String,Int32)

The Id Number of the related Part Request Detail (if any)

The identifier of the Case with which this Part Usage is associated

The Part Number of the part being installed

The Part Revision of the part being installed

The Part Domain of the part being installed

The Quantity of the part being installed

Initializes a new instance of the LogPartsUsedInstallSetup class. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _caseIDNum_ As String, _
   ByVal _installPartNumber_ As String, _
   ByVal _installPartRevision_ As String, _
   ByVal _installPartDomain_ As String, _
   ByVal _installQuantity_ As Integer _
)
```

```csharp
[ConstructorIndexAttribute()]
public LogPartsUsedInstallSetup( 
   string _partRequestDetailIDNum_,
   string _caseIDNum_,
   string _installPartNumber_,
   string _installPartRevision_,
   string _installPartDomain_,
   int _installQuantity_
)
```

#### Parameters

_partRequestDetailIDNum_

The Id Number of the related Part Request Detail (if any)

_caseIDNum_

The identifier of the Case with which this Part Usage is associated

_installPartNumber_

The Part Number of the part being installed

_installPartRevision_

The Part Revision of the part being installed

_installPartDomain_

The Part Domain of the part being installed

_installQuantity_

The Quantity of the part being installed

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogPartsUsedInstallSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedInstallSetup.md)  
[LogPartsUsedInstallSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedInstallSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedInstallSetup~_ctor.md)