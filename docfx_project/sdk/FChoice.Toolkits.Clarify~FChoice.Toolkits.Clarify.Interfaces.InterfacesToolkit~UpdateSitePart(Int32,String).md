### UpdateSitePart(Int32,String) Method

Objid of the Site Part to be updated

Serial number of the Site Part

Update a Site Part This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function UpdateSitePart( _
   ByVal _sitePartObjid_ As Integer, _
   ByVal _serialNumber_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateSitePart( 
   int _sitePartObjid_,
   string _serialNumber_
)

#### Parameters

_sitePartObjid_

Objid of the Site Part to be updated

_serialNumber_

Serial number of the Site Part

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the SitePart.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~UpdateSitePart.md)