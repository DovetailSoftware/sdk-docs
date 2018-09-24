### FulfillPartRequest Method

Allows for the fulfilling of inventory parts for a part request. This overload takes a set of required parameters for the API.

Allows for the fulfilling of inventory parts for a part request.

#### Overload List

| Overload | Description |
| --- | --- |
| [FulfillPartRequest(String,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest(String,Int32).md) | Allows for the fulfilling of inventory parts for a part request. This overload takes a set of required parameters for the API.   |
| [FulfillPartRequest(String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest(String,String).md) | Allows for the fulfilling of inventory parts for a part request. This overload takes a set of required parameters for the API.   |
| [FulfillPartRequest(String,Boolean,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest(String,Boolean,Int32).md) | Allows for the fulfilling of inventory parts for a part request. This overload takes a set of required parameters for the API.   |
| [FulfillPartRequest(String,Boolean,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest(String,Boolean,String).md) | Allows for the fulfilling of inventory parts for a part request. This overload takes a set of required parameters for the API.   |
| [FulfillPartRequest(FulfillPartRequestSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest(FulfillPartRequestSetup).md) | Allows for the fulfilling of inventory parts for a part request. This overload takes a setup object.   |
| [FulfillPartRequest(FulfillPartRequestSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest(FulfillPartRequestSetup,IDbTransaction).md) | Allows for the fulfilling of inventory parts for a part request. This overload takes a setup object and a database transaction.   |

#### Remarks

As in base Clarify, if a partial fulfill is performed, the part request is broken up into two new part requests. The first is for the fulfill (and the quantities are changed). The new part request will be created to hold the rest of the units that did not get fulfilled.

If _useTransitions_ is true (the default), this API will validate that the part request can be transitioned (for the specified user) to the proper new condition.

If useTransitions is false, then the logistics transitions will NOT be checked. In addition, when useTransitions is false a partial fulfill will not create new part requests for the rest of the units that did not get fulfilled.

This API will work with either quantity or serialized parts, based on the part number/site_part of the part request. If a serial number is specified, it will be used. Otherwise, the serial number will be taken from the part request.

To use primary bin suggestions/recommendations, please see the remarks on the [ToLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup~ToLocation.md) and/or [FromLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup~FromLocation.md) properties on the [FulfillPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup.md) object.

To allow for multiple calls to this API to be performed without extra complex transitions being added to the system, set the [UseTransitions](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup~UseTransitions.md) property of the [FulfillPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup.md) object, or the _useTransitions_ parameter of the respective overloads to false. Note that the last call to [FulfillPartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly. As an example, if you wish to fulfill 10 serialized parts on one part request, you can call FulfillPartRequest method 9 times with UseTransitions set to false, then finally call the FulfillPartRequest method once with UseTransitions set to true.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)
[FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup.md)
