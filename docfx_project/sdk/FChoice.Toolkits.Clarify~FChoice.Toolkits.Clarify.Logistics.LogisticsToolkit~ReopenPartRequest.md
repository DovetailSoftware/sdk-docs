### ReopenPartRequest Method

Causes the specified part request to be reopened.

This overload takes a set of required parameters for the API.

Causes the specified part request to be reopened.

#### Overload List

| Overload | Description |
| --- | --- |
| [ReopenPartRequest(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ReopenPartRequest(String).md) | Causes the specified part request to be reopened. This overload takes a set of required parameters for the API.   |
| [ReopenPartRequest(ReopenPartRequestSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ReopenPartRequest(ReopenPartRequestSetup).md) | Causes the specified part request to be reopened. This overload takes a setup object. |
| [ReopenPartRequest(ReopenPartRequestSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ReopenPartRequest(ReopenPartRequestSetup,IDbTransaction).md) | Causes the specified part request to be reopened. This overload takes a setup object and a database transaction. |

#### Remarks

The Part Request must currently be closed. The WIPBIN in which to place the part request can be specified, which is an augmentation to base Clarify. If no WIPBIN is specified, the default is used.

This API will validate that the user has authority to make the status transition.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)
[FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReopenPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReopenPartRequestSetup.md)
