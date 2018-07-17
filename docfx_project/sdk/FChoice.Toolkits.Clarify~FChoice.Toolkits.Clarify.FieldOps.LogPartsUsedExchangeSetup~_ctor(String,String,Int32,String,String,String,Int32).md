     LogPartsUsedExchangeSetup Constructor(String,String,Int32,String,String,String,Int32)                                                   

fcSDK Documentation

LogPartsUsedExchangeSetup Constructor(String,String,Int32,String,String,String,Int32)

The Id Number of the related Part Request Detail (if any)

The identifier of the Case with which this Part Usage is associated

The Objid of the Site Part being removed.

The Part Number of the part being installed

The Part Revision of the part being installed

The Part Domain of the part being installed

The Quantity of the part being installed

Initializes a new instance of the LogPartsUsedExchangeSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _caseIDNum_ As String, _
   ByVal _removeSitePartObjid_ As [Integer](#), _
   ByVal _installPartNumber_ As String, _
   ByVal _installPartRevision_ As String, _
   ByVal _installPartDomain_ As String, _
   ByVal _installQuantity_ As [Integer](#) _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public LogPartsUsedExchangeSetup( 
   string _partRequestDetailIDNum_,
   string _caseIDNum_,
   [int](#) _removeSitePartObjid_,
   string _installPartNumber_,
   string _installPartRevision_,
   string _installPartDomain_,
   [int](#) _installQuantity_
)

#### Parameters

_partRequestDetailIDNum_

The Id Number of the related Part Request Detail (if any)

_caseIDNum_

The identifier of the Case with which this Part Usage is associated

_removeSitePartObjid_

The Objid of the Site Part being removed.

_installPartNumber_

The Part Number of the part being installed

_installPartRevision_

The Part Revision of the part being installed

_installPartDomain_

The Part Domain of the part being installed

_installQuantity_

The Quantity of the part being installed

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogPartsUsedExchangeSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedExchangeSetup.md)  
[LogPartsUsedExchangeSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedExchangeSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.LogPartsUsedExchangeSetup~_ctor.md)