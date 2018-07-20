### CreateSite(SiteType,SiteStatus,Int32) Method

Type of the site

Site status

Primary Address of the site

Create a Site. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
Public Overloads Function CreateSite( _
   ByVal _siteType_ As [SiteType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.SiteType.md), _
   ByVal _status_ As [SiteStatus](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.SiteStatus.md), _
   ByVal _primaryAddressObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateSite( 
   [SiteType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.SiteType.md) _siteType_,
   [SiteStatus](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.SiteStatus.md) _status_,
   int _primaryAddressObjid_
)
```

#### Parameters

_siteType_

Type of the site

_status_

Site status

_primaryAddressObjid_

Primary Address of the site

#### Return Value

The following values are populated in the ToolkitResult object returned by the API method:

*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the Site.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Site.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateSite.md)