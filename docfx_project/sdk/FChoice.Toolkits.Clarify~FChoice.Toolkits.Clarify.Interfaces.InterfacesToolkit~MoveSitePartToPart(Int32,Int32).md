     MoveSitePartToPart(Int32,Int32) Method                                                   

fcSDK Documentation

MoveSitePartToPart(Int32,Int32) Method

Objid of the Site Part to be moved

Objid of the parent Site Part this [Site Part](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup~SitePartObjid.md) will be placed into

Move the SitePartToPart from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function MoveSitePartToPart( _
   ByVal _sitePartObjid_ As [Integer](#), _
   ByVal _parentSitePartObjid_ As [Integer](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) MoveSitePartToPart( 
   [int](#) _sitePartObjid_,
   [int](#) _parentSitePartObjid_
)

#### Parameters

_sitePartObjid_

Objid of the Site Part to be moved

_parentSitePartObjid_

Objid of the parent Site Part this [Site Part](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.MoveSitePartToPartSetup~SitePartObjid.md) will be placed into

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the SitePartToPart, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSitePartToPart.md)