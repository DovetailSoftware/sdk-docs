     CreateSite(SiteType,SiteStatus,Int32) Method                                                   

fcSDK Documentation

CreateSite(SiteType,SiteStatus,Int32) Method

Type of the site

Site status

Primary Address of the site

Create a Site. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateSite( _
   ByVal _siteType_ As [SiteType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.SiteType.md), _
   ByVal _status_ As [SiteStatus](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.SiteStatus.md), _
   ByVal _primaryAddressObjid_ As [Integer](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateSite( 
   [SiteType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.SiteType.md) _siteType_,
   [SiteStatus](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.SiteStatus.md) _status_,
   [int](#) _primaryAddressObjid_
)

#### Parameters

_siteType_

Type of the site

_status_

Site status

_primaryAddressObjid_

Primary Address of the site

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the Site.
*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the Site.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~CreateSite.md)