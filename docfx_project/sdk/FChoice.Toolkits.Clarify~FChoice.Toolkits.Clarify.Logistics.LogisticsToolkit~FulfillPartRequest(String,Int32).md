     FulfillPartRequest(String,Int32) Method                                                   

fcSDK Documentation

FulfillPartRequest(String,Int32) Method

Part Request Detail Identifier

The number of parts being fulfilled for this Part Request

Allows for the fulfilling of inventory parts for a part request. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function FulfillPartRequest( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _quantity_ As [Integer](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) FulfillPartRequest( 
   string _partRequestDetailIDNum_,
   [int](#) _quantity_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_quantity_

The number of parts being fulfilled for this Part Request

#### Return Value

If a partial fulfill occurs then a new PartRequestDetail is created for the remaining items waiting to be fullfilled. When this occurs the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) will be populated with the objid and id number of the PartRequestDetail that was just created.

Remarks

As in base Clarify, if a partial fulfill is performed, the part request is broken up into two new part requests. The first is for the fulfill (and the quantities are changed). The new part request will be created to hold the rest of the units that did not get fulfilled.

If _useTransitions_ is true (the default), this API will validate that the part request can be transitioned (for the specified user) to the proper new condition.

This API will work with either quantity or serialized parts, based on the part number/site_part of the part request. If a serial number is specified, it will be used. Otherwise, the serial number will be taken from the part request.

To use primary bin suggestions/recommendations, please see the remarks on the [ToLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup~ToLocation.md) and/or [FromLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup~FromLocation.md) properties on the [FulfillPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup.md) object.

To allow for multiple calls to this API to be performed without extra complex transitions being added to the system, set the [UseTransitions](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup~UseTransitions.md) property of the [FulfillPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.FulfillPartRequestSetup.md) object, or the _useTransitions_ parameter of the respective overloads to false. Note that the last call to [FulfillPartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~FulfillPartRequest.md)