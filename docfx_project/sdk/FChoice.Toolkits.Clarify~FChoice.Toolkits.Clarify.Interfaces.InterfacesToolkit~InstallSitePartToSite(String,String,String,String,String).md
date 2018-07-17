     InstallSitePartToSite(String,String,String,String,String) Method                                                   

fcSDK Documentation

InstallSitePartToSite(String,String,String,String,String) Method

Identifier of the Site where the part will be installed.

Part Number of the part to install

Part Revision of the part to install

Domain of the part to install

Serial number of the part installed

Install a Site Part under a Site. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function InstallSitePartToSite( _
   ByVal _siteIDNum_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _serialNumber_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) InstallSitePartToSite( 
   string _siteIDNum_,
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   string _serialNumber_
)

#### Parameters

_siteIDNum_

Identifier of the Site where the part will be installed.

_partNumber_

Part Number of the part to install

_partRevision_

Part Revision of the part to install

_partDomain_

Domain of the part to install

_serialNumber_

Serial number of the part installed

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the SitePart.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~InstallSitePartToSite.md)