### MoveSitePartToSite(Int32,String) Method

Objid of the Site Part to be moved

Identifier of the parent Site the Site Part is being moved under

Move the SitePartToSite from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function MoveSitePartToSite( _
   ByVal _sitePartObjid_ As Integer, _
   ByVal _parentSiteIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) MoveSitePartToSite( 
   int _sitePartObjid_,
   string _parentSiteIDNum_
)

#### Parameters

_sitePartObjid_

Objid of the Site Part to be moved

_parentSiteIDNum_

Identifier of the parent Site the Site Part is being moved under

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the SitePartToSite, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSitePartToSite.md)