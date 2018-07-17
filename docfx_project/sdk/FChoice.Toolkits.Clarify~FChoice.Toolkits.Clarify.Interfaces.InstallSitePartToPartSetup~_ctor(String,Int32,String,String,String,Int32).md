     InstallSitePartToPartSetup Constructor(String,Int32,String,String,String,Int32)                                                   

fcSDK Documentation

InstallSitePartToPartSetup Constructor(String,Int32,String,String,String,Int32)

Identifier of the Site where the part will be installed.

Objid of the parent Site Part this Part will be installed under.

Part Number of the part to install

Part Revision of the part to install

Domain of the part to install

The number of units to install

Initializes a new instance of the InstallSitePartToPartSetup class. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

<[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()>
Public Function New( _
   ByVal _siteIDNum_ As String, _
   ByVal _parentSitePartObjid_ As [Integer](#), _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _quantity_ As [Integer](#) _
)

\[[ConstructorIndexAttribute](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ConstructorIndexAttribute.md)()\]
public InstallSitePartToPartSetup( 
   string _siteIDNum_,
   [int](#) _parentSitePartObjid_,
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   [int](#) _quantity_
)

#### Parameters

_siteIDNum_

Identifier of the Site where the part will be installed.

_parentSitePartObjid_

Objid of the parent Site Part this Part will be installed under.

_partNumber_

Part Number of the part to install

_partRevision_

Part Revision of the part to install

_partDomain_

Domain of the part to install

_quantity_

The number of units to install

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InstallSitePartToPartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InstallSitePartToPartSetup.md)  
[InstallSitePartToPartSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InstallSitePartToPartSetup_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InstallSitePartToPartSetup~_ctor.md)