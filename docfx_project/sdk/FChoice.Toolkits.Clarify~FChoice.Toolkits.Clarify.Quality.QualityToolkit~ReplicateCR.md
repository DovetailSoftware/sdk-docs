### ReplicateCR Method

Replicate a CR. This overload takes a set of required parameters for the API.

Replicate a CR.

Overload List

| Overload | Description |
| --- | --- |
| [ReplicateCR(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~ReplicateCR(String).md) | Replicate a CR. This overload takes a set of required parameters for the API.   |
| [ReplicateCR(ReplicateCRSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~ReplicateCR(ReplicateCRSetup).md) | Replicate a CR. This overload takes a setup object.   |
| [ReplicateCR(ReplicateCRSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~ReplicateCR(ReplicateCRSetup,IDbTransaction).md) | Replicate a CR. This overload takes a setup object and a database transaction.   |

Remarks

The new CR is an exact copy of the original with the following exceptions:

1.  It has a new unique identifier for it.
2.  The CR history has next text added to show the start and end of the replicated CR history.
3.  A new activity log entry is added to show this CR is replicated. Also, an activity log entry is also added to the original CR to note that it has been replicated.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[ReplicateCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.ReplicateCRSetup.md)