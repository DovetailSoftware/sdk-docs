### FulfillPartRequest(String,Boolean,String) Method

Part Request Detail Identifier

Specifies whether or not logistics transitions will be checked and the condition/status of the part request detail will be changed during the fulfill operation

The serial number of the part used to fulfill this Part Request

Allows for the fulfilling of inventory parts for a part request. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function FulfillPartRequest( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _useTransitions_ As Boolean, _
   ByVal _serialNumber_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) FulfillPartRequest( 
   string _partRequestDetailIDNum_,
   bool _useTransitions_,
   string _serialNumber_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_useTransitions_

Specifies whether or not logistics transitions will be checked and the condition/status of the part request detail will be changed during the fulfill operation

_serialNumber_

The serial number of the part used to fulfill this Part Request

#### Return Value

If a partial fulfill occurs then a new PartRequestDetail is created for the remaining items waiting to be fullfilled. When this occurs the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) will be populated with the objid and id number of the PartRequestDetail that was just created.

Remarks

As in base Clarify, if a partial fulfill is performed, the part request is broken up into two new part requests. The first is for the fulfill (and the quantities are changed). The new part request will be created to hold the rest of the units that did not get fulfilled.

If _useTransitions_ is true (the default), this API will validate that the part request can be transitioned (for the specified user) to the proper new condition.

This API will work with either quantity or serialized parts, based on the part number/site_part of the part request. If a serial number is specified, it will be used. Otherwise, the serial number will be taken from the part request.

To use primary bin suggestions/recommendations, please see the remarks on the [ToLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup~ToLocation.md) and/or [FromLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup~FromLocation.md) properties on the [FulfillPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup.md) object.

To allow for multiple calls to this API to be performed without extra complex transitions being added to the system, set the [UseTransitions](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup~UseTransitions.md) property of the [FulfillPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup.md) object, or the _useTransitions_ parameter of the respective overloads to false. Note that the last call to [FulfillPartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest.md)