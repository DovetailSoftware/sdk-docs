﻿### MoveSitePartToPart(Int32,Int32) Method

The Objid of the Site Part being moved.

The Objid of the Parent Site where the Site Part is being moved.

Move the SitePartToPart from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration
 
Public Overloads Function MoveSitePartToPart( _
   ByVal _sitePartObjid_ As Integer, _
   ByVal _parentSitePartObjid_ As Integer _
) As ToolkitResult
```

```csharp
public ToolkitResult MoveSitePartToPart( 
   int _sitePartObjid_,
   int _parentSitePartObjid_
)
```

#### Parameters

_sitePartObjid_

The Objid of the Site Part being moved.

_parentSitePartObjid_

The Objid of the Parent Site where the Site Part is being moved.

#### Return Value

A ToolkitResult instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the SitePartToPart, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~MoveSitePartToPart.md)