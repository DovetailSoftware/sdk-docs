     LogPartsUsedRemove(String,String,Int32) Method                                                   

fcSDK Documentation

LogPartsUsedRemove(String,String,Int32) Method

The Id Number of the related Part Request Detail (if any)

The identifier of the Case with which this Part Usage is associated

The Objid of the Site Part being removed.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogPartsUsedRemove( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _caseIDNum_ As String, _
   ByVal _removeSitePartObjid_ As [Integer](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) LogPartsUsedRemove( 
   string _partRequestDetailIDNum_,
   string _caseIDNum_,
   [int](#) _removeSitePartObjid_
)

#### Parameters

_partRequestDetailIDNum_

The Id Number of the related Part Request Detail (if any)

_caseIDNum_

The identifier of the Case with which this Part Usage is associated

_removeSitePartObjid_

The Objid of the Site Part being removed.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the PartUsed.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~LogPartsUsedRemove.md)