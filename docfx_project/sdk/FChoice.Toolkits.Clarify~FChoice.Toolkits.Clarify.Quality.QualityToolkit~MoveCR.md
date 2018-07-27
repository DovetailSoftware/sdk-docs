### MoveCR Method

Move the CR from one WipBin to another WipBin. This overload takes a set of required parameters for the API.

Move the CR from one WipBin to another WipBin.

#### Overload List

| Overload | Description |
| --- | --- |
| [MoveCR(String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~MoveCR(String,String).md) | Move the CR from one WipBin to another WipBin. This overload takes a set of required parameters for the API.   |
| [MoveCR(MoveCRSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~MoveCR(MoveCRSetup).md) | Move the CR from one WipBin to another WipBin. This overload takes a setup object.   |
| [MoveCR(MoveCRSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~MoveCR(MoveCRSetup,IDbTransaction).md) | Move the CR from one WipBin to another WipBin. This overload takes a setup object and a database transaction.   |

#### Remarks

The new WipBin must belong to the same user as the first WipBin. The move operation does not change the ownership of the CR, nor is an activity log or time bomb generated for the action.

Note: This API allows you to move a queueable object from one WipBin to another, even if the object is currently dispatched. Since WipBins are internal to a user, there really is no reason that you shouldn’t be able to move the interal (to a user) location of the object. This is an enhancement to base Clarify function, which requires that the object not be dispatched to be moved.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[MoveCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.MoveCRSetup.md)