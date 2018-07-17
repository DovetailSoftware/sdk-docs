     MoveCR(MoveCRSetup) Method                                                   

fcSDK Documentation

MoveCR(MoveCRSetup) Method

Setup object for API invocation.

Move the CR from one WipBin to another WipBin. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function MoveCR( _
   ByVal _setupParam_ As [MoveCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.MoveCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) MoveCR( 
   [MoveCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.MoveCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the CR, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~MoveCR.md)  
[MoveCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.MoveCRSetup.md)