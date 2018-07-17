     LogPartsUsedUpgrade(String,Int32,String,String,String,String) Method                                                   

fcSDK Documentation

LogPartsUsedUpgrade(String,Int32,String,String,String,String) Method

The Id Number of the related Part Request Detail (if any)

The Objid of the Site Part being removed.

The Part Number of the part being installed

The Part Revision of the part being installed

The Part Domain of the part being installed

The Serial Number of the part being installed

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogPartsUsedUpgrade( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _removeSitePartObjid_ As [Integer](#), _
   ByVal _installPartNumber_ As String, _
   ByVal _installPartRevision_ As String, _
   ByVal _installPartDomain_ As String, _
   ByVal _installSerialNumber_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) LogPartsUsedUpgrade( 
   string _partRequestDetailIDNum_,
   [int](#) _removeSitePartObjid_,
   string _installPartNumber_,
   string _installPartRevision_,
   string _installPartDomain_,
   string _installSerialNumber_
)

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

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the PartUsed.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedUpgrade.md)