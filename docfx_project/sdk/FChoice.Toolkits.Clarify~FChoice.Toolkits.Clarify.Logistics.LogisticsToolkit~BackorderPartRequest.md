     BackorderPartRequest Method                                                   

fcSDK Documentation

BackorderPartRequest Method

Allows for the backordering of inventory parts for a part request. This overload takes a set of required parameters for the API.

Allows for the backordering of inventory parts for a part request.

Overload List

| Overload | Description |
| --- | --- |
| [BackorderPartRequest(String,DateTime,Boolean,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~BackorderPartRequest(String,DateTime,Boolean,Int32).md) | Allows for the backordering of inventory parts for a part request. This overload takes a set of required parameters for the API.   |
| [BackorderPartRequest(String,DateTime,Boolean,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~BackorderPartRequest(String,DateTime,Boolean,String).md) | Allows for the backordering of inventory parts for a part request. This overload takes a set of required parameters for the API.   |
| [BackorderPartRequest(BackorderPartRequestSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~BackorderPartRequest(BackorderPartRequestSetup).md) | Allows for the backordering of inventory parts for a part request. This overload takes a setup object.   |
| [BackorderPartRequest(BackorderPartRequestSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~BackorderPartRequest(BackorderPartRequestSetup,IDbTransaction).md) | Allows for the backordering of inventory parts for a part request. This overload takes a setup object and a database transaction.   |
| [BackorderPartRequest(String,DateTime,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~BackorderPartRequest(String,DateTime,Int32).md) | Allows for the backordering of inventory parts for a part request. This overload takes a set of required parameters for the API.   |
| [BackorderPartRequest(String,DateTime,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~BackorderPartRequest(String,DateTime,String).md) | Allows for the backordering of inventory parts for a part request. This overload takes a set of required parameters for the API.   |

Remarks

As in base Clarify, if a partial backorder is performed, the part request is broken up into two new part requests. The first is for the backorder (and the quantities are changed). The new part request will be created to hold the rest of the units that did not get backordered.

This API will validate that the part request can be transitioned (for the specified user) to the proper new condition.

This API will work with either quantity or serialized parts, based on the part number/site_part of the part request. If a serial number is specified, it will be used. Otherwise, the serial number will be taken from the part request.

To use primary bin suggestions/recommendations, please see the remarks on the [ToLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup~ToLocation.md) and/or [FromLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup~FromLocation.md) properties on the [BackorderPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup.md) object.

To allow for multiple calls to this API to be performed without extra complex transitions being added to the system, set the [UseTransitions](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup~UseTransitions.md) property of the [BackorderPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup.md) object, or the _useTransitions_ parameter of the respective overloads to false. Note that the last call to [BackorderPartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~BackorderPartRequest.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

**NOTE**: This API requires two other APIs ([PartTransfer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~PartTransfer.md) and [CreatePartRequestDetail](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestDetail.md)) to work correctly.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup", Caption="BackorderPartRequestSetup Class"**