### LogPartsUsedInstall(String,String,String,String,String,String) Method

The Id Number of the related Part Request Detail (if any)

The identifier of the Case with which this Part Usage is associated

The Part Number of the part being installed

The Part Revision of the part being installed

The Part Domain of the part being installed

The Serial Number of the part being installed

Syntax

```vbnet
'Declaration

Public Overloads Function LogPartsUsedInstall( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _caseIDNum_ As String, _
   ByVal _installPartNumber_ As String, _
   ByVal _installPartRevision_ As String, _
   ByVal _installPartDomain_ As String, _
   ByVal _installSerialNumber_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult LogPartsUsedInstall( 
   string _partRequestDetailIDNum_,
   string _caseIDNum_,
   string _installPartNumber_,
   string _installPartRevision_,
   string _installPartDomain_,
   string _installSerialNumber_
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

_installSerialNumber_

The Serial Number of the part being installed

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the PartUsed.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedInstall.md)