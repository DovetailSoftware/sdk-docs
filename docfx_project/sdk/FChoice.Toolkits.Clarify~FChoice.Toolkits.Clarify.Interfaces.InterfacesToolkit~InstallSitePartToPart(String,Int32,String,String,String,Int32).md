### InstallSitePartToPart(String,Int32,String,String,String,Int32) Method

Identifier of the Site where the part will be installed.

Objid of the parent Site Part this Part will be installed under.

Part Number of the part to install

Part Revision of the part to install

Domain of the part to install

The number of units to install

Install a Site Part under another Site Part. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
Public Overloads Function InstallSitePartToPart( _
   ByVal _siteIDNum_ As String, _
   ByVal _parentSitePartObjid_ As Integer, _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _quantity_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult InstallSitePartToPart( 
   string _siteIDNum_,
   int _parentSitePartObjid_,
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   int _quantity_
)
```

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

#### Return Value

The following values are populated in the ToolkitResult object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the SitePart.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~InstallSitePartToPart.md)