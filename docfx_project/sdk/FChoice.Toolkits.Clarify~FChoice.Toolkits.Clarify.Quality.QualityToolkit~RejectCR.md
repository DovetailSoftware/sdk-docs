### RejectCR Method

Reject the CR from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.

Reject the CR from the queue in which it currently resides, and return it to the owner.

#### Overload List

| Overload | Description |
| --- | --- |
| [RejectCR(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~RejectCR(String).md) | Reject the CR from the queue in which it currently resides, and return it to the owner. This overload takes a set of required parameters for the API.   |
| [RejectCR(RejectCRSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~RejectCR(RejectCRSetup).md) | Reject the CR from the queue in which it currently resides, and return it to the owner. This overload takes a setup object.   |
| [RejectCR(RejectCRSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~RejectCR(RejectCRSetup,IDbTransaction).md) | Reject the CR from the queue in which it currently resides, and return it to the owner. This overload takes a setup object and a database transaction.   |

#### Remarks

The CR must be in open condition, and currently dispatched to a queue.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[RejectCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.RejectCRSetup.md)