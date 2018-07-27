### MoveSitePartToBin(Int32,Int32) Method

Objid of the Site Part to be moved

Objid of the Bin to place the Site Part into

Move the SitePartToBin from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
Public Overloads Function MoveSitePartToBin( _
   ByVal _sitePartObjid_ As Integer, _
   ByVal _parentBinObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult MoveSitePartToBin( 
   int _sitePartObjid_,
   int _parentBinObjid_
)
```

#### Parameters

_sitePartObjid_

Objid of the Site Part to be moved

_parentBinObjid_

Objid of the Bin to place the Site Part into

#### Return Value

A ToolkitResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the SitePartToBin, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~MoveSitePartToBin.md)