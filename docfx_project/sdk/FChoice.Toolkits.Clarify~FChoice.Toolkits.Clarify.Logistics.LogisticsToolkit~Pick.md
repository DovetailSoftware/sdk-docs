### Pick Method

Allows for multiple pick actions to occur against a part request.

This overload takes a set of required parameters for the API.

Allows for multiple pick actions to occur against a part request.

Overload List

| Overload | Description |
| --- | --- |
| [Pick(String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Pick(String).md) | 
Allows for multiple pick actions to occur against a part request.

This overload takes a set of required parameters for the API.   |
| [Pick(String,String\[\])](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Pick(String,String[]).md) | 

Allows for multiple pick actions to occur against a part request.

This overload takes a set of required parameters for the API.   |
| [Pick(String,Boolean)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Pick(String,Boolean).md) | 

Allows for multiple pick actions to occur against a part request.

This overload takes a set of required parameters for the API.   |
| [Pick(String,Boolean,String\[\])](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Pick(String,Boolean,String[]).md) | 

Allows for multiple pick actions to occur against a part request.

This overload takes a set of required parameters for the API.   |
| [Pick(PickSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Pick(PickSetup).md) | 

Allows for multiple pick actions to occur against a part request.

This overload takes a setup object.   |
| [Pick(PickSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Pick(PickSetup,IDbTransaction).md) | 

Allows for multiple pick actions to occur against a part request.

This overload takes a setup object and a database transaction.   |

Remarks

This API will perform a soft pick (reserve) on all quantity or serialized parts, based on the part number/site_part of the specified part request, in all of the specified locations until all of the necessary inventory has been reserved, or there are no more locations from which to pick. This API will also validate that the part request can be transitioned for the specified user (or current user if no user is specified).

Locations can be specified either by the location name itself or by a location name/bin name combination. Please see the [Locations](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup~Locations.md) property on the [PickSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup.md) object and the [LocationCollection](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.LocationCollection.md) object for details on how to specify locations. If no locations are specified, the location_servicing_locations for the Part Request's Site will be used. That is, inventory will be checked for warehouses that are best suited for the shipping Site of the Part Request. 

If the part request was created using a serialized site part and you wish to perform a "hard pick" of one or more inventory parts, you must use one of the serial numbers variants of this API and specify one or more serial numbers or use the keyword "inventory" as the only serial number. Specifying only "inventory" will force the API to ignore the serial numbers stored in the part request and allow the pick to occur from inventory parts.

To allow for multiple calls to this API to be performed without extra complex transitions being added to the system, set the [UseTransitions](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup~UseTransitions.md) property of the [PickSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup.md) object, or the _useTransitions_ parameter of the respective overloads to false. Note that the last call to [Pick](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~Pick.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

**NOTE**: This API must be called in conjunction with the [PartTransfer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~PartTransfer.md) API to work correctly.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.PickSetup", Caption="PickSetup Class"**