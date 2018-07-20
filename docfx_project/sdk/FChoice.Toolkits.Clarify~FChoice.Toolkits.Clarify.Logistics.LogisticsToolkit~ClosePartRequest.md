### ClosePartRequest Method

Causes the specified part request to be closed. This overload takes a set of required parameters for the API.

Causes the specified part request to be closed.

Overload List

| Overload | Description |
| --- | --- |
| [ClosePartRequest(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ClosePartRequest(String).md) | Causes the specified part request to be closed. This overload takes a set of required parameters for the API.   |
| [ClosePartRequest(ClosePartRequestSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ClosePartRequest(ClosePartRequestSetup).md) | Causes the specified part request to be closed. This overload takes a setup object.   |
| [ClosePartRequest(ClosePartRequestSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ClosePartRequest(ClosePartRequestSetup,IDbTransaction).md) | Causes the specified part request to be closed. This overload takes a setup object and a database transaction.   |

Remarks

This API will validate that the user has the authority to close the part request. If this is the last part request detail that was open for the part request header, the header is also closed.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ClosePartRequestSetup", Caption="ClosePartRequestSetup Class"**